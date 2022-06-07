function Invoke-Pax8AllRequest {
    [CmdletBinding()]
    param (
        $Arguments
    )

    [System.Collections.Generic.List[object]]$result = @()
    $pageNum = 0 

    if ($Arguments.Uri -match '\?') {
        $Arguments.Uri += "&page=$($pageNum)&size=200"
    } else {
        $Arguments.Uri += "?page=$($pageNum)&size=200"
    }

    $response = Invoke-Pax8MasterRequest -Arguments $Arguments
    $totalPages = $response.page.totalPages

    if ($totalPages -gt 1) {
        $result.Add($response)
        $pageNum++

        while ($pageNum -lt $totalPages) {
            $Arguments.Uri = $Arguments.Uri -replace "page=\d*", "page=$($pageNum)"
            $response = Invoke-Pax8MasterRequest -Arguments $Arguments

            if ($response.content) {
                $result.Add($response)
                $pageNum++
            } else {
                break
            }
        }
    } else {
        $result.Add($response)
    }
    
    $result
}
