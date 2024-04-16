# Define the path of the source file in the Documents folder
$sourceFilePath = "$env:USERPROFILE\Documents\example.txt"

# Define the path of the destination folder (Desktop)
$destinationFolder = [Environment]::GetFolderPath("Desktop")

# Combine the destination folder path with the filename to get the full destination path
$destinationFilePath = Join-Path -Path $destinationFolder -ChildPath (Split-Path $sourceFilePath -Leaf)

# Copy the file from the source path to the destination path
Copy-Item -Path $sourceFilePath -Destination $destinationFilePath -Force

Write-Output "File copied to desktop: $destinationFilePath"
