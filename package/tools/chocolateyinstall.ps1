$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.archimatetool.com/downloads/archi/5.6/Archi-Win64-Setup-5.6.0.exe'
$checksumPackage = '3f59c81ac2b8ba62ce31254b94baf36020813dde91aa02ada4335febcdffc6d83d1b1f34e30a2f838ab419b40533809a993c91630be03535e31d7d0dec7d55e2'
$urlPackage64 = 'https://www.archimatetool.com/downloads/archi/5.6/Archi-Win64-Setup-5.6.0.exe'
$checksumPackage64 = '3f59c81ac2b8ba62ce31254b94baf36020813dde91aa02ada4335febcdffc6d83d1b1f34e30a2f838ab419b40533809a993c91630be03535e31d7d0dec7d55e2'


$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = 'SHA512'
    url64          = $urlPackage64
    checksum64     = $checksumPackage64
    checksumType64 = 'SHA512'
    silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
    ValidExitCodes = @(0, 1000, 1101)
}

Install-ChocolateyPackage @packageArgs
