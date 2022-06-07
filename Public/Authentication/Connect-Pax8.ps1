function Connect-Pax8 {
	[CmdletBinding()]
	param (
		[Parameter(Mandatory)]
		[ValidateNotNullOrEmpty()]
		[System.Management.Automation.PSCredential]
		[System.Management.Automation.Credential()]
		$credential
	)

	$body = @{
		client_id     = $credential.UserName
		client_secret = $credential.GetNetworkCredential().Password
		audience      = 'api://p8p.client'
		grant_type    = 'client_credentials'
	} | ConvertTo-Json
	
	try {
		$postParams = @{
			Uri         = 'https://login.pax8.com/oauth/token'
			Method      = 'Post'
			ContentType = 'application/json'
			Body        = $body
		}

		$response = Invoke-RestMethod @postParams

		$script:Pax8Token = ($response).access_token
		$script:Pax8RestUrl = 'https://api.pax8.com/v1'
		$script:Pax8AppUrl = 'https://app.pax8.com/p8p/api/v3'

	} catch {
		$PSCmdlet.ThrowTerminatingError($_)
	}
}
