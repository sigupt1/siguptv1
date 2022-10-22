function DisplayMenu {
Write-Host @"

FLASH SÜRÜCÜNÜZÜN HARFİ NEDİR?
Örneğin D,E,F,G bunlardan birisi olabilir.
"@

$MENU = Read-Host "Sürücünün harfini girer misin?"
Switch ($MENU)
{
D {
#SÜRÜCÜ OKUMA KISMI
$Harf = Read-Host "Tekrar yazar mısın?"
# Indirme Modülü

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Modülü

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;


# Geçerliyse Kopyala Deneme 1

$Folder = 'D:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination 'D:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}

# Geçerliyse Kopyala Deneme 2

$Folder = 'D:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination 'D:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatalı İnerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatalı İnerse ve Duzgun Yerdeyse

$Folder2 = 'D:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'D:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}
}

# Hatalı İnerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatalı İnerse ve Düzgün Yerde Değilse

$Folder2 = 'D:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'D:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}

E {
#SÜRÜCÜ OKUMA KISMI
$Harf = Read-Host "Tekrar yazar mısın?"
# Indirme Modülü

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Modülü

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;


# Geçerliyse Kopyala Deneme 1

$Folder = 'E:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination 'E:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}

# Geçerliyse Kopyala Deneme 2

$Folder = 'E:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination 'E:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatalı İnerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatalı İnerse ve Duzgun Yerdeyse

$Folder2 = 'E:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'E:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}
}

# Hatalı İnerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatalı İnerse ve Düzgün Yerde Değilse

$Folder2 = 'E:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'E:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}

F {
#SÜRÜCÜ OKUMA KISMI
$Harf = Read-Host "Tekrar yazar mısın?"
# Indirme Modülü

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Modülü

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;


# Geçerliyse Kopyala Deneme 1

$Folder = 'F:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination 'F:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}

# Geçerliyse Kopyala Deneme 2

$Folder = 'F:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination 'F:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatalı İnerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatalı İnerse ve Duzgun Yerdeyse

$Folder2 = 'F:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'F:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}
}

# Hatalı İnerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatalı İnerse ve Düzgün Yerde Değilse

$Folder2 = 'F:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'F:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}
G {
#SÜRÜCÜ OKUMA KISMI
$Harf = Read-Host "Tekrar yazar mısın?"
# Indirme Modülü

Invoke-WebRequest -Uri "https://www.techspot.com/downloads/downloadnow/7363/?evp=2016a86d5adf164f7552e14ba072e907&file=9876" -OutFile "$env:TEMP\Omega.7z" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

# 7 Zip Entegrasyonu

Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.msi" -OutFile "$env:TEMP\7z1900-x64.exe" -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome

msiexec /i "$env:TEMP\7z1900-x64.exe" /qb;


# 7 Zip Modülü

set-alias sz "c:\Program Files\7-Zip\7z.exe"
sz x -o"$env:TEMP\Omega" "$env:TEMP\Omega.7z" -r ;
sz x -o"$env:TEMP\app" $env:TEMP\Omega\'$PLUGINSDIR'\app-64.7z -r ;


# Geçerliyse Kopyala Deneme 1

$Folder = 'G:\portapps\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app\" -Destination 'G:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}

# Geçerliyse Kopyala Deneme 2

$Folder = 'G:\signal-portable\app'
"[$Folder] konumu denetleniyor"
if (Test-Path -Path $Folder) {
    Copy-Item "$env:TEMP\app" -Destination 'G:\signal-portable\' -Recurse -force
} else {
    "Program bu sekilde yuklenmemis..."
}

# Hatalı İnerse Kopyala 1

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatiflere gidiliyor"
} else {
    
# Hatalı İnerse ve Duzgun Yerdeyse

$Folder2 = 'G:\portapps\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'G:\portapps\signal-portable\' -Recurse -force
} else {
    "Duzgun kurulmamıs diger yol deneniyor..."
}
}

# Hatalı İnerse Kopyala 2

$acayip = "$PLUGINSDIR"
$Folder = '$env:TEMP\Omega\$acayip\'
"[$Folder] alternatif konumu denetleniyor"
if (Test-Path -Path $Folder) {
    "Duzgun inmemis alternatif yukleme denemesi yapiliyor..."
} else {
    
# Hatalı İnerse ve Düzgün Yerde Değilse

$Folder2 = 'G:\signal-portable\app'
"[$Folder2] konumu denetleniyor"
if (Test-Path -Path $Folder2) {
    Copy-Item "$env:TEMP\Omega\" -Destination 'G:\signal-portable\' -Recurse -force
} else {
    "Duzgun inmemis 2. alternatif yukleme denemesi yapiliyor..."
}
}
Start-Sleep -Seconds 2
DisplayMenu
}

default {
#YANLIŞ YAZILIRSA
Write-Host "Geçerli sürücü belirtmedin"
Start-Sleep -Seconds 2
DisplayMenu
}
}
}
DisplayMenu
