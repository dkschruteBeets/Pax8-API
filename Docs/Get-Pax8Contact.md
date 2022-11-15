---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8Contact

## SYNOPSIS
Returns a paginated list of contacts from a company, ordered by 'createDate' descending.

## SYNTAX

### Paging (Default)
```powershell
Get-Pax8Contact -companyId <String> [-page <Int32>] [-size <Int32>] [<CommonParameters>]
```

### All
```powershell
Get-Pax8Contact -companyId <String> [-all] [<CommonParameters>]
```

## DESCRIPTION
Returns a paginated list of contacts from a company, ordered by 'createDate' descending.

## EXAMPLES

### Example 1
```powershell
Get-Pax8Contact -companyId '6d1904c1-bae9-4664-afe1-f9d8858495ed' -all
```

This command gets all contacts from a company.

## PARAMETERS

### -all
Returns all contacts specific to the company.

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

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -page
The page number to request for in the contacts list.

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
Return this number of company records per page. Default is 10.

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

[Contacts](https://docs.pax8.com/api/v1#tag/Contacts)
