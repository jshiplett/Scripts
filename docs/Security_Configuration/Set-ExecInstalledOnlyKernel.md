---
document type: cmdlet
external help file: Security_Configuration-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Security_Configuration
ms.date: 07/27/2026
PlatyPS schema version: 2024-05-01
title: Set-ExecInstalledOnlyKernel
---

# Set-ExecInstalledOnlyKernel

## SYNOPSIS

Sets the execInstalledOnly kernel module configuration for an ESXi host

## SYNTAX

### __AllParameterSets

```
Set-ExecInstalledOnlyKernel [-ESXiHost] <string> [-Enabled] <string>
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Set-ExecInstalledOnlyKernel cmdlet sets the execInstalledOnly kernel module configuration for an ESXi host

## EXAMPLES

### EXAMPLE 1

Set-ExecInstalledOnlyKernel -ESXiHost esx-01.sddc.lab -Enabled True

## PARAMETERS

### -Enabled

Specifies whether the execInstalledOnly kernel module should be enabled

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

### -ESXiHost

The ESXi host to be queried for its execInstalledOnly kernel module configuration

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

