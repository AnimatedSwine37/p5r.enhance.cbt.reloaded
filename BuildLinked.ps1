# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/p5r.enhance.cbt.reloaded/*" -Force -Recurse
dotnet publish "./p5r.enhance.cbt.reloaded.csproj" -c Release -o "$env:RELOADEDIIMODS/p5r.enhance.cbt.reloaded" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location