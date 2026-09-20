# https://learn.microsoft.com/en-us/entra/identity/hybrid/connect/how-to-connect-sync-feature-scheduler
# https://activedirectorypro.com/force-sync-azure-ad-connect-using-powershell/

Import-Module ADSync
Get-ADSyncScheduler
Start-ADSyncSyncCycle -PolicyType Delta
Start-ADSyncSyncCycle -PolicyType Initial
