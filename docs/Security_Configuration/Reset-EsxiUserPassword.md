---
document type: cmdlet
external help file: Security_Configuration-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Security_Configuration
ms.date: 07/27/2026
PlatyPS schema version: 2024-05-01
title: Reset-EsxiUserPassword
---

# Reset-EsxiUserPassword

## SYNOPSIS

Reset the password for a local user on a specified ESXi host

## SYNTAX

### __AllParameterSets

```
Reset-EsxiUserPassword [-ESXiHost] <string> [-userName] <string>
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Reset-EsxiUserPassword cmdlet resets the password for a local user on a specified ESXi host

## EXAMPLES

### EXAMPLE 1

Reset-EsxiUserPassword -ESXiHost esx-01.sddc.lab -userName vcfadmin

## PARAMETERS

### -ESXiHost

The ESXi host targeted for new user creation

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

### -userName

The user to have their password reset

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

