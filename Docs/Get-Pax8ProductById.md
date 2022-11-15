---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8ProductById

## SYNOPSIS
Returns a product by Id.

## SYNTAX

```powershell
Get-Pax8ProductById [-productId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a product by Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8ProductById -productId 'fd6ac512-9043-4cab-927d-fa17d6ae0588'
```

This command gets a product by Id.

## PARAMETERS

### -productId
The product Id.

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

[Products](https://docs.pax8.com/api/v1#tag/Products)
