# Windows Batch Scripts for System Maintenance

This repository contains a collection of Windows batch scripts for various system maintenance and management tasks. These scripts use modern PowerShell cmdlets for better compatibility and reliability.

## Scripts Overview

### 1. Check-Disk-Space.bat
Displays disk space usage for all drives in GB.
- **Usage**: Run as administrator for full access.
- **Command**: `powershell -command "Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, @{Name='Size(GB)';Expression={[math]::Round($_.Size/1GB,2)}}, @{Name='FreeSpace(GB)';Expression={[math]::Round($_.FreeSpace/1GB,2)}} | Format-Table -AutoSize"`

### 2. Update-System-Time.bat
Synchronizes system time with Windows Time service.
- **Usage**: Requires administrator privileges.
- **Command**: `w32tm /resync`

### 3. List-Running-Processes.bat
Lists all running processes with CPU and memory usage.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-Process | Select-Object ProcessName, Id, CPU, Memory"`

### 4. Create-System-Restore-Point.bat
Creates a system restore point.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "Checkpoint-Computer -Description 'Manual Restore Point'"`

### 5. Defragment-Hard-Drive.bat
Defragments the C: drive.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "Optimize-Volume -DriveLetter C -Defrag"`

### 6. Clean-Recycle-Bin.bat
Empties the Recycle Bin.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Clear-RecycleBin -Force"`

### 7. Check-Windows-Updates.bat
Checks for available Windows updates.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-WindowsUpdateLog"`

### 8. Backup-Registry.bat
Exports the HKLM registry hive to a file.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "reg export HKLM registry_backup_$(Get-Date -Format yyyyMMdd).reg"`

### 9. Shutdown-Computer.bat
Shuts down the computer after 60 seconds.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Stop-Computer -Force -Delay 60"`

### 10. Display-Event-Logs.bat
Displays the last 10 system events.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-EventLog -LogName System -Newest 10"`

### 11. Check-System-Uptime.bat
Shows the system boot time.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "(Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime"`

### 12. Disable-Enable-Firewall.bat
Disables the Windows Firewall.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False"`

### 13. List-Installed-Programs.bat
Lists all installed programs.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-WmiObject -Class Win32_Product | Select-Object Name"`

### 14. Create-New-User-Account.bat
Creates a new local user account.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "New-LocalUser -Name 'NewUser' -Password (ConvertTo-SecureString 'Password123' -AsPlainText -Force) -FullName 'New User' -Description 'Created by script'"`

### 15. Monitor-Network-Traffic.bat
Displays active network connections.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State"`

### 16. Clear-RAM-Cache.bat
Clears RAM cache using Windows system idle tasks.
- **Usage**: No special privileges required.
- **Command**: `rundll32.exe advapi32.dll,ProcessIdleTasks`

## Requirements
- Windows 10 or later
- PowerShell 5.1 or higher
- Administrator privileges for scripts that modify system settings

## Usage
1. Clone or download the repository.
2. Run the desired .bat file as administrator if required.
3. Review the output and take appropriate actions.

## Notes
- Some scripts require administrator privileges to execute successfully.
- These scripts are for educational and maintenance purposes. Use with caution.
- Always backup important data before running system modification scripts.

## Contributing
Feel free to suggest improvements or add new scripts!

## License
MIT License
