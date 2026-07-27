param(
    [Parameter(Mandatory)][ValidateSet("Add","Remove")][string]$AddorRemove,
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string]$csvInput
)

$testCsvInput = Test-Path -Path $csvInput

if ($testCsvInput -eq $false) {
    Write-Error "$Path csvInput is invalid."
} else {
    $rules = Import-Csv -Path $csvInput
    foreach ($rule in $rules) {
        if ($AddorRemove -eq "Remove") {
            Set-ESXiHostFirewallRuleset -ESXiHost $rule.host -Ruleset $rule.ruleset -RemoveSubnet $rule.allowedip
        } elseif ($AddorRemove -eq "Add") {
            Set-ESXiHostFirewallRuleset -ESXiHost $rule.host -Ruleset $rule.ruleset -AddSubnet $rule.allowedip
        }
    }
}