---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8UsageSummary

## SYNOPSIS
Returns a paginated list of usage summaries.

## SYNTAX

### Paging (Default)
```powershell
Get-Pax8UsageSummary -subscriptionId <String> [-page <Int32>] [-size <Int32>] [-sort <String>]
 [-resourceGroup <String>] [-companyId <String>] [<CommonParameters>]
```

### All
```powershell
Get-Pax8UsageSummary -subscriptionId <String> [-sort <String>] [-resourceGroup <String>] [-companyId <String>]
 [-all] [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of usage summaries.

## EXAMPLES

### Example 1
```powershell
Get-Pax8UsageSummary -subscriptionId '771f6174-20ee-48ca-8f40-cc30bb165bcd' -all
```

This command gets a usage summary list for the specified subscription.

### Example 2
```powershell
Get-Pax8UsageSummary -subscriptionId '771f6174-20ee-48ca-8f40-cc30bb165bcd' -page 1 -size 2 -sort currentCharges -direction desc
```

This command gets 2 usage summaries on page 1 and sorts by currentCharges in a descending direction.

The `-direction` parameter is a dynamic parameter and is only available when using `-sort`.

## PARAMETERS

### -all
Returns all usage summaries.

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
The page number to request in the usage summaries list.

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

### -resourceGroup
Returns only usage summaries matching this `resourceGroup` value.

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
Returns this number of usage summaries per page. Default is 10.

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
Returns usage summaries sorted by this field.

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
Accepted values: resourceGroup, currentCharges, partnerTotal

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -subscriptionId
The subscription Id.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES
Author: Terry Wilson

## RELATED LINKS

[Usage Summaries](https://docs.pax8.com/api/v1#tag/Usage-Summaries)
