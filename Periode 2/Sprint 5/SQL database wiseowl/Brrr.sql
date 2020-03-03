
use [WorldEvents]

SELECT	
	tblEvent.EventName AS EventName,
	tblEvent.EventDate AS EventDate,
	tblCountry.CountryName AS CountryName,	
	tblContinent.ContinentName AS ContinentName
	
FROM     
	[dbo].[tblContinent]
	inner join
	[dbo].[tblCountry] on [dbo].[tblCountry].ContinentID = [dbo].[tblContinent].ContinentID 
	inner join
	[dbo].[tblEvent] on [dbo].[tblEvent].CountryID = [dbo].[tblCountry].CountryID



WHERE
	(tblCountry.CountryName like 'Russia') 
	or
	(tblContinent.ContinentName like 'Antarctic')

