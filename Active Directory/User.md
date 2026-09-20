**Get AD user properties**
```powershell
# IMPORT AD MODULE
Import-Module ActiveDirectory

# PROMPT USER FOR INPUT
$userInput = Read-Host "Enter SAMAccountName, UPN, Email, or Display Name"

# SEARCH AD USER BY MULTIPLE IDENTIFIERS (INCLUDING DISPLAY NAME)
$user = Get-ADUser -Filter {
    SamAccountName -eq $userInput -or
    UserPrincipalName -eq $userInput -or
    Mail -eq $userInput -or
    DisplayName -eq $userInput
} -Properties DisplayName, SamAccountName, UserPrincipalName, Mail, Status, DistinguishedName, whenCreated, whenChanged

# DISPLAY THE TARGET PROPERTIES
$user | Format-List DisplayName, SamAccountName, UserPrincipalName, Mail, Status, DistinguishedName, whenCreated, whenChanged
```

**Get AD user with all properties**
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
