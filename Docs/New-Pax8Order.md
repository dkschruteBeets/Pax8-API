---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# New-Pax8Order

## SYNOPSIS
Creates a new order for a specified company.

## SYNTAX

```
New-Pax8Order [-companyId] <String> [[-orderedBy] <String>] [[-orderedByUserEmail] <String>]
 [-lineItems] <Array> [[-isMock] <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new order for a specified company.

## EXAMPLES

### Example 1
```powershell
$newParams = @{
    companyId          = 'c0486b84-3bfd-4f14-964a-1b5699b824ce'
    orderedBy          = 'Customer'
    orderedByUserEmail = 'blumbergh@initech.lumbergh.co'
    lineItems          = @(
        @{
            productId           = 'd50111da-5c93-43b5-9a6f-a4c3f537476f'
            lineItemNumber      = 1
            quantity            = 100
            provisioningDetails = @(
                @{ key = 'msCustExists'; values = @('No, the customer does not have a Microsoft account')
                },
                @{ key = 'msDomain'; values = @('initech.lumbergh.co') }
            )
        }
    )
}

New-Pax8Order @newParams
```

This command creates a new order.

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

### -isMock
Perform validations only. Skip any interactions with the database.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -lineItems
Line items required for the order (array of objects).

Required parameters:

- `productId`
- `lineItemNumber`

Valid syntax: `@( @{ productId = 'd50111da-5c93-43b5-9a6f-a4c3f537476f'; lineItemNumber = 1 } )`

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -orderedBy
The type of user who created the order.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Pax8 Partner, Customer, Pax8

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -orderedByUserEmail
The email address of the user who created this order.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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

[Orders](https://docs.pax8.com/api/v1#tag/Orders)
