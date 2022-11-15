---
external help file:
Module Name:
online version:
schema: 2.0.0
---

# Invoke-Pax8GetRequest

## SYNOPSIS
Invokes a `Get` request.

## SYNTAX

```powershell
Invoke-Pax8GetRequest [[-Arguments] <Object>] [[-EndPoint] <String>] [<CommonParameters>]
```

## DESCRIPTION
This function handles all `Get` requests related to `Get-Pax8` cmdlets.

The `GET` method is used for this REST function call.

## EXAMPLES

### Example 1
```powershell
Invoke-Pax8GetRequest -Arguments $requestArgs -EndPoint $endPoint
```

## PARAMETERS

### -Arguments
Accepts a hash table of parameters.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndPoint
The API endpoint resource.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
