use [WorldEvents]

SELECT	
	tblEvent.EventName AS EventName,
	tblEvent.EventDate AS EventDate,
	tblCategory.CategoryName AS CategoryName	
	
	
FROM     
	[dbo].[tblCategory]
	full outer join
	[dbo].[tblEvent] on [dbo].[tblEvent].CategoryID = [dbo].[tblCategory].CategoryID

WHERE
	[dbo].[tblEvent].[EventName] IS NULL


