---
document type: cmdlet
external help file: Security_Configuration-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Security_Configuration
ms.date: 07/27/2026
PlatyPS schema version: 2024-05-01
title: Set-ESXiHostFirewall
---

# Set-ESXiHostFirewall

## SYNOPSIS

Gets the firewall configuration of an ESXi host

## SYNTAX

### __AllParameterSets

```
Set-ESXiHostFirewall [-ESXiHost] <string> [[-Enabled] <string>] [[-DefaultAction] <string>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Get-ESXiHostFirewall cmdlet gets the firewall configuration of an ESXi host

## EXAMPLES

### EXAMPLE 1

Get-ESXiHostFirewall -ESXiHost esx01.sddc.lab

## PARAMETERS

### -DefaultAction

Defining the default action for the ESXi firewall

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

### -Enabled

Defining whether the ESXi firewall should be enabled

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

