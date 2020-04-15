SELECT
[AuthorId]
,COUNT(AuthorId) AS Episodes
,MIN(EpisodeDate) AS minDate
,MAX(EpisodeDate) AS maxDate

FROM  [dbo].[tblEpisode] 

GROUP  BY [AuthorId]

ORDER  BY COUNT(*) DESC
