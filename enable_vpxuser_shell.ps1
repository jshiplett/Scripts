param(
    [Parameter(Mandatory)]
    [string]$vCenter,

    [Parameter(Mandatory)]
    [string]$clusterName, 

    [Parameter(Mandatory)]
    [string]$esxiAdminUser,

    [Parameter(Mandatory)]
    [string]$esxiAdminPassword
)

$powerCLI = Get-Module -Name VMware.PowerCLI
if (!$powerCLI) {
    Import-Module VMware.PowerCLI -ErrorAction Stop
}
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false | Out-Null

$credential = Get-Credential -Message "Enter credentials for $vCenter"
$vcenterCheck = Connect-VIServer -Server $vCenter -Credential $Credential -ErrorAction SilentlyContinue

if ($vcenterCheck.IsConnected -eq $true) {
    Write-Output "Successfully connected to vCenter Server $vCenter"
} else {
    Write-Error "Error connecting to vCenter Server $vCenter. Please validate FQDN/IP and credentials."
    $vcenterBroke = $true
    Exit
}

$poshSSH = Get-Module -Name Posh-SSH
if (!$poshSSH) {
    $checkPoshSSH = Get-InstalledModule | Where-Object {$_.Name -eq "Posh-SSH"}
    if ($checkPoshSSH) {
        Write-Warning "Required module Posh-SSH is installed but not loaded. Loading now."
        Import-Module Posh-SSH -ErrorAction Stop
    } else {
        Write-Error "Required module Posh-SSH is not installed. Please install, then try again."
        Exit     
    }
}

try {
    $sshCredentials = New-Object -TypeName PSCredential -ArgumentList $esxiAdminUser, ($esxiAdminPassword | ConvertTo-SecureString -AsPlainText -Force)
    $vmhosts = Get-Cluster -Name $clusterName | Get-VMHost

    foreach ($vmhost in $vmhosts) {
        
        #Start SSH service on $vmhost
        $sshService = Get-VMHost $vmhost | Get-VMHostService | Where-Object {$_.Key -eq "TSM-SSH"}
        if ($sshService.Running -eq $false) {
            $sshService | Start-VMHostService -Confirm:$false | Out-Null
            Write-Output "[$($vmhost.Name)] SSH service is now running"
        } elseif ($sshService.Running -eq $true) {
            Write-Output "[$($vmhost.Name)] SSH service is already running. Skipping"
        }

        #Create SSH session to $vmhost
        $sshSession = New-SSHSession -ComputerName ($vmhost.NetworkInfo.VirtualNic | Where-Object {$_.ManagementTrafficEnabled -eq $true}).IP -Credential $sshCredentials -Force -WarningAction SilentlyContinue
        if($sshSession) {
            Write-Output "[$($vmhost.Name)] SSH session has started"
        } else {
            Write-Error "[$($vmhost.Name)] SSH session has failed"
            Exit
        }
        
        #Enable vpxuser shell access
        Invoke-SSHCommand -SSHSession $sshSession -Command "esxcli system account set -i vpxuser -s true" | Out-Null
        Write-Output "[$($vmhost.Name)] Executing ESXCLI command to enable vpxuser shell access"
        
        #Close SSH session
        Remove-SSHSession -SSHSession $sshSession | Out-Null
        Write-Output "[$($vmhost.Name)] Closing SSH session"

        #Test vpxuser
        $esxcli = Get-EsxCli -VMhost $vmhost -V2
        $checkVpxUser = $esxcli.System.Account.List.Invoke() | Where-Object {$_.UserID -eq "vpxuser"}
        if ($checkVpxUser.Shellaccess -eq $true) {
            Write-Output "[$($vmhost.Name)] vpxuser shell access was successfully enabled"
        } else {
            Write-Error "[$($vmhost.Name)] vpxuser shell access was not successfully enabled"
        }

        #Stop SSH service on $vmhost
        $sshServiceStop = Get-VMHost $vmhost | Get-VMHostService | Where-Object {$_.Key -eq "TSM-SSH"}
        if ($sshServiceStop.Running -eq $true) {
            $sshServiceStop | Stop-VMHostService -Confirm:$false | Out-Null
            Write-Output "[$($vmhost.Name)] SSH service stopped"
        }
        Write-Output ""
    }
} finally {
    if (!$vcenterBroke) {
        Disconnect-VIServer -Server * -Confirm:$false | Out-Null
    }
}