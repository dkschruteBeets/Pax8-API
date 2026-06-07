function Get-Pax8ResponseContentOrResult {
    [CmdletBinding()]
    param (
        $Response
    )

    $firstResponse = @($Response)[0]
    if ($null -eq $firstResponse) {
        return
    }

    if ($firstResponse.PSObject.Properties['content']) {
        if ($null -ne $Response.content) {
            $Response.content
        }

        return
    }

    $pageProperty = $firstResponse.PSObject.Properties['page']
    if ($pageProperty -and $firstResponse.page.PSObject.Properties['totalElements'] -and $firstResponse.page.totalElements -eq 0) {
        return
    }

    $Response
}
