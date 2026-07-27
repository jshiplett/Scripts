# Get-ESXiHostFirewallRuleset

## SYNOPSIS

Gets the configuration of an ESXi host firewall ruleset

## SYNTAX

### __AllParameterSets

```
Get-ESXiHostFirewallRuleset [-ESXiHost] <string> [[-Ruleset] <string>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Get-ESXiHostFirewallRuleset cmdlet gets the configuration of an ESXi host firewall ruleset

## EXAMPLES

### EXAMPLE 1

Get-ESXiHostFirewallRuleset -ESXiHost esx01.sddc.lab

### EXAMPLE 2

Get-ESXiHostFirewallRuleset -ESXiHost esx01.sddc.lab -Ruleset sshServer

## PARAMETERS

### -ESXiHost

The ESXi host to be queried for its firewall configuration

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Ruleset

The ruleset to be queried for its firewall configuration

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}

