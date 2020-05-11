SELECT 
	[CategoryName]
	,SUM([dbo].[tblEvent].[CategoryID]) AS Hoeveelheid

FROM 
	[dbo].[tblCategory]
	INNER JOIN tblEvent ON [dbo].[tblEvent].CategoryID = [dbo].[tblCategory].CategoryID

GROUP BY 
	[CategoryName], dbo.tblEvent.CategoryID
