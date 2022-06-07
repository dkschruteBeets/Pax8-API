---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8Company365TenantId

## SYNOPSIS
Returns a Microsoft 365 tenant Id.

## SYNTAX

```
Get-Pax8Company365TenantId [-companyId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a Microsoft 365 tenant Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8Company365TenantId -companyId '6d1904c1-bae9-4664-afe1-f9d8858495ed' | Select-Object -ExpandProperty tenantId
```

This command gets the Microsoft 365 tenant Id by using the Pax8 company Id.

## PARAMETERS

### -companyId
The Pax8 company Id.

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
