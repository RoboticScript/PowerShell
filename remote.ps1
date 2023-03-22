https://learn.microsoft.com/en-us/powershell/scripting/learn/remoting/running-remote-commands?view=powershell-7.3


# Windows PowerShell Remoting

# Start an Interactive Session

# Enter-PSSession Server01
# Exit-PSSession

New-PSSession -Computer SERVER_NAME -Credential .\Administrator


# Run a Remote Command
# Invoke-Command -ComputerName Server01, Server02 -ScriptBlock {Get-UICulture}


# Run a Script
# To run a local script on remote computers, use the FilePath parameter of Invoke-Command.
# Invoke-Command -ComputerName Server01, Server02 -FilePath c:\Scripts\DiskCollect.ps1

HOW TO STOP A REMOTE COMMAND
To interrupt a command, press CTRL+C.
