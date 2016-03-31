$zip_archive = "$env:APPVEYOR_BUILD_FOLDER\UltimateGuitar.zip"

# ignore pdb/xml files as well as any Tabster DLLs
Get-ChildItem "$env:APPVEYOR_BUILD_FOLDER\bin\$env:APPVEYOR_CONFIGURATION" -Recurse -Exclude *.pdb, *.xml, Tabster.*.dll | %{7z a "$zip_archive" $_.FullName}