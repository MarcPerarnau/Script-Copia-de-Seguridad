# Backup Script in CMD

## Description
This script in **CMD (Windows Batch)** automates the backup of files and folders from a source path to a destination path. It uses `robocopy` to perform the copy and generates a log file with process details.

## Features
- 📂 Copies files and subfolders while preserving attributes.
- 📌 Uses `robocopy` for incremental backups.
- 📝 Generates logs with date and time.
- 🔄 Compatible with Windows Task Scheduler.

## Requirements
- **Operating System**: Windows 7, 8, 10, 11, or Server.
- **Administrator privileges** (optional if copying protected files).

## Usage
1. **Edit the paths**: Modify the `SOURCE` and `DESTINATION` variables within the script.
2. **Run the script**: Double-click or execute it from CMD with administrator privileges.
3. **Automate** *(Optional)*: Use **Windows Task Scheduler** to schedule periodic executions.

## Log Structure
The script generates a log file in the `logs/backup_YYYYMMDD_HHMMSS.log` path, containing:
- Date and time of the backup.
- Copied, modified, or failed files.
- Process duration.

## Usage Example
```cmd
borratemp.bat
```

## Author
Created by [Your Name or Company] - [Year].

## License
This project is licensed under [MIT](https://github.com/MarcPerarnau/Script-Copia-de-Seguridad/LICENSE).

