use [WorldEvents]

select
[dbo].[tblCountry].CountryName as CountryName,
[dbo].[tblEvent].[EventName] as EventName

from
[dbo].[tblCountry] 
full outer join [dbo].[tblEvent] on [dbo].[tblCountry].CountryID = [dbo].[tblEvent].CountryID

where
[dbo].[tblEvent].EventName is NULL
