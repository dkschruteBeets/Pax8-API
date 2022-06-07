---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8Subscription

## SYNOPSIS
Returns a paginated list of subscriptions.

## SYNTAX

### Paging (Default)
```
Get-Pax8Subscription [-page <Int32>] [-size <Int32>] [-sort <String>] [-status <String>]
 [-billingTerm <String>] [-companyId <String>] [-productId <String>] [<CommonParameters>]
```

### All
```
Get-Pax8Subscription [-sort <String>] [-status <String>] [-billingTerm <String>] [-companyId <String>]
 [-productId <String>] [-all] [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of subscriptions.

## EXAMPLES

### Example 1
```powershell
Get-Pax8Subscription -page 10 -size 5 -sort startDate -billingTerm Monthly
```

This commands gets 5 monthly subscriptions on page 10 and sorts by startDate.

### Example 2
```powershell
Get-Pax8Subscription -all -sort createdDate -direction desc
```

This command gets all subscriptions and sorts by createdDate in a descending direction.

The `-direction` parameter is a dynamic parameter and is only available when using `-sort`.

## PARAMETERS

### -all
Returns all subscriptions.

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

### -billingTerm
Returns only subscriptions matching this `billingTerm` value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Monthly, Annual, 2-Year, 3-Year, One-Time, Trial, Activation

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -companyId
The company Id.

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
The page number to request in the subscriptions list.

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

### -productId
The product Id.

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

### -size
Returns this number of subsciptions per page. Default is 10.

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
Returns subscriptions sorted by this field.

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
Accepted values: quantity, startDate, endDate, createdDate, billingStart, price

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -status
Returns only subscriptions matching this `status` value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Active, Cancelled, PendingManual, PendingAutomated, PendingCancel, WaitingForDetails, Trial, Converted, PendingActivation, Activated

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

[Subscriptions](https://docs.pax8.com/api/v1#tag/Subscriptions)
