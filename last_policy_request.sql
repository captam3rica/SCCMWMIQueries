/*################################################
\\             Last Policy Request              //
################################################*/

select distinct

SMS_R_System.Name,
SMS_R_System.ResourceDomainORWorkgroup, SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Client,
SMS_R_System.ClientType,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses,
SMS_R_System.SMSUniqueIdentifier,
SMS_R_System.ResourceId,
SMS_G_System_CH_ClientSummary.LastPolicyRequest

from SMS_R_System

inner join SMS_G_System_CH_ClientSummary on SMS_G_System_CH_ClientSummary.ResourceID = SMS_R_System.ResourceId

order by SMS_G_System_CH_ClientSummary.LastPolicyRequest
