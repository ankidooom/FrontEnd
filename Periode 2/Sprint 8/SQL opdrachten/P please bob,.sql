SELECT
	upper(left(c.CategoryName,1)) AS 'Category initial',
	COUNT(*) as 'Number of events',
	FORMAT(
		AVG(
			CAST(
				LEN(e.EventName) AS float)
			)
		,'0.00'
	) AS 'Average event name length'

FROM
	tblCategory AS c
	INNER JOIN tblEvent AS e
		ON c.CategoryID = e.CategoryID
GROUP BY
	upper(left(c.CategoryName,1))
ORDER BY
	'Category initial'