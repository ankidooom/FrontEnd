USE DoctorWho

select
a.AuthorId,
a.AuthorName,
b.Title,
b.episodetype,
c.EnemyId,
d.EnemyName

from
tblAuthor as a
inner join tblEpisode as b on a.AuthorId = b.AuthorId
inner join tblEpisodeEnemy as c on c.EpisodeId = b.EpisodeId
inner join tblEnemy as d on d.EnemyId = c.EnemyId


where d.EnemyName = 'Daleks'