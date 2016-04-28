<#
    .Synopsis
    Short description
    .DESCRIPTION
    Long description
    .EXAMPLE
    Example of how to use this cmdlet
    .EXAMPLE
    Another example of how to use this cmdlet
#>
function Enter-PSSession1
{
    [CmdletBinding()]
    Param
    (
        # Param help description
        [string]
        $RemoteComputer
    )

    $Credential = Get-Credential
    Enter-PSSession -ComputerName $RemoteComputer -Credential $Credential
}
