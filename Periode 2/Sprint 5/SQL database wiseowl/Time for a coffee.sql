use [DoctorWho]

select
[dbo].[tblAuthor].[AuthorName] as AuthorName,
[dbo].[tblEpisode].[Title] as Title,
[dbo].[tblDoctor].[DoctorName] as DoctorName,
[dbo].[tblEnemy].[EnemyName] as EnemyName,
LEN(AuthorName + DoctorName + EnemyName + Title) as Total

from
[dbo].[tblEpisode],
[dbo].[tblAuthor],
[dbo].[tblDoctor],
[dbo].[tblEnemy]

where 
LEN(AuthorName + DoctorName + EnemyName + Title) < 40
