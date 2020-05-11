SELECT 
	COUNT(EventID) AS "Number of events"
	,MAX(EventDate) AS "Last Date"
	,MIN(EventDate) AS "First DATE"

FROM [dbo].[tblEvent]