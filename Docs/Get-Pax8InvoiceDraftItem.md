---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version: https://devx.pax8.com/reference/findpartnerdraftinvoiceitems
schema: 2.0.0
---

# Get-Pax8InvoiceDraftItem

## SYNOPSIS

Returns a paginated list of draft invoice items.

## SYNTAX

### Paging (Default)

```powershell
Get-Pax8InvoiceDraftItem [-page <Int32>] [-size <Int32>] [-monthOffset <Int32>] [-companyId <Guid>] [<CommonParameters>]
```

### All

```powershell
Get-Pax8InvoiceDraftItem [-monthOffset <Int32>] [-companyId <Guid>] [-all]
 [<CommonParameters>]
```

## DESCRIPTION

Returns a paginated list of draft invoice items before they are finalized into invoices.

## EXAMPLES

### Example 1

```powershell
Get-Pax8InvoiceDraftItem -monthOffset 1 -all
```

This command gets all draft invoice items for the next month.

## PARAMETERS

### -all

Returns all draft invoice items.

```yaml
Type: SwitchParameter
Parameter Sets: All
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -companyId

Filters draft invoice items to a specific company.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -monthOffset

Number of months from current to return draft items for.
0 returns the current month and 1 returns the next month.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -page

The page number to request in the draft invoice items list.

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

Returns this number of draft invoice items per page.
Default is 10.

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

[List Draft Invoice Items](https://devx.pax8.com/reference/findpartnerdraftinvoiceitems)
