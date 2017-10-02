/* Query for All Microsoft Office 2010, 2013, & 2016*/

select distinct

SMS_R_System.Name,
SMS_R_System.LastLogonUserName,
SMS_G_System_ADD_REMOVE_PROGRAMS.DisplayName,
SMS_R_System.ClientType,
SMS_G_System_CH_ClientSummary.LastPolicyRequest

from SMS_R_System

inner join SMS_G_System_ADD_REMOVE_PROGRAMS on
SMS_G_System_ADD_REMOVE_PROGRAMS.ResourceId =
SMS_R_System.ResourceId

inner join SMS_G_System_CH_ClientSummary on SMS_G_System_CH_ClientSummary.ResourceID = SMS_R_System.ResourceId

where (SMS_G_System_ADD_REMOVE_PROGRAMS.DisplayName like "%Microsoft Office Professional Plus 2010%" or SMS_G_System_ADD_REMOVE_PROGRAMS.DisplayName like "%Microsoft Office Professional Plus 2013%" or SMS_G_System_ADD_REMOVE_PROGRAMS.DisplayName like "%Microsoft Office Professional Plus 2016%")

order by SMS_G_System_ADD_REMOVE_PROGRAMS.DisplayName


/*////////////////////////////////////////
//////          2010 Only           //////
////////////////////////////////////////*/


select distinct

SMS_R_System.Name,
SMS_R_System.LastLogonUserName,
SMS_G_System_ADD_REMOVE_PROGRAMS.DisplayName,
SMS_R_System.ClientType,
SMS_G_System_CH_ClientSummary.LastPolicyRequest

from SMS_R_System

inner join SMS_G_System_ADD_REMOVE_PROGRAMS on
SMS_G_System_ADD_REMOVE_PROGRAMS.ResourceId =
SMS_R_System.ResourceId

inner join SMS_G_System_CH_ClientSummary on SMS_G_System_CH_ClientSummary.ResourceID = SMS_R_System.ResourceId

where SMS_G_System_ADD_REMOVE_PROGRAMS.DisplayName like "%Microsoft Office Professional Plus 2010%"

order by SMS_R_System.Name
