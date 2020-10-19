# BC Starter Script
This Repo is made to run with Visual Studio Code or pure Powershell

Please be aware it is an example and you have to adjust Images and things like that to fit your solution...

You most likely have to run VSC as Administrator...

There is a task ready under Terminal -> Run Task that will install you a v16 BC latest Version

Since we are using Docker make sure you have everything in place:
- HyperV
- Windows Container
- Docker for Desktop in Windows Mode

## BC16Latest.ps1
Task to run: Create **BC** v16 - Latest!

You will be asked for you AD User password

It will remove navcontainerhelper and instead setup bcContainerHelper.
- if this step fails you may need to uninstall the module yourself manually
- it can also be that you need to restart VS Code ...

## BC17Latest.ps1
Task to run: Create **BC** v17 - Latest!

You will be asked for you AD User password

It will remove navcontainerhelper and instead setup bcContainerHelper.
- if this step fails you may need to uninstall the module yourself manually
- it can also be that you need to restart VS Code ...

## BC18Insider.ps1
Task to run: Create **BC** v18 - **Insider**!

You will be asked for you AD User password
You have to provide our sasToken for the insider Program

It will remove navcontainerhelper and instead setup bcContainerHelper.

## NAVXLatest.ps1
Task to run: Create **NAV** on artifacts!

You will be asked for you AD User password

It will remove navcontainerhelper and instead setup bcContainerHelper.
- if this step fails you may need to uninstall the module yourself manually
- it can also be that you need to restart VS Code ...

# That's all Folks!