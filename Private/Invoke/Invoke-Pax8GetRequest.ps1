function Invoke-Pax8GetRequest {
	[CmdletBinding()]
	param (
		$Arguments,
			
		[string]$EndPoint
	)
	
	Add-Type -AssemblyName System.Web
	$queryParams = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)	
	
	switch ($Arguments.Keys) {
		'page' {
			$queryParams.Add('page', $Arguments.page)
		}
		'size' {
			$queryParams.Add('size', $Arguments.size)
		}
		'sort' {
			if ($Arguments.ContainsKey('direction')) {
				$queryParams.Add('sort', "$($Arguments.sort),$($Arguments.direction)")
			} else {
				$queryParams.Add('sort', $Arguments.sort)
			}
		}
		'city' {
			$queryParams.Add('city', $Arguments.city)
		}
		'companyId' {
			if ($Arguments.ContainsKey('productId') -and (-not ($queryParams.Contains('productId')))) {
				$queryParams.Add('productId', $Arguments.productId)
			} else {
				$queryParams.Add('companyId', $Arguments.companyId)   
			}
		}
		'country' {
			$queryParams.Add('country', $Arguments.country)
		}
		'billingTerm' {
			$queryParams.Add('billingTerm', $Arguments.billingTerm)
		}
		'invoiceDate' {
			$queryParams.Add('invoiceDate', $Arguments.invoiceDate)
		}
		'invoiceDateRangeStart' {
			$queryParams.Add('invoiceDateRangeStart', $Arguments.invoiceDateRangeStart)
		}
		'invoiceDateRangeEnd' {
			$queryParams.Add('invoiceDateRangeEnd', $Arguments.invoiceDateRangeEnd)
		}
		'dueDate' {
			$queryParams.Add('dueDate', $Arguments.dueDate)
		}
		'stateOrProvince' {
			$queryParams.Add('stateOrProvince', $Arguments.stateOrProvince)
		}
		'postalCode' {
			$queryParams.Add('postalCode', $Arguments.postalCode)
		}
		'selfServiceAllowed' {
			$queryParams.Add('selfServiceAllowed', $Arguments.selfServiceAllowed)
		}
		'total' {
			$queryParams.Add('total', $Arguments.total)
		}
		'balance' {
			$queryParams.Add('balance', $Arguments.balance)
		}
		'carriedBalance' {
			$queryParams.Add('carriedBalance', $Arguments.carriedBalance)
		}
		'billOnBehalfOfEnabled' {
			$queryParams.Add('billOnBehalfOfEnabled', $Arguments.billOnBehalfOfEnabled)
		}
		'orderApprovalRequired' {
			$queryParams.Add('orderApprovalRequired', $Arguments.orderApprovalRequired)
		}
		'productId' {
			if ($Arguments.ContainsKey('companyId') -and (-not ($queryParams.Contains('companyId')))) {
				$queryParams.Add('companyId', $Arguments.productId)
			} else {
				$queryParams.Add('productId', $Arguments.productId)                
			}
		}
		'resourceGroup' {
			$queryParams.Add('resourceGroup', $Arguments.resourceGroup)
		}
		'status' {
			$queryParams.Add('status', $Arguments.status)
		}
		'usageDate' {
			$queryParams.Add('usageDate', $Arguments.usageDate)
		}
		'vendorName' {
			$queryParams.Add('vendorName', $Arguments.vendorName)
		}
	}
	
	$uriRequest = [System.UriBuilder]"$Pax8RestUrl/$EndPoint"
	$uriRequest.Query = $queryParams.ToString()
	
	$requestArgs = @{
		Uri    = $uriRequest.Uri.OriginalString
		Method = 'Get'
	}
	
	if ($Arguments.all) {
		$result = Invoke-Pax8AllRequest -Arguments $requestArgs
	} else {
		$result = Invoke-Pax8MasterRequest -Arguments $requestArgs
	}
	
	if ($result.content) {
		$result.content
	} else {
		$result
	}
}
