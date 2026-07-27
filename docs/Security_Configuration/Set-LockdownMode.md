# Set-LockdownMode

## SYNOPSIS

Set Lockdown Mode configuration on a specified ESXi host

## SYNTAX

### __AllParameterSets

```
Set-LockdownMode [-ESXiHost] <string> [-lockdownLevel] <string>
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Set-LockdownMode cmdlet sets the LockdownMode configuration for a specified ESXi host

## EXAMPLES

### EXAMPLE 1

Set-LockdownMode -ESXiHost esx-01.sddc.lab -lockdownLevel lockdownDisabled

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

### -lockdownLevel

The Lockdown Mode configuration to be applied to the specified ESXi host

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

