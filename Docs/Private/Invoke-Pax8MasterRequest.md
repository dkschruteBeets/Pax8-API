---
external help file:
Module Name:
online version:
schema: 2.0.0
---

# Invoke-Pax8MasterRequest

## SYNOPSIS
Invokes requests called by all private functions.

## SYNTAX

```
Invoke-Pax8MasterRequest [[-Arguments] <Object>] [<CommonParameters>]
```

## DESCRIPTION
This function issues the final web request called by the following:

- `Invoke-Pax8AllRequest`
- `Invoke-Pax8GetRequest`
- `Invoke-Pax8NewRequest`
- `Invoke-Pax8RemoveRequest`
- `Invoke-Pax8TenantIdRequest`
- `Invoke-Pax8UpdateRequest`

All requests made via this function include error handling.

## EXAMPLES

### Example 1
```powershell
Invoke-Pax8MasterRequest -Arguments $requestArgs
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES
Author: Terry Wilson

## RELATED LINKS
