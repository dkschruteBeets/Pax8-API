---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8OrderById

## SYNOPSIS
Returns order details by Id.

## SYNTAX

```
Get-Pax8OrderById [-orderId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns order details by Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8OrderById -orderId '66e71be1-75bf-42d7-9064-63d810beab6e'
```

This command gets an order by Id.

## PARAMETERS

### -orderId
The order Id.

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

[Orders](https://docs.pax8.com/api/v1#tag/Orders)
