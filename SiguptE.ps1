# Indirme Modülü

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome


# 7 Zip Modülü

set-alias sz "$env:ProgramFiles\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;

# Signal Açıksa Kapat

$Process        = "Signal*"
$SignalProc = Get-Process -Name $Process

if($SignalProc){

    while($SignalProc){
        ForEach ($Proc in Get-Process -Name $Process){$Proc.CloseMainWindow()}
        sleep 5
        If (Get-Process -Name $Process){
            Write-Host "Signal acik kalmis kapatiliyor...."
            $wshell = new-object -com wscript.shell
            $wshell.AppActivate("Signal")
            $wshell.Sendkeys("%(Y)")
        }
        $SignalProc = Get-Process -Name $Process
    }
}


# Geçerliyse Kopyala Deneme 1

$Folder = 'E:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination "E:\portapps\signal-portable\" -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}

# Geçerliyse Kopyala Deneme 2

$Folder = 'E:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination "E:\signal-portable\" -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}