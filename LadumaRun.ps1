
$resultDir="C:\automation\laduma\cypress\results\"
$ReportJson="C:\automation\laduma\mochawesome.json"
$Html = "mochawesome-report\mochawesome.html"
$merCmd = "npx mochawesome-merge $resultDir*.json > mochawesome.json"

Get-ChildItem -Path $resultDir -Include *.* -File -Recurse | foreach { $_.Delete()}
Remove-Item -Path $ReportJson
cmd.exe /c "npm test"
Get-Content -Encoding UTF8 $ReportJson | Out-File -Encoding Unicode $ReportJson
cmd.exe /c  $merCmd
cmd.exe /c "npx marge mochawesome.json"
start-process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -ArgumentList $Html
