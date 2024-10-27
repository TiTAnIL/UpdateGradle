Explanation of the Script

This PowerShell script updates the system Path environment variable to replace an old Gradle installation path with a new one. It performs the following actions:

    Define Paths: Sets variables for the old Gradle path ($oldGradlePath) and the new Gradle path ($newGradlePath).
    Retrieve Current Path: Retrieves the current Path environment variable at the machine level.
    Remove Old Path: Checks if the old Gradle path exists in the Path. If found, it removes it; otherwise, it notifies that the path wasn't found.
    Add New Path: Checks if the new Gradle path is already in the Path. If not, it adds it.
    Update System Path: Updates the system Path variable to include the new Gradle path and confirms the update.

This script helps ensure that only the latest version of Gradle is referenced in the system Path, streamlining the setup for tools that rely on Gradle.
GitHub README Guide
PowerShell Script to Update Gradle Path

This PowerShell script replaces an outdated Gradle installation path with a new one in the system Path environment variable. This helps ensure the system uses the correct Gradle version, especially useful for environments requiring specific Gradle versions.
Features

    Checks for an existing old Gradle path in the system Path and removes it if present.
    Adds a new Gradle path to the system Path if not already added.
    Updates the Path environment variable at the machine level to reflect the changes.

Prerequisites

    Administrator Privileges: To update the system Path variable, you need to run PowerShell as an administrator.

Usage

    Define Old and New Paths: In the script, set $oldGradlePath and $newGradlePath variables to the old and new Gradle installation paths.

    powershell

    $oldGradlePath = "C:\Gradle\gradle-8.2.1-all\gradle-8.2.1\bin"
    $newGradlePath = "C:\Gradle\gradle-8.10\bin"

    Run the Script: Execute the script in PowerShell. Remember to run it as an administrator to modify the system environment variables.

    Output: The script will display messages indicating:
        If the old Gradle path was found and removed.
        If the new Gradle path was added.
        Confirmation that the system Path variable was updated successfully.

Example Output

When executed, the script provides messages for each step:

plaintext

Removed old Gradle path: C:\Gradle\gradle-8.2.1-all\gradle-8.2.1\bin
Added new Gradle path: C:\Gradle\gradle-8.10\bin
System Path variable updated successfully.

Important Notes

    Path Format: Ensure that both paths end with \bin, pointing directly to the Gradle executable directory.
    No Duplicate Paths: The script checks if paths already exist in the Path variable to avoid duplicates.
