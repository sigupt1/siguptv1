function DisplayMenu {
Clear-Host
Write-Host @"

FLASH S�R�C�N�Z�N HARF� NED�R?
�rne�in D,E,F,G bunlardan birisi olabilir.
"@

$MENU = Read-Host "Harfi Girer Misin?"
Switch ($MENU)
{
D {
#S�R�C� OKUMA KISMI
$Harf = Read-Host "Emin misin? Tekrar girer?"
# Indirme Mod�l�

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Mod�l�

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;

# Signal A��ksa Kapat

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


# Ge�erliyse Kopyala Deneme 1

$Folder = '$Harf:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}

# Ge�erliyse Kopyala Deneme 2

$Folder = '$Harf:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatal� �nerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatal� �nerse ve Duzgun Yerdeyse

$Folder2 = '$Harf:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}
}

# Hatal� �nerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatal� �nerse ve D�zg�n Yerde De�ilse

$Folder2 = '$Harf:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}

E {
#S�R�C� OKUMA KISMI
$Harf = Read-Host "Tekrar yazar m�s�n?"
# Indirme Mod�l�

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Mod�l�

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;

# Signal A��ksa Kapat

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


# Ge�erliyse Kopyala Deneme 1

$Folder = '$Harf:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}

# Ge�erliyse Kopyala Deneme 2

$Folder = '$Harf:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatal� �nerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatal� �nerse ve Duzgun Yerdeyse

$Folder2 = '$Harf:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}
}

# Hatal� �nerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatal� �nerse ve D�zg�n Yerde De�ilse

$Folder2 = '$Harf:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}
F {
#S�R�C� OKUMA KISMI
$Harf = Read-Host "Tekrar yazar m�s�n?"
# Indirme Mod�l�

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Mod�l�

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;

# Signal A��ksa Kapat

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


# Ge�erliyse Kopyala Deneme 1

$Folder = '$Harf:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}

# Ge�erliyse Kopyala Deneme 2

$Folder = '$Harf:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatal� �nerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatal� �nerse ve Duzgun Yerdeyse

$Folder2 = '$Harf:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}
}

# Hatal� �nerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatal� �nerse ve D�zg�n Yerde De�ilse

$Folder2 = '$Harf:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}
G {
#S�R�C� OKUMA KISMI
$Harf = Read-Host "Tekrar yazar m�s�n?"
# Indirme Mod�l�

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Mod�l�

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;

# Signal A��ksa Kapat

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


# Ge�erliyse Kopyala Deneme 1

$Folder = '$Harf:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}

# Ge�erliyse Kopyala Deneme 2

$Folder = '$Harf:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatal� �nerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatal� �nerse ve Duzgun Yerdeyse

$Folder2 = '$Harf:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmam�s diger yol deneniyor..."
}
}

# Hatal� �nerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatal� �nerse ve D�zg�n Yerde De�ilse

$Folder2 = '$Harf:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination '$Harf:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}
default {
#YANLI� YAZILIRSA
Write-Host "Ge�erli s�r�c� belirtmedin"
Start-Sleep -Seconds 2
DisplayMenu
}
}
}
DisplayMenu