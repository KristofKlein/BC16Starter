param ([String]$sasToken = '')

& (Join-Path -Path $PSScriptRoot -ChildPath 'Install-BCContainerHelper.ps1')

Write-Host '###### Create Container with Artifacts ######' -ForegroundColor Blue

if ([String]::IsNullOrEmpty($sasToken)) {
    Write-Error -Message 'You have to provide a sas Token. You have to get it from Microsoft Colaborate'
    exit(1)
}

New-BCContainer -accept_eula `
    -accept_outdated `
    -containerName "BC17LATEST" `
    -artifactUrl (Get-BCArtifactUrl -storageAccount bcinsider -sasToken $sasToken -country dk) `
    -auth Windows `
    -updateHosts `
    -isolation hyperv

Write-Host 'Thats all Folks' -ForegroundColor Blue
