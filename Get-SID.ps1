function Get-SID
{
  <#
      .SYNOPSIS
      Returns the SID for a specified User
      .DESCRIPTION
      Returns the SID for a specified User
      .EXAMPLE
      Get-SID -UserName JohnDoe
  #>
  [CmdletBinding()]
  param
  (
    [String]
    [Parameter(Mandatory=$true)]
    $UserName
  )
  
  try
  {
    $objUser = New-Object System.Security.Principal.NTAccount($UserName)
    $SID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
    $SID = $SID.Value
    return $SID
  }
  catch
  {
    "Error was $_"
    $line = $_.InvocationInfo.ScriptLineNumber
    "Error was in Line $line"
  }
}

