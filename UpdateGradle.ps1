# Define the old and new Gradle paths

$oldGradlePath = "C:\Gradle\gradle-8.2.1-all\gradle-8.2.1\bin"

$newGradlePath = "C:\Gradle\gradle-8.10\bin"



# Get the current system Path variable

$currentPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")



# Remove the old Gradle path if it exists

if ($currentPath -like "*$oldGradlePath*") {

    $updatedPath = $currentPath -replace [regex]::Escape($oldGradlePath + ";"), ""

    Write-Host "Removed old Gradle path: $oldGradlePath"

} else {

    $updatedPath = $currentPath

    Write-Host "Old Gradle path not found in the system Path."

}



# Add the new Gradle path

if ($updatedPath -notlike "*$newGradlePath*") {

    $updatedPath = "$updatedPath;$newGradlePath"

    Write-Host "Added new Gradle path: $newGradlePath"

} else {

    Write-Host "New Gradle path already exists in the system Path."

}



# Update the system Path variable

[System.Environment]::SetEnvironmentVariable("Path", $updatedPath, "Machine")



Write-Host "System Path variable updated successfully."
