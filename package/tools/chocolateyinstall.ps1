$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.archimatetool.com/downloads/index.php?/downloads/archi/4.10.0/Archi-Win64-Setup-4.10.0.exe'
$checksumPackage = '2dd1c81d94cd51ca5ba33d004cf9ac54586b1e77905f29c8c59d7914b09507a56cc69cdd329b5fafe5ea68cca510415bded13e7356d1ec83f727b29d8cc40ef8'
$urlPackage64 = 'https://www.archimatetool.com/downloads/index.php?/downloads/archi/4.10.0/Archi-Win64-Setup-4.10.0.exe'
$checksumPackage64 = '2dd1c81d94cd51ca5ba33d004cf9ac54586b1e77905f29c8c59d7914b09507a56cc69cdd329b5fafe5ea68cca510415bded13e7356d1ec83f727b29d8cc40ef8'


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
