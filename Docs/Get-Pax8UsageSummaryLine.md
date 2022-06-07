---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8UsageSummaryLine

## SYNOPSIS
Returns a paginated list of usage lines for a usage summary.

## SYNTAX

```
Get-Pax8UsageSummaryLine [-usageSummaryId] <String> [-usageDate] <String> [[-productId] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of usage lines for a usage summary.

## EXAMPLES

### Example 1
```powershell
Get-Pax8UsageSummaryLine -usageSummaryId 'b2a734a1-4459-428f-a75e-bd95f587909e' -usageDate '2022-05-26'
```

This command gets a list of usage lines on the requested date for the specified usage summary Id.

## PARAMETERS

### -productId
Returns only usage summaries with this `productId` value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -usageDate
The date usage was recorded.

Valid format: `yyyy-MM-dd`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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
