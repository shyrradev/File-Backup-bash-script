# File-Backup-Bash-Script

## Overview
This Bash script automates the process of backing up files to a specified directory. It ensures a seamless and efficient way to copy large amounts of data, making it especially useful for backing up log files or any other important files. This script can be used to back up files to both cloud storage and local directories.

## Features
- Automatically appends a timestamp to backup filenames to prevent overwriting.
- Ensures the backup directory exists by creating it if necessary.
- Provides clear success and error messages to indicate the status of the backup process.

## Usage
To use the script, provide the path to the file you want to back up as an argument.

```bash
./backup.sh /path/to/file
