<#
    .SYNOPSIS
    Add or remove a list of ESXi host firewall rulesets based on CSV input

    .DESCRIPTION
    This script adds or removes a list of ESXi host firewall rulesets based on CSV input

    .EXAMPLE
    .\add-remove-allowedip-esxihosts.ps1 -Action Add -csvInput ..\esxi-host-allowedip.csv

    .EXAMPLE
    .\add-remove-allowedip-esxihosts.ps1 -Action Remove -csvInput ..\esxi-host-allowedip.csv

    .PARAMETER Action
    The action to be taken, either Add or Remove

    .PARAMETER csvInput
    CSV input for script execution
#>

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