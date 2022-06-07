function Invoke-Pax8MasterRequest {
	[CmdletBinding()]
	param (
		$Arguments
	)

	try {
		if (-not (Test-Path variable:script:Pax8Token)) {
			throw "Authentication error. Run the 'Connect-Pax8' cmdlet to establish a connection to the Pax8 REST API."
		}

		$headers = @{
			'Content-Type' = 'application/json'
			Authorization  = "Bearer $($script:Pax8Token)"
		}

		Invoke-RestMethod @Arguments -Headers $headers

	} catch {
		$PSCmdlet.ThrowTerminatingError($_)
	}
}
