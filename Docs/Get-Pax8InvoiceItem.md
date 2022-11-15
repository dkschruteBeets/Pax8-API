---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8InvoiceItem

## SYNOPSIS
Returns a paginated list of items for an invoice.

## SYNTAX

### Paging (Default)
```powershell
Get-Pax8InvoiceItem -invoiceId <String> [-page <Int32>] [-size <Int32>] [<CommonParameters>]
```

### All
```powershell
Get-Pax8InvoiceItem -invoiceId <String> [-all] [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of items for an invoice.

## EXAMPLES

### Example 1
```powershell
Get-Pax8InvoiceItem -invoiceId '11bcf019-df75-4dcd-97b4-130f48eea0ee' -all
```

This command gets all invoice items specific to the invoice Id.

## PARAMETERS

### -all
Returns all invoice items specific to the invoice Id.

```yaml
Type: SwitchParameter
Parameter Sets: All
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -invoiceId
The invoice Id.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -page
The page number to request in the invoices items list.

```yaml
Type: Int32
Parameter Sets: Paging
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -size
Returns this number of invoice items per page. Default is 10.

```yaml
Type: Int32
Parameter Sets: Paging
Aliases:

Required: False
Position: Named
Default value: 10
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
