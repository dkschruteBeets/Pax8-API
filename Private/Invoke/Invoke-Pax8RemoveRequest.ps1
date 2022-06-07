function Invoke-Pax8RemoveRequest {
	[CmdletBinding(SupportsShouldProcess)]
	param (
		$Arguments,
		
		[string]$EndPoint
	)
	
	Add-Type -AssemblyName System.Web
	$queryParams = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)
	
	if ($Arguments.ContainsKey('cancelDate')) {
		$queryParams.Add('cancelDate', $Arguments.cancelDate)
	}
	
	$uriRequest = [System.UriBuilder]"$Pax8RestUrl/$EndPoint"
	$uriRequest.Query = $queryParams.ToString()
	
	$requestArgs = @{
		Uri    = $uriRequest.Uri.OriginalString
		Method = 'Delete'
	}
	
	if ($PSCmdlet.ShouldProcess($requestArgs.Uri, 'Delete')) {	
		$result = Invoke-Pax8MasterRequest -Arguments $requestArgs
	}
	
	if ($result.content) {
		$result.content
	} else {
		$result
	}
}
