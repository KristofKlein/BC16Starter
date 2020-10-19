param ([String]$nav = "2018",
    [int]$cu = 0)

& (Join-Path -Path $PSScriptRoot -ChildPath 'Install-BCContainerHelper.ps1')

Write-Host '###### Create Container with Artifacts ######' -ForegroundColor Blue

New-BCContainer -accept_eula `
    -accept_outdated `
    -containerName 'NAVXCUY' `
    -artifactUrl (Get-NavArtifactUrl -nav $nav -cu $cu) `
    -auth Windows `
    -updateHosts `
    -isolation hyperv `
    -includeCSide `
    -doNotExportObjectsToText

Write-Host 'Thats all Folks' -ForegroundColor Blue
