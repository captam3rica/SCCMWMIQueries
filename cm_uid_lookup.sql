/* Search for CM UID via search box */  

select

R.Name,
R.ResourceID,
R.ResourceType,
R.ResourceDomainORWorkgroup,
R.Client,
R.IPAddresses,
R.MACAddresses,
R.SMSUniqueIdentifier

from

SMS_R_System

where

SMS_R_System.SMSUniqueIdentifier = ##PRM:SMS_R_System.SMSUniqueIdentifier##
