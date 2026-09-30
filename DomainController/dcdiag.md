[dcdiag](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/dcdiag)

[dcdiag](https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/cc731968%28v=ws.11%29)

# DCDiag Health Check

Run the following command to test Active Directory health:

```powershell
dcdiag /v
```

Run only DNS tests:

```powershell
dcdiag /test:DNS
```

Save output to a file:

```powershell
dcdiag /v > C:\Temp\dcdiag-report.txt
```
