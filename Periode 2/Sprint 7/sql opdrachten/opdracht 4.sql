SELECT [CountryName]
      ,CASE
      WHEN [ContinentID] in ('1','3') then 'Eurasia'
      When [ContinentID] in ('5','6') then 'Americas'
      When [ContinentID] in ('2','4') then 'Somewhere hot'
      When [ContinentID] = 7 then 'Somewhere cold'
      ELSE 'Somewhere else' END as 'CountryLocation'
  FROM [WorldEvents].[dbo].[tblCountry]
  order by CountryLocation desc