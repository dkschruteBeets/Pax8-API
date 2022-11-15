---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8InvoiceById

## SYNOPSIS
Returns an invoice by Id.

## SYNTAX

```powershell
Get-Pax8InvoiceById [-invoiceId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns an invoice by Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8InvoiceById -invoiceId '11bcf019-df75-4dcd-97b4-130f48eea0ee'
```

This command gets an invoice by Id.

## PARAMETERS

### -invoiceId
The invoice Id.

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

[Invoices](https://docs.pax8.com/api/v1#tag/Invoices)
