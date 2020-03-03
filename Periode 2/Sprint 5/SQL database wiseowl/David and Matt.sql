SELECT [DoctorName], [Title]
FROM [dbo].[tblDoctor],[dbo].[tblEpisode]
WHERE EpisodeDate BETWEEN '2010-01-01' AND '2010-12-31';