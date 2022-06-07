function Invoke-Pax8UpdateRequest {
	[CmdletBinding(SupportsShouldProcess)]
	param (
		$Arguments,
		
		[string]$EndPoint
	)
	
	$body = @{}
	
	switch ($Arguments.Keys) {
		'quantity' {
			$body.Add('quantity', $Arguments.quantity)
		}
		'startDate' {
			$body.Add('startDate', $Arguments.startDate)
		}
		'endDate' {
			$body.Add('endDate', $Arguments.endDate)
		}
		'price' {
			$body.Add('price', $Arguments.price)
		}
		'billingTerm' {
			$body.Add('billingTerm', $Arguments.billingTerm)
		}
		'firstName' {
			$body.Add('firstName', $Arguments.firstName)
		}
		'lastName' {
			$body.Add('lastName', $Arguments.lastName)
		}
		'email' {
			$body.Add('email', $Arguments.email)
		}
		'phone' {
			$body.Add('phone', $Arguments.phone)
		}
		'provisioningDetails' {
			$body.Add('provisioningDetails', $Arguments.provisioningDetails)
		}
		'types' {
			$body.Add('types', $Arguments.types)
		}
	}
	
	$uriRequest = [System.UriBuilder]"$Pax8RestUrl/$EndPoint"
	
	$requestArgs = @{
		Uri    = $uriRequest.Uri.OriginalString
		Method = 'Put'
		Body   = ($body | ConvertTo-Json -Depth 5)
	}
	
	if ($PSCmdlet.ShouldProcess($requestArgs.Uri, 'Update')) {
		$result = Invoke-Pax8MasterRequest -Arguments $requestArgs
	}
	
	if ($result.content) {
		$result.content
	} else {
		$result
	}
}
