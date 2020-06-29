
USE DoctorWho

SELECT
	year(e.EpisodeDate) as 'Episode year',
	en.EnemyName,
	COUNT(*) AS 'Number of episodes'

FROM
	tblEpisode as e
	INNER JOIN tblDoctor as d on e.DoctorId = d.DoctorId
	INNER JOIN tblEpisodeEnemy as ee ON e.EpisodeId = ee.EpisodeId
	INNER JOIN tblEnemy as en on en.EnemyId = ee.EnemyId
WHERE
	year(d.BirthDate) < 1970
GROUP BY
	year(e.EpisodeDate),
	en.EnemyName
HAVING
	COUNT(*) > 1
ORDER BY
	'Number of episodes' DESC