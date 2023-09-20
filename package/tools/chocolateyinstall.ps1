$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://www.archimatetool.com/downloads/archi5.php?/5.1.0/Archi-Win64-Setup-5.1.0.exe'
$checksumPackage = '734af683b1e699eb8be9ef333ac0dd7e3fdc58dbe602798045024bbd4ea08a185c8aa6fb58012ab0900fb72822801c2f6b17518fdf29cc1724ab1133ee54b5a8'
$urlPackage64 = 'https://www.archimatetool.com/downloads/archi5.php?/5.1.0/Archi-Win64-Setup-5.1.0.exe'
$checksumPackage64 = '734af683b1e699eb8be9ef333ac0dd7e3fdc58dbe602798045024bbd4ea08a185c8aa6fb58012ab0900fb72822801c2f6b17518fdf29cc1724ab1133ee54b5a8'


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
