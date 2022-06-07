---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8Invoice

## SYNOPSIS
Returns a paginated list of invoices.

## SYNTAX

### Paging (Default)
```
Get-Pax8Invoice [-page <Int32>] [-size <Int32>] [-sort <String>] [-status <String>] [-invoiceDate <String>]
 [-invoiceDateRangeStart <String>] [-invoiceDateRangeEnd <String>] [-dueDate <String>] [-total <Double>]
 [-balance <Double>] [-carriedBalance <Double>] [-companyId <String>] [<CommonParameters>]
```

### All
```
Get-Pax8Invoice [-sort <String>] [-status <String>] [-invoiceDate <String>] [-invoiceDateRangeStart <String>]
 [-invoiceDateRangeEnd <String>] [-dueDate <String>] [-total <Double>] [-balance <Double>]
 [-carriedBalance <Double>] [-companyId <String>] [-all] [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of invoices.

## EXAMPLES

### Example 1
```powershell
Get-Pax8Invoice -page 3 -size 1 -sort dueDate -status UnPaid
```

This command gets 1 unpaid invoice on page 3 and sorts by dueDate.

### Example 2
```powershell
Get-Pax8Invoice -all -sort partnerName -direction desc
```

This command gets all invoices and sorts by partnerName in a descending direction.

The `-direction` parameter is a dynamic parameter and is only available when using `-sort`.

## PARAMETERS

### -all
Returns all invoices.

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

### -balance
Returns only invoices matching this `balance` value.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -carriedBalance
Returns only invoices matching this `carriedBalance` value.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -companyId
Returns only invoices matching this `companyId` value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -dueDate
Returns only invoices matching this `dueDate` value.

Valid format: `yyyy-MM-dd`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -invoiceDate
Returns only invoices matching this `invoiceDate` value.

Valid format: `yyyy-MM-dd`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -invoiceDateRangeEnd
Returns only invoices with an `invoiceDate` less than or equal to this date.

Valid format: `yyyy-MM-dd`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -invoiceDateRangeStart
Returns only invoices with an invoiceDate greater than or equal to this date.

Valid format: `yyyy-MM-dd`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -page
The page number to request in the invoices list.

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
Returns this number of invoices per page. Default is 10.

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

### -sort
Returns invoices sorted by this field.

This parameter also creates a dynamic parameter `-direction` when used.

This allows you to sort the results by an ascending or descending direction.

Valid values:

- `asc`
- `desc`

Specifying the dynamic parameter is optional.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: invoiceDate, dueDate, status, partnerName, total, balance, carriedBalance

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -status
Returns only invoices matching this `status` value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Unpaid, Paid, Void, Carried, Nothing Due

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -total
Returns only invoices matching this `total` value.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
