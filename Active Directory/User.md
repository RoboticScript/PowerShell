Find a User by Display Name
```powershell
Get-ADUser -Filter "DisplayName -eq 'Ravindra Sharma'"
```

Find a User by Partial Name (Wildcard):
```powershell
Get-ADUser -Filter "Name -like 'Ravindra*'"
```
