---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8ContactById

## SYNOPSIS
Returns a single contact from a company by Id.

## SYNTAX

```powershell
Get-Pax8ContactById [-companyId] <String> [-contactId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a single contact from a company by Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8ContactById -companyId '6d1904c1-bae9-4664-afe1-f9d8858495ed' -contactId 'b2b6ac08-e02e-4138-b354-a0f5b233eeb2'
```

This command returns a contact.

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

### -contactId
The contact Id.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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

[Contacts](https://docs.pax8.com/api/v1#tag/Contacts)
