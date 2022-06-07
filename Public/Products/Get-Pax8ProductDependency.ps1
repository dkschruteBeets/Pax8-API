function Get-Pax8ProductDependency {
	[CmdletBinding()]
	param (
		[Parameter(Mandatory)]
		[ValidateScript({
				try {
					[System.Guid]::Parse($_) | Out-Null; $true
				} catch {
					$PSCmdlet.ThrowTerminatingError($_)
				}
			})]
		[string]$productId
	)
	
	$endPoint = "products/$($productId)/dependencies"
	Invoke-Pax8GetRequest -Arguments $PSBoundParameters -EndPoint $endPoint
}
