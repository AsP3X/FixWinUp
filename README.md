# Corespace Script Tool

This script tool is designed to perform system maintenance tasks using the DISM and SFC utilities in Windows. It's part of the Corespace Open Source License Agreement (COSLA) and is intended for use on systems that require health checks and repairs.

## License Header

###################################################################
COSLA- Corespace Open Source License Agreement
February 02, 2024 - #202402021013
By Corespace
###################################################################

This software is distributed under the Corespace Open Source License Agreement (COSLA). Please read the license terms carefully before using the software.

## Usage

The script offers a simple menu to perform various maintenance tasks:

1. Run the `DISM /Online /Cleanup-Image /RestoreHealth` command.
2. Run the `sfc /scannow` command.
3. (DISABLED) Run both DISM and SFC commands in sequence.
4. Close the script.

To use the script, simply run it from a command prompt with administrative privileges. Select the desired option from the menu by typing the corresponding number.

### Menu Options

- **Option 1**: This runs the Deployment Image Servicing and Management (DISM) tool to repair Windows images, recovery environments, and Windows Setup.
- **Option 2**: This runs the System File Checker (SFC) to scan for and restore corrupted Windows system files.
- **Option 3**: This option is currently disabled.
- **Option 4**: Closes the script.

### Example

To run the DISM tool:

DISM /Online /Cleanup-Image /RestoreHealth


To scan the system for integrity violations:

sfc /scannow


## Contributing

Contributions are welcome! If you have improvements or bug fixes, please submit a pull request or open an issue.

## License

This project is licensed under the Corespace Open Source License Agreement (COSLA) - see the LICENSE.md file for details.