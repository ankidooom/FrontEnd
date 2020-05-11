/* Alle landen  */
SELECT 
	[dbo].[tblContinent].ContinentName
	,[dbo].[tblCountry].CountryName
	,COUNT([dbo].[tblEvent].EventID) AS "Number of events"
FROM
	[dbo].[tblContinent]
	INNER JOIN [dbo].[tblCountry] ON [dbo].[tblCountry].[ContinentID] = [dbo].[tblContinent].[ContinentID]
	INNER JOIN [dbo].[tblEvent] ON [dbo].[tblCountry].[CountryID] = [dbo].[tblEvent].[CountryID]
GROUP BY
	 [dbo].[tblContinent].ContinentName
	,[dbo].[tblCountry].CountryName

/* Europe alleen */
SELECT 
	[dbo].[tblContinent].ContinentName
	,[dbo].[tblCountry].CountryName
	,COUNT([dbo].[tblEvent].EventID) AS "Number of events"
FROM
	[dbo].[tblContinent]
	INNER JOIN [dbo].[tblCountry] ON [dbo].[tblCountry].[ContinentID] = [dbo].[tblContinent].[ContinentID]
	INNER JOIN [dbo].[tblEvent] ON [dbo].[tblCountry].[CountryID] = [dbo].[tblEvent].[CountryID]
WHERE [dbo].[tblContinent].[ContinentName] = 'Europe'
GROUP BY
	 [dbo].[tblContinent].ContinentName
	,[dbo].[tblCountry].CountryName

/* Landen met 5 of meer events */
SELECT 
	[dbo].[tblContinent].ContinentName
	,[dbo].[tblCountry].CountryName
	,COUNT([dbo].[tblEvent].EventID) AS "Number of events"
FROM
	[dbo].[tblContinent]
	INNER JOIN [dbo].[tblCountry] ON [dbo].[tblCountry].[ContinentID] = [dbo].[tblContinent].[ContinentID]
	INNER JOIN [dbo].[tblEvent] ON [dbo].[tblCountry].[CountryID] = [dbo].[tblEvent].[CountryID]
GROUP BY
	[dbo].[tblCountry].[CountryName]
	,[dbo].[tblContinent].ContinentName
HAVING COUNT([dbo].[tblEvent].EventID) > 5