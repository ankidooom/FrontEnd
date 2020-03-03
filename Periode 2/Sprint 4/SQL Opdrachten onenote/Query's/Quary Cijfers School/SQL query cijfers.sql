CREATE TABLE Docent
	(
		DocentID int,
		DocentVoornaam varchar(200),
		DocentTussenvoegsel varchar(10),
		DocentAchternaam varchar(200),
		GeboorteDatum date,
		DocentVak varchar(100),
		PRIMARY KEY (DocentID),
	)

	CREATE TABLE Student
	(
		StudentID int,
		StudentVoorNaam varchar(200),
		StudentTussenVoegsel varchar(10),
		StudentAchternaam varchar(200),
		GeboorteDatum date,
		SLBID Char(5),
		PRIMARY KEY (StudentID),
	)

CREATE TABLE Vak
	(
		VakID char(7),
		VakNaam varchar(250),
		StudentID int FOREIGN KEY REFERENCES Student(StudentID),
		DocentID int FOREIGN KEY REFERENCES Docent(DocentID),
		PRIMARY KEY (VakID, DocentID),
	)
CREATE TABLE Cijfer
	(
		CijfersID char(5),
		VakID char(5),
		ToetsNaam varchar (200),
		ToetsCijfer decimal(10,1),
		StudentID int FOREIGN KEY REFERENCES Student(StudentID),
		DocentID int FOREIGN KEY REFERENCES Docent(DocentID),
	)


--Incullen Cijfers
--ToetsID, ToetsNaam, StudentID, DocentVakID, ToetsCijfer
INSERT INTO dbo.Vak (ToetsID, ToetsNaam, StudentID, DocentID, ToetsCijfer) VALUES ('3','Engels', 1, 1, 6.6);

--Invullen Student
--StudentID,StudentNaam,GeboorteDatum,SLBer,SLBID
INSERT INTO dbo.Student (StudentID,StudentVoorNaam,StudentTussenVoegsel,StudentAchternaam,GeboorteDatum,SLBID) VALUES ('1','Ankido','','Mirza','2002-04-25','1');

--Invullen Docent
--DocentID,DocentVoornaam,DocentTussenvoegsel,DocentAchternaam,GeboorteDatum,DocentVak
INSERT INTO dbo.Docent(DocentID,DocentVoornaam,DocentTussenvoegsel,DocentAchternaam,GeboorteDatum,DocentVak) VALUES ('1','Norshin','','Mirza','2000-11-10','Kerel');


-- Hier kan de student zijn gegevens zien 

-- hier kan je je gegevens zien dus je naam geboorte datum etc.
SELECT * FROM dbo.Student
WHERE StudentID='1';

-- hier kan je je resultaten zien dus je cijfers van welke vakken en welke docent.
SELECT * FROM dbo.Vak
WHERE StudentID='1';