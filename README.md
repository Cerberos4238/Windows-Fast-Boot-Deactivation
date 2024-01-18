Just a simple script to deactivate the fast boot on a windows computer.
Launch it and everything is automated.

This script checks if a DWORD reg key named "FastBoot" is in HKLM:\SOFTWARE\Policies\Microsoft\Windows\System.

If the file doesn't exist, it creates it and set the value on 0.
