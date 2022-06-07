---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8Product

## SYNOPSIS
Returns a paginated list of Pax8 products.

## SYNTAX

### Paging (Default)
```
Get-Pax8Product [-page <Int32>] [-size <Int32>] [-sort <String>] [-vendorName <String>] [<CommonParameters>]
```

### All
```
Get-Pax8Product [-sort <String>] [-vendorName <String>] [-all] [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of Pax8 products.

## EXAMPLES

### Example 1
```powershell
Get-Pax8Product -page 5 -size 3 -sort vendor
```

This command gets 3 products on page 5 and sorts by vendor.

### Example 2
```powershell
Get-Pax8Product -all -sort name -direction desc
```

This command gets all products and sorts by name in a descending direction.

The `-direction` parameter is a dynamic parameter and is only available when using `-sort`.

## PARAMETERS

### -all
Returns all products.

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

### -page
The page number to request for in the products list.

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
Return this number of products per page. Default is 10.

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
Returns products sorted by this field.

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
Accepted values: name, vendor

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vendorName
Returns only products matching the specified vendor name.

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
