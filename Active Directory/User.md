Find a User by Display Name
```powershell
Get-ADUser -Filter "DisplayName -eq 'Ravindra Sharma'"
```

Find a User by Partial Name (Wildcard):
```powershell
Get-ADUser -Filter "Name -like 'Ravindra*'"
```

Get AD user with all properties
```powershell
# IMPORT AD MODULE
Import-Module ActiveDirectory

# PROMPT USER FOR INPUT
$userInput = Read-Host "Enter SAMAccountName, UPN, or Email"

# SEARCH AD USER BY MULTIPLE IDENTIFIERS
$user = Get-ADUser -Filter {
    SamAccountName -eq $userInput -or
    UserPrincipalName -eq $userInput -or
    Mail -eq $userInput
} -Properties *

# DISPLAY ALL PROPERTIES
$user | Format-List *
```
