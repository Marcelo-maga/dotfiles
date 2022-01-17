# set PowerShell to UTF-8

Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons

Set-poshPrompt Paradox

$omp_config = Join-Path $PSScriptRoot ".\marcelo.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Set-Alias ll ls
Set-Alias g git
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name vim -Value nvim

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History


Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
