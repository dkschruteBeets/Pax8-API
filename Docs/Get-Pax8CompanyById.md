---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8CompanyById

## SYNOPSIS
Returns a single company record matching the company Id.

## SYNTAX

```
Get-Pax8CompanyById [-companyId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a single company record matching the company Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8CompanyById -companyId '6d1904c1-bae9-4664-afe1-f9d8858495ed'
```

This command gets a specific company by Id.

## PARAMETERS

### -companyId
The company Id.

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

[Companies](https://docs.pax8.com/api/v1#tag/Companies)
