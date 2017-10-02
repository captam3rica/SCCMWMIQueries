/*################################################
\\          Another Query Disk Usage            //
################################################*/

select distinct

SMS_R_System.Name,
SMS_G_System_LOGICAL_DISK.FreeSpace,
SMS_G_System_LOGICAL_DISK.Size,
SMS_G_System_LOGICAL_DISK.DeviceID,
SMS_R_System.ResourceDomainORWorkgroup, SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Client,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses,
SMS_R_System.MACAddresses,
SMS_R_System.IsVirtualMachine,
SMS_R_System.SMSUniqueIdentifier,
SMS_R_System.ResourceID,
SMS_G_System_LOGICAL_DISK.ResourceID

from  SMS_R_System

join SMS_G_System_LOGICAL_DISK on SMS_G_System_LOGICAL_DISK.ResourceID = SMS_R_System.ResourceID

where

SMS_G_System_LOGICAL_DISK.DeviceID = "C:"

order by SMS_R_System.Name
