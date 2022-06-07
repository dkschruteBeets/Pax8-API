---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8Company

## SYNOPSIS
Returns a paginated list of companies.

## SYNTAX

### Paging (Default)
```
Get-Pax8Company [-page <Int32>] [-size <Int32>] [-sort <String>] [-city <String>] [-country <String>]
 [-stateOrProvince <String>] [-postalCode <String>] [-selfServiceAllowed <Boolean>]
 [-billOnBehalfOfEnabled <Boolean>] [-orderApprovalRequired <Boolean>] [-status <String>] [<CommonParameters>]
```

### All
```
Get-Pax8Company [-sort <String>] [-city <String>] [-country <String>] [-stateOrProvince <String>]
 [-postalCode <String>] [-selfServiceAllowed <Boolean>] [-billOnBehalfOfEnabled <Boolean>]
 [-orderApprovalRequired <Boolean>] [-status <String>] [-all] [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of companies.

## EXAMPLES

### Example 1
```powershell
Get-Pax8Company -page 1 -size 5 -sort city -status Active
```

This command gets 5 active companies on page 1 and sorts by city.

### Example 2
```powershell
Get-Pax8Company -all -sort name -direction desc
```

This command gets all companies and sorts by name in a descending direction.

The `-direction` parameter is a dynamic parameter and is only available when using `-sort`.

## PARAMETERS

### -all
Returns all companies.

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

### -billOnBehalfOfEnabled
Returns only companies matching this `billOnBehalfOfEnabled` value.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -city
Returns only companies matching this `city` value.

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

### -country
Returns only companies matching this `country` value.

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

### -orderApprovalRequired
Returns only companies matching this `orderApprovalRequired` value.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -page
The page number to request for in the companies list.

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

### -postalCode
Returns only companies matching this `postalCode` value.

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

### -selfServiceAllowed
Returns only companies matching this `selfServiceAllowed` value.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -size
Returns this number of company records per page. Default is 10.

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
Returns companies sorted by this field.

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
Accepted values: name, city, country, stateOrProvince, postalCode

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -stateOrProvince
Returns only companies matching this `stateOrProvince` value.

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

### -status
Returns only companies matching this `status` value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Active, Inactive, Deleted

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

[Companies](https://docs.pax8.com/api/v1#tag/Companies)
