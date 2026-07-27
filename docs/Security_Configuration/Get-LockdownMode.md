---
document type: cmdlet
external help file: Security_Configuration-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Security_Configuration
ms.date: 07/27/2026
PlatyPS schema version: 2024-05-01
title: Get-LockdownMode
---

# Get-LockdownMode

## SYNOPSIS

Get the current state of an ESXi host Lockdown Mode configuration.

## SYNTAX

### __AllParameterSets

```
Get-LockdownMode [-ESXiHost] <string>
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Get-LockdownMode cmdlet queries the vCenter Server and returns the LockdownMode value for a specified ESXi host.

## EXAMPLES

### EXAMPLE 1

Get-LockdownMode -ESXiHost esx-01.sddc.lab

## PARAMETERS

### -ESXiHost

The ESXi host targeted for LockdownMode configuration

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

