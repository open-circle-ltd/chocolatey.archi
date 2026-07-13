$ErrorActionPreference = 'Stop';
$PackageParameters = Get-PackageParameters

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$urlPackage = 'https://github.com/archimatetool/archi.io/releases/download/5.9.0/Archi-Win64-Setup-5.9.0.exe'
$checksumPackage = '10e26de702b5fce315a8a3b88009035dd6d79a716d07ddf5ab5ce7fd4dfc92772537d1a34951ef0574d51e22bf56aa3f1de74e2de59c0a1c3c3eb41c94cf69da'


$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = 'SHA512'
    silentArgs     = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
    ValidExitCodes = @(0, 1000, 1101)
}

Install-ChocolateyPackage @packageArgs
