select

SMS_R_System.Name,
SMS_R_System.ResourceDomainORWorkgroup, SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Build,
SMS_R_System.Client,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses,
SMS_R_System.MACAddresses,
SMS_R_System.SMSUniqueIdentifier,
SMS_R_System.IsVirtualMachine

from

SMS_R_System

where

SMS_R_System.Name like "MININT%"

order by SMS_R_System.Name

/*/// Extras ///*/

and SMS_R_System.Name not like "%SCCM%"
and SMS_R_System.Name not like "%MININT%"
and SMS_R_System.OperatingSystemNameandVersion not like "%Server%"
and SMS_R_System.IsVirtualMachine = 0
