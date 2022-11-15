---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Get-Pax8SubscriptionById

## SYNOPSIS
Returns a subscription by subscription Id.

## SYNTAX

```powershell
Get-Pax8SubscriptionById [-subscriptionId] <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a subscription by subscription Id.

## EXAMPLES

### Example 1
```powershell
Get-Pax8SubscriptionById -subscriptionId '771f6174-20ee-48ca-8f40-cc30bb165bcd'
```

This command gets a subscription by Id.

## PARAMETERS

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
