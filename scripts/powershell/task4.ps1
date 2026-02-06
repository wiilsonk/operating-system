Get-ChildItem -Filter *.txt | ForEach-Object {
    Rename-Item $_.FullName -NewName ("OLD_" + $_.Name)
}
