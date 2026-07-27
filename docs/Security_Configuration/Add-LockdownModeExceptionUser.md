# Add-LockdownModeExceptionUser

## SYNOPSIS

Add a local user to the Lockdown Mode exception users list on a specified ESXi host

## SYNTAX

### __AllParameterSets

```
Add-LockdownModeExceptionUser [-ESXiHost] <string> [-userName] <string>
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Add-LockdownModeExceptionUser cmdlet adds a local user to the LockdownMode exception users list for a specified ESXi host

## EXAMPLES

### EXAMPLE 1

Add-LockdownModeExceptionUser -ESXiHost esx-01.sddc.lab -userName vcfadmin

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

### -userName

The user to be added to the LockdownMode exception users list

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

