/*###################################################################
\\   Another Query for Disk Usage just from Logical Disk Table     //
###################################################################*/

select distinct

SMS_G_System_LOGICAL_DISK.SystemName,
SMS_G_System_LOGICAL_DISK.ResourceID,
SMS_G_System_LOGICAL_DISK.FreeSpace,
SMS_G_System_LOGICAL_DISK.Size

from  SMS_G_System_LOGICAL_DISK

where SMS_G_System_LOGICAL_DISK.DiskID = "C:"
