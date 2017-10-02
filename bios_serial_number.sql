#################################################
\\ Another Query for Fac Staff with BIOSSerial //
#################################################

select distinct

SMS_R_System.Name,
SMS_G_System_COMPUTER_SYSTEM.Model,
SMS_G_System_COMPUTER_SYSTEM.Manufacturer,
SMS_G_System_PC_BIOS.SerialNumber,
SMS_R_System.ResourceDomainORWorkgroup,
SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Client,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses,
SMS_R_System.MACAddresses,
SMS_R_System.SMSUniqueIdentifier

from

SMS_R_System

inner join SMS_G_System_PC_BIOS on SMS_G_System_PC_BIOS.ResourceID = SMS_R_System.ResourceId

inner join SMS_G_System_COMPUTER_SYSTEM on SMS_G_System_COMPUTER_SYSTEM.ResourceId = SMS_R_System.ResourceId

order by SMS_R_System.Name
