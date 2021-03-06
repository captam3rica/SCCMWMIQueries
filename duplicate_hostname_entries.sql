/* Duplicate host entries in SCCM*/

select

R.Name,
R.ResourceID,
R.ResourceType,
R.SMSUniqueIdentifier,
R.ResourceDomainORWorkgroup,
R.Client,
R.IPAddresses,
R.MACAddresses,
R.LastClientActivity

from

SMS_R_System as r   full join SMS_R_System as s1 on s1.ResourceId = r.ResourceId   full join SMS_R_System as s2 on s2.Name = s1.Name

where

s1.Name = s2.Name and s1.ResourceId != s2.ResourceId
