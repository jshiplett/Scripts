---
document type: cmdlet
external help file: Security_Configuration-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Security_Configuration
ms.date: 07/27/2026
PlatyPS schema version: 2024-05-01
title: Set-ESXiHostFirewallRuleset
---

# Set-ESXiHostFirewallRuleset

## SYNOPSIS

Sets the firewall configuration of an ESXi host

## SYNTAX

### __AllParameterSets

```
Set-ESXiHostFirewallRuleset [-ESXiHost] <string> [-Ruleset] <string> [[-AddSubnet] <string>]
 [[-RemoveSubnet] <string>] [[-Enabled] <string>] [-AllowAll]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Set-ESXiHostFirewallRuleset cmdlet sets the firewall configuration of an ESXi host

## EXAMPLES

### EXAMPLE 1

Set-ESXiHostFirewallRuleset -ESXiHost esx01.sddc.lab -Ruleset sshServer -AddSubnet 192.168.0.0/16

### EXAMPLE 2

Set-ESXiHostFirewallRuleset -ESXiHost esx01.sddc.lab -Ruleset sshServer -RemoveSubnet 192.168.0.0/16

## PARAMETERS

### -AddSubnet

The IP subnet to add to the defined ESXi host firewall ruleset

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AllowAll

{{ Fill AllowAll Description }}

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Enabled

{{ Fill Enabled Description }}

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

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

### -RemoveSubnet

The IP subnet to remove from the defined ESXi host firewall ruleset

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Ruleset

The ESXi host firewall ruleset to be configured

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
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

