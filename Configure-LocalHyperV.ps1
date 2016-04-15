<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
.INPUTS
   Inputs to this cmdlet (if any)
.OUTPUTS
   Output from this cmdlet (if any)
#>
function Set-LocalHyperVConfiguration
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([String])]
    Param
    (
        # HyperV-Server that should be connected
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0
                   )]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()] 
        $hypervhost
    )

    Begin
    {
    }
    Process
    {
        

        winrm set winrm/config/client '@{TrustedHosts=$hypervhost}'
        cmdkey.exe /add:$hypervhost /user:ADMINISTRATOR /pass:PasswordA

        if ($pscmdlet.ShouldProcess('Target', 'Operation'))
        {
        }
    }
    End
    {
    }
}

