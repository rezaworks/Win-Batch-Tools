# 🖥️ Windows Batch Scripts for System Maintenance

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/rezaworks/Win-Batch-Tools)](https://github.com/rezaworks/Win-Batch-Tools/issues)
[![GitHub stars](https://img.shields.io/github/stars/rezaworks/Win-Batch-Tools)](https://github.com/rezaworks/Win-Batch-Tools/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/rezaworks/Win-Batch-Tools)](https://github.com/rezaworks/Win-Batch-Tools/network)

A comprehensive collection of Windows batch scripts for system maintenance and management tasks. These scripts leverage modern PowerShell cmdlets for enhanced compatibility and reliability.

## 📋 Table of Contents

- [Features](#features)
- [Scripts Overview](#scripts-overview)
- [Requirements](#requirements)
- [Usage](#usage)
- [Notes](#notes)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Security](#security)
- [License](#license)

## ✨ Features

- **Modern PowerShell Integration**: All scripts use current Windows commands and PowerShell cmdlets
- **User-Friendly Design**: Colorful interfaces with titles and clear instructions
- **Comprehensive Coverage**: 16 scripts covering disk management, system optimization, security, and more
- **GitHub Ready**: Includes README, LICENSE, and .gitignore for easy sharing

## 🚀 Scripts Overview

### 1. 💾 Check-Disk-Space.bat
Displays disk space usage for all drives in GB.
- **Usage**: Run as administrator for full access.
- **Command**: `powershell -command "Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, @{Name='Size(GB)';Expression={[math]::Round($_.Size/1GB,2)}}, @{Name='FreeSpace(GB)';Expression={[math]::Round($_.FreeSpace/1GB,2)}} | Format-Table -AutoSize"`

### 2. ⏰ Update-System-Time.bat
Synchronizes system time with Windows Time service.
- **Usage**: Requires administrator privileges.
- **Command**: `w32tm /resync` (with error handling)

### 3. 🔍 List-Running-Processes.bat
Lists all running processes with CPU and memory usage.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-Process | Select-Object ProcessName, Id, CPU, Memory"`

### 4. 🔄 Create-System-Restore-Point.bat
Creates a system restore point.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "Checkpoint-Computer -Description 'Manual Restore Point'"`

### 5. 🧹 Defragment-Hard-Drive.bat
Defragments the C: drive.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "Optimize-Volume -DriveLetter C -Defrag"`

### 6. 🗑️ Clean-Recycle-Bin.bat
Empties the Recycle Bin.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Clear-RecycleBin -Force"`

### 7. 🔄 Check-Windows-Updates.bat
Checks for available Windows updates.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "try { Get-HotFix | Select-Object HotFixID, Description, InstalledOn | Format-Table -AutoSize } catch { Write-Host 'Error checking updates.' }"`

### 8. 💾 Backup-Registry.bat
Exports the HKLM registry hive to a file.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "reg export HKLM registry_backup_$(Get-Date -Format yyyyMMdd).reg"`

### 9. 🔌 Shutdown-Computer.bat
Shuts down the computer after 60 seconds.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Stop-Computer -Force -Delay 60"`

### 10. 📊 Display-Event-Logs.bat
Displays the last 10 system events.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-EventLog -LogName System -Newest 10"`

### 11. ⏱️ Check-System-Uptime.bat
Shows the system boot time.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "(Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime"`

### 12. 🛡️ Disable-Enable-Firewall.bat
Disables the Windows Firewall.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False"`

### 13. 📦 List-Installed-Programs.bat
Lists all installed programs.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-WmiObject -Class Win32_Product | Select-Object Name"`

### 14. 👤 Create-New-User-Account.bat
Creates a new local user account.
- **Usage**: Requires administrator privileges.
- **Command**: `powershell -command "New-LocalUser -Name 'NewUser' -Password (ConvertTo-SecureString 'Password123' -AsPlainText -Force) -FullName 'New User' -Description 'Created by script'"`

### 15. 🌐 Monitor-Network-Traffic.bat
Displays active network connections.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State"`

### 16. 🧠 Clear-RAM-Cache.bat
Clears RAM cache using garbage collection and system idle tasks.
- **Usage**: No special privileges required.
- **Command**: `powershell -command "try { Clear-Host; [System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers(); rundll32.exe advapi32.dll,ProcessIdleTasks; Write-Host 'RAM cache cleared.' } catch { Write-Host 'Error clearing RAM cache.' }"`

## 🛠️ Requirements

- **Operating System**: Windows 10 or later
- **PowerShell**: Version 5.1 or higher
- **Privileges**: Administrator privileges for scripts that modify system settings

## 📖 Usage

1. **Clone or Download**: Get the repository files
2. **Run Scripts**: Execute the desired .bat file
3. **Admin Rights**: Use "Run as administrator" for system-modifying scripts
4. **Review Output**: Check the results and take appropriate actions

## ⚠️ Notes

- **Admin Privileges**: Some scripts require administrator privileges to execute successfully
- **Backup Data**: Always backup important data before running system modification scripts
- **Educational Purpose**: These scripts are for educational and maintenance purposes
- **Use with Caution**: Test scripts in a safe environment first

## 🤝 Contributing

Feel free to suggest improvements or add new scripts! Fork the repository and submit a pull request.

For detailed guidelines, see our [Contributing Guide](CONTRIBUTING.md).

## 📜 Code of Conduct

We are committed to fostering an open and welcoming community. Please read our [Code of Conduct](CODE_OF_CONDUCT.md) to understand the standards we uphold.

## 🔒 Security

We take security seriously. If you discover a vulnerability, please report it according to our [Security Policy](SECURITY.md).

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**⭐ Star this repository if you find it useful!**
