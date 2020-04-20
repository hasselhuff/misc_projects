$LexCams = Invoke-WebRequest "https://trafficvid.lexingtonky.gov/publicmap/"
$LexCamContent = [string]($LexCams.ParsedHtml.getElementById("Head1").InnerHTML)
$LexCamContent -match "(?<=(camMarker = ))((.|\n)* ](?=;))" | Out-Null
$CamInfo = $matches[0] | ConvertFrom-Json
$CamInfo = $CamInfo | Select-Object * -ExcludeProperty status

$CamInfo = $CamInfo | ForEach-Object {
    ForEach ($url in $_.still) {
    $CheckURL = Invoke-WebRequest $url
    if ($CheckURL.RawContentLength -eq "28786") {
    $CamInfo | Where-Object { $_.still -eq $url } | Select-Object *,@{Name="status";Expression={(Write-Output Offline)}},@{Name="color";Expression={(Write-Output red)}}
    } else {
    $CamInfo | Where-Object { $_.still -eq $url } | Select-Object *,@{Name="status";Expression={(Write-Output Online)}},@{Name="color";Expression={(Write-Output green)}}
    }}}

$CamInfo | Export-CSV -Path "C:\temp\Lex-Cam-Info.csv" -NoTypeInformation

do {

mode con: cols=150 lines=30

$LexCamInfo = Import-CSV 'C:\temp\Lex-Cam-Info.csv'
$LexCamInfoSorted = $LexCamInfo | Sort-Object description

Write-Host "##############################".PadLeft(88) -NoNewline ; Write-Host "****Legend****".PadLeft(62)
Write-Host "Lexington Traffic Cams".PadLeft(84) -NoNewline ; Write-Host "Green".PadLeft(57) -ForegroundColor Green -NoNewLine ; Write-Host " - Online"
Write-Host "##############################".PadLeft(88) -NoNewline ; Write-Host "Red".PadLeft(51) -ForegroundColor Red -NoNewLine ; Write-Host " - Offline"
Write-Host "`n"

$CamCounter = 1
$Indexcounter = 0
do {
Write-Host $("{0:D2}" -f $CamCounter + " - " + $LexCamInfoSorted.description[$Indexcounter].PadRight(35)) -Foreground $LexCamInfoSorted.color[$Indexcounter] -NoNewline
Write-Host $("{0:D2}" -f $($CamCounter + 22) + " - " + $LexCamInfoSorted.description[$Indexcounter + 22].PadRight(24)) -Foreground $LexCamInfoSorted.color[$Indexcounter + 22] -NoNewline
Write-Host $("{0:D2}" -f $($CamCounter + 43) + " - " + $LexCamInfoSorted.description[$Indexcounter + 43].PadRight(35)) -Foreground $LexCamInfoSorted.color[$Indexcounter + 43] -NoNewline
Write-Host $("{0:D2}" -f $($CamCounter + 64) + " - " + $LexCamInfoSorted.description[$Indexcounter + 64]) -Foreground $LexCamInfoSorted.color[$Indexcounter + 64]
    if ($IndexCounter -eq 20) {
    Write-Host 22 - $LexCamInfoSorted.description[21] -ForegroundColor $LexCamInfoSorted.color[21]
    Write-Host "`n"
    }
$CamCounter++
$IndexCounter++
} until ($IndexCounter -eq 21)

[int]$CamChoice = Read-Host -Prompt "Please Enter Option Number"
$CamChoice2 = "{0:D2}" -f $CamChoice
$CamUrl = Write-Output """$($LexCamInfoSorted[$CamChoice2 - 1].hls)"""
$CamTitle = Write-Output """$($LexCamInfoSorted[$CamChoice2 - 1].description)"""
$ArgumentList = "-i $CamUrl -window_title $CamTitle -alwaysontop -fflags nobuffer"
Start-Process ffplay.exe -ArgumentList $ArgumentList
} while ($true)