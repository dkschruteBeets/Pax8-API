---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# New-Pax8Contact

## SYNOPSIS
Creates a new contact for a company.

## SYNTAX

```
New-Pax8Contact [-companyId] <String> [-firstName] <String> [-lastName] <String> [-email] <String>
 [-phone] <String> [[-types] <Array>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new contact for a company.

## EXAMPLES

### Example 1
```powershell
$newParams = @{
    companyId = 'c0486b84-3bfd-4f14-964a-1b5699b824ce'
    firstName = 'Bill'
    lastName  = 'Lumbergh'
    email     = 'blumbergh@initech.lumbergh.co'
    phone     = '666-666-6666'
    types     = @( @{ type = 'Admin'; primary = $true } )
}

New-Pax8Contact @newParams
```

This command creates a new contact.

## PARAMETERS

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

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
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -email
The email.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -firstName
The first name.

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

### -lastName
The last name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -phone
The phone number.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -types
The contact type (array of objects).

Valid values for `type`:

- `Admin`
- `Billing`
- `Technical`

Valid values for `primary`:

- `$true`
- `$false`

Valid syntax: `@( @{ type = 'Admin'; primary = $true } )`

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
