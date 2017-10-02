select distinct

SMS_R_System.Name,
SMS_R_System.ResourceDomainORWorkgroup, SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Build,
SMS_R_System.Client,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses,
SMS_R_System.MACAddresses,
SMS_R_System.IsVirtualMachine,
SMS_R_System.SMSUniqueIdentifier

from  SMS_R_System

order by SMS_R_System.Name