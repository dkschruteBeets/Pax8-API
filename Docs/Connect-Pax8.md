---
external help file: Pax8-API-help.xml
Module Name: Pax8-API
online version:
schema: 2.0.0
---

# Connect-Pax8

## SYNOPSIS
Authenticates to the Pax8 REST API.

## SYNTAX

```powershell
Connect-Pax8 [-credential] <PSCredential> [<CommonParameters>]
```

## DESCRIPTION
The Pax8 API uses OAuth 2.0 and requires a `client_id` and `client_Secret` to authenticate.

Create your developer application first and then use those credentials here.

## EXAMPLES

### Example 1
```powershell
Connect-Pax8 -credential 'client_Id'
```

### Example 2
```powershell
$clientSecret = ConvertTo-SecureString "client_secret" -AsPlainText -Force

$cred = New-Object System.Management.Automation.PSCredential ("client_Id", $clientSecret)

Connect-Pax8 -credential $cred
```

## PARAMETERS

### -credential
Specifies a `client_Id` for the credential. The parameter name, `-credential`, is optional.

When you submit the command and specify a `client_Id`, you're prompted for a `client_secret`. If you omit this parameter, you're prompted for a `client_Id` and a `client_secret`.

```yaml
Type: PSCredential
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

[Developer Application](https://docs.pax8.com/api/v1#section/Create-a-Developer-Application)
