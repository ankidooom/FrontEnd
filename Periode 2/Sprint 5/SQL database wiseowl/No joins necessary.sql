SELECT [AuthorName], [Title], [EpisodeType]
FROM [dbo].[tblAuthor], [dbo].[tblEpisode]
WHERE EpisodeType LIKE '%special%'