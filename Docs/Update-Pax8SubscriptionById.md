---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Update-Pax8SubscriptionById

## SYNOPSIS
Updates a specified subscription by Id.

## SYNTAX

```
Update-Pax8SubscriptionById [-subscriptionId] <String> [-quantity] <Int32> [-startDate] <String>
 [[-endDate] <String>] [[-price] <Double>] [-billingTerm] <String> [[-provisioningDetails] <Array>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates a specified subscription by Id.

## EXAMPLES

### Example 1
```powershell
$updateParams = @{
    subscriptionId      = '0ddf82c6-90ba-4008-9f06-b71982dbc34e'
    quantity            = 2
    startDate           = '2022-07-01'
    billingTerm         = '2-Year'
    provisioningDetails = @( @{ key = 'userEmailAddress'; values = @('pgibbons@initech.lumbergh.co') } )
}

Update-Pax8SubscriptionById @updateParams
```

This command updates a subscription by Id.

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

### -billingTerm
The subscription billing term.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Monthly, Annual, 2-Year, 3-Year, 1-Time, Trial

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -endDate
The subscription end date.

Valid format: `yyyy-MM-dd`

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -price
The subscription price.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -provisioningDetails
Provisioning details to add to the subscription.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -quantity
The subscription quantity.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -startDate
The subscription start date.

Valid format: `yyyy-MM-dd`

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

### -subscriptionId
The subscription Id.

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

[Subscriptions](https://docs.pax8.com/api/v1#tag/Subscriptions)
