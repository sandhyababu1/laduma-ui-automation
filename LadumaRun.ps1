Get-ChildItem -Path C:\automation\laduma\cypress\results -Include *.* -File -Recurse | foreach { $_.Delete()}
Remove-Item C:\automation\laduma\mochawesome.json
cmd.exe /c "npx cypress run"
cmd.exe /c "npx mochawesome-merge "cypress/results/*.json" > mochawesome.json"
$FILENAME = "C:\automation\laduma\mochawesome.json"
Get-Content -Encoding UTF8 $FILENAME | Out-File -Encoding Unicode $FILENAME
cmd.exe /c "rd /s /q npx marge mochawesome.json"


