SELECT 
	au.AuthorName Writer, 
	Doc.DoctorName Doctor, 
	COUNT(Ep.EpisodeId) 'Num Of Episodes' 

FROM tblAuthor AS Au
    INNER JOIN tblEpisode AS Ep
    ON Au.AuthorId = Ep.AuthorId
    INNER JOIN tblDoctor Doc
    ON Doc.DoctorId = Ep.DoctorId

GROUP BY Au.AuthorName, Doc.DoctorName

HAVING COUNT(Ep.EpisodeId) > 5

ORDER BY [Num Of Episodes] Desc