# VMware vSphere Security Configuration PowerShell

A PowerShell module for configuring and validating security-related settings on VMware vSphere, including ESXi host firewall rules, Lockdown Mode, local ESXi users, TPM, Secure Boot, `execInstalledOnly`, and the vCenter Server Appliance firewall.

> [!IMPORTANT]
> Test all changes in a non-production environment before applying them to production systems. Several cmdlets modify host or appliance security settings and may affect administrative access or network connectivity.

## Features

- Configure and inspect ESXi host firewall defaults and rulesets
- Configure ESXi Lockdown Mode and exception users
- Create, modify, remove, and reset passwords for local ESXi users
- Inspect and configure TPM, Secure Boot, and `execInstalledOnly`
- Inspect and configure the vCenter Server Appliance firewall

## Requirements

- PowerShell 7.2 or higher
- VMware PowerCLI 13.3 or higher
- Network access to the target vCenter Server, ESXi hosts, or vCenter Server Appliance
- An account with the permissions required by the selected cmdlet

Install VMware PowerCLI when it is not already available:

```powershell
Install-Module -Name VMware.PowerCLI -Scope CurrentUser
```

## Installation

Clone the repository:

```powershell
git clone https://github.com/worldcom-exchange/vmware-vsphere-security-config-powershell.git
cd vmware-vsphere-security-config-powershell
```

Import the module:

```powershell
Import-Module ./Security_Configuration.psd1 -Force
```

Confirm that the module loaded:

```powershell
Get-Module -Name Security_Configuration
Get-Command -Module Security_Configuration
```

## Getting Started

Connect to the vCenter Server before using cmdlets that operate through VMware PowerCLI:

```powershell
Connect-VIServer -Server vcenter.example.com
```

Review the help for a cmdlet:

```powershell
Get-Help Get-ESXiHostFirewall -Full
Get-Help Set-ESXiHostFirewallRuleset -Examples
```

Example queries:

```powershell
Get-ESXiHostFirewall -ESXiHost esx01.example.com
Get-ESXiHostFirewallRuleset -ESXiHost esx01.example.com -Ruleset sshServer
Get-LockdownMode -ESXiHost esx01.example.com
Get-TPM -ESXiHost esx01.example.com
Get-SecureBoot -ESXiHost esx01.example.com
```

## Cmdlet Reference

The complete PlatyPS-generated module reference is available in [Security_Configuration.md](docs/Security_Configuration/Security_Configuration.md).

### ESXi Firewall

| Cmdlet | Description |
|---|---|
| [`Get-ESXiHostFirewall`](docs/Security_Configuration/Get-ESXiHostFirewall.md) | Gets the firewall configuration of an ESXi host. |
| [`Set-ESXiHostFirewall`](docs/Security_Configuration/Set-ESXiHostFirewall.md) | Sets the firewall configuration of an ESXi host. |
| [`Get-ESXiHostFirewallRuleset`](docs/Security_Configuration/Get-ESXiHostFirewallRuleset.md) | Gets the configuration of an ESXi host firewall ruleset. |
| [`Set-ESXiHostFirewallRuleset`](docs/Security_Configuration/Set-ESXiHostFirewallRuleset.md) | Sets the configuration of an ESXi host firewall ruleset. |

### Lockdown Mode

| Cmdlet | Description |
|---|---|
| [`Get-LockdownMode`](docs/Security_Configuration/Get-LockdownMode.md) | Gets the current Lockdown Mode configuration of an ESXi host. |
| [`Set-LockdownMode`](docs/Security_Configuration/Set-LockdownMode.md) | Sets the Lockdown Mode configuration of an ESXi host. |
| [`Get-LockdownModeExceptionUsers`](docs/Security_Configuration/Get-LockdownModeExceptionUsers.md) | Gets the Lockdown Mode exception users on an ESXi host. |
| [`Add-LockdownModeExceptionUser`](docs/Security_Configuration/Add-LockdownModeExceptionUser.md) | Adds a local user to the Lockdown Mode exception users list. |
| [`Remove-LockdownModeExceptionUser`](docs/Security_Configuration/Remove-LockdownModeExceptionUser.md) | Removes a local user from the Lockdown Mode exception users list. |

### Local ESXi Users

| Cmdlet | Description |
|---|---|
| [`Get-EsxiUser`](docs/Security_Configuration/Get-EsxiUser.md) | Gets all local users or a specified local user on an ESXi host. |
| [`New-EsxiUser`](docs/Security_Configuration/New-EsxiUser.md) | Creates a local user on an ESXi host. |
| [`Set-EsxiUser`](docs/Security_Configuration/Set-EsxiUser.md) | Modifies one or more properties of a local ESXi user. |
| [`Remove-EsxiUser`](docs/Security_Configuration/Remove-EsxiUser.md) | Removes a local user from an ESXi host. |
| [`Reset-EsxiUserPassword`](docs/Security_Configuration/Reset-EsxiUserPassword.md) | Resets the password of a local ESXi user. |

### TPM and Recovery

| Cmdlet | Description |
|---|---|
| [`Get-TPM`](docs/Security_Configuration/Get-TPM.md) | Gets the TPM configuration of an ESXi host. |
| [`Enable-TPM`](docs/Security_Configuration/Enable-TPM.md) | Enables TPM mode on an ESXi host. |
| [`Get-ESXiHostRecoveryKey`](docs/Security_Configuration/Get-ESXiHostRecoveryKey.md) | Gets the TPM recovery key for an ESXi host. |

### Secure Boot and `execInstalledOnly`

| Cmdlet | Description |
|---|---|
| [`Get-SecureBoot`](docs/Security_Configuration/Get-SecureBoot.md) | Gets the Secure Boot configuration of an ESXi host. |
| [`Set-SecureBoot`](docs/Security_Configuration/Set-SecureBoot.md) | Sets the Secure Boot configuration of an ESXi host. |
| [`Get-ExecInstalledOnlyKernel`](docs/Security_Configuration/Get-ExecInstalledOnlyKernel.md) | Gets the `execInstalledOnly` kernel configuration of an ESXi host. |
| [`Set-ExecInstalledOnlyKernel`](docs/Security_Configuration/Set-ExecInstalledOnlyKernel.md) | Sets the `execInstalledOnly` kernel configuration of an ESXi host. |
| [`Get-ExecInstalledOnlyPolicy`](docs/Security_Configuration/Get-ExecInstalledOnlyPolicy.md) | Gets the `execInstalledOnly` policy configuration of an ESXi host. |
| [`Set-ExecInstalledOnlyPolicy`](docs/Security_Configuration/Set-ExecInstalledOnlyPolicy.md) | Sets the `execInstalledOnly` policy configuration of an ESXi host. |

### vCenter Server Appliance Firewall

| Cmdlet | Description |
|---|---|
| [`Get-VCSAFirewallConfig`](docs/Security_Configuration/Get-VCSAFirewallConfig.md) | Gets the firewall configuration of a vCenter Server Appliance. |
| [`Set-VCSAFirewallConfig`](docs/Security_Configuration/Set-VCSAFirewallConfig.md) | Sets the firewall configuration of a vCenter Server Appliance. |

## Updating the PlatyPS Documentation

After changing comment-based help or adding a cmdlet, regenerate or update the Markdown help with PlatyPS.

A typical workflow is:

```powershell
Install-Module -Name Microsoft.PowerShell.PlatyPS -Scope CurrentUser
Import-Module ./Security_Configuration.psd1 -Force

# Update existing Markdown help from the loaded module.
Update-MarkdownCommandHelp `
    -Path ./docs/Security_Configuration `
    -RefreshModulePage
```

To generate external help XML from the Markdown documentation:

```powershell
New-ExternalHelp `
    -Path ./docs/Security_Configuration `
    -OutputPath ./en-US `
    -Force
```

PlatyPS command names and parameters can vary by PlatyPS version. Check the installed version and its local help before running the documentation workflow:

```powershell
Get-Module -ListAvailable Microsoft.PowerShell.PlatyPS
Get-Help Update-MarkdownCommandHelp -Full
Get-Help New-ExternalHelp -Full
```

## Contributing

1. Create a branch for the proposed change.
2. Update the module and its comment-based help.
3. Update the PlatyPS Markdown documentation.
4. Verify that all links in this README resolve correctly.
5. Submit a pull request describing the behavior and security impact of the change.

## Disclaimer

This project is not affiliated with or endorsed by Broadcom or VMware. Use of the module is at your own risk. Review each cmdlet and understand its effect before applying changes to a production environment.
