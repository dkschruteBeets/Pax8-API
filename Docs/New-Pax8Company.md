---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# New-Pax8Company

## SYNOPSIS
Creates a new company.

## SYNTAX

```powershell
New-Pax8Company [-name] <String> [-address] <Object> [-phone] <String> [-website] <String>
 [[-externalId] <String>] [-billOnBehalfOfEnabled] <Boolean> [-selfServiceAllowed] <Boolean>
 [-orderApprovedRequired] <Boolean> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The company will be placed in an inactive status until the company has primary contacts added.

## EXAMPLES

### Example 1
```powershell
$newParams = @{
    name                  = 'Initech'
    address               = @{
        street          = '4120 Freidrich Ln'
        city            = 'Austin'
        postalCode      = 78744
        stateOrProvince = 'Texas'
        country         = 'US'
    }
    phone                 = '999-999-9999'
    website               = 'initech.lumbergh.co'
    billOnBehalfOfEnabled = $false
    selfServiceAllowed    = $false
    orderApprovedRequired = $false
}

New-Pax8Company @newParams
```

This command creates a new company.

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

### -address
The company address.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -billOnBehalfOfEnabled
Value is true if Pax8 handles billing transactions.

Value is false if partner handles billing transactions.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -externalId
An external Id that can be assigned to the company for reference.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -name
The company name.

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

### -orderApprovedRequired
Value is true if the company's self-service orders require approval, otherwise value is false.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -phone
The primary phone number of the company.

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

### -selfServiceAllowed
Value is true if self-service privileges are available to the company, otherwise value is false.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -website
The full URL of the company website.

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
