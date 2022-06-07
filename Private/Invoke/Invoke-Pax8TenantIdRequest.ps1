function Invoke-Pax8TenantIdRequest {
    [CmdletBinding()]
    param (
        $Arguments,
		
        [string]$EndPoint
    )
	
    $uriRequest = [System.UriBuilder]"$Pax8AppUrl/$EndPoint"
	
    $requestArgs = @{
        Uri    = $uriRequest.Uri.OriginalString
        Method = 'Get'
    }
	
    Invoke-Pax8MasterRequest -Arguments $requestArgs
}
