---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8UsageSummaryById

## SYNOPSIS
Returns a usage summary by Id.

## SYNTAX

```
Get-Pax8UsageSummaryById [-usageSummaryId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a usage summary by Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8UsageSummaryById -usageSummaryId 'b2a734a1-4459-428f-a75e-bd95f587909e'
```

This command gets a usage summary by Id.

## PARAMETERS

### -usageSummaryId
The usage summary Id.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES
Author: Terry Wilson

## RELATED LINKS

[Usage Summaries](https://docs.pax8.com/api/v1#tag/Usage-Summaries)
