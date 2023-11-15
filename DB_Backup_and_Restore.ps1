# BACKUP

# $securePassword = ConvertTo-SecureString "07021996Fathya" -AsPlainText -Force
# $credential = New-Object System.Management.Automation.PSCredential("sa", $securePassword)

# Backup-SqlDatabase -ServerInstance "LAPTOP-DIP7EBPT" -Database "VIMS_DB" -BackupAction Database -Credential $credential


# RESTORE

$User = "sa"
$Password = "07021996Fathya"
$TargetServer = "LAPTOP-DIP7EBPT"
$TargetDbName = "VIMS_DB"
$BakName = "VIMS_DB.bak"
$DbDataName = "D:\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VIMS_DB.mdf"
$DbLogName = "D:\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\VIMS_DB_log.ldf"

sqlcmd -U $User -P $Password -S $TargetServer -Q "RESTORE DATABASE $TargetDbName FROM DISK = N'$BakName' WITH FILE = 1, MOVE N'VIMS_DB' TO N'$DbDataName', MOVE N'VIMS_DB_log' TO N'$DbLogName', REPLACE"