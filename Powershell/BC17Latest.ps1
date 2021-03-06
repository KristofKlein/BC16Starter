& (Join-Path -Path $PSScriptRoot -ChildPath 'Install-BCContainerHelper.ps1')

Write-Host '###### Create Container with Artifacts ######' -ForegroundColor Blue

New-BCContainer -accept_eula `
    -accept_outdated `
    -containerName "BC17LATEST" `
    -artifactUrl (Get-BCArtifactUrl -type OnPrem -version 17 -country dk) `
    -auth Windows `
    -updateHosts `
    -isolation hyperv

Write-Host 'Thats all Folks' -ForegroundColor Blue
