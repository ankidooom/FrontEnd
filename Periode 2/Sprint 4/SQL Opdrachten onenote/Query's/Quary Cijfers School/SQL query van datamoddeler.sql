-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2020-02-26 09:57:58 CET
--   site:      SQL Server 2012
--   type:      SQL Server 2012



CREATE TABLE Docenten 
    (
     Code CHAR (5) NOT NULL , 
     Voornaam VARCHAR (10) NOT NULL , 
     tussenvoegsel VARCHAR (10) , 
     Achternaam NVARCHAR (25) NOT NULL , 
     Salaris NUMERIC (28) 
    )
GO

ALTER TABLE Docenten ADD CONSTRAINT Docenten_PK PRIMARY KEY CLUSTERED (Code)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Relatie_Docent_Vak 
    (
     Docenten_Code CHAR (5) NOT NULL , 
     Vakken_Code CHAR NOT NULL 
    )
GO

ALTER TABLE Relatie_Docent_Vak ADD CONSTRAINT Relatie_Docent_Vak_PK PRIMARY KEY CLUSTERED (Docenten_Code, Vakken_Code)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Resultaat 
    (
     Cijfer NUMERIC (3,1) NOT NULL , 
     Toetsdatum DATETIME NOT NULL , 
     Student_Studentnummer CHAR (7) NOT NULL , 
     Toetsen_Code CHAR (5) NOT NULL , 
     Docenten_Code CHAR (5) NOT NULL 
    )
GO

ALTER TABLE Resultaat ADD CONSTRAINT Resultaat_PK PRIMARY KEY CLUSTERED (Student_Studentnummer, Toetsen_Code)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Student 
    (
     Studentnummer CHAR (7) NOT NULL , 
     Voornaam NVARCHAR (25) NOT NULL , 
     Tussenvoegsels VARCHAR , 
     Achternaam NVARCHAR NOT NULL , 
     Klas CHAR (5) , 
     Crebo CHAR (5) NOT NULL , 
     Geboortedatum DATE NOT NULL , 
     Docenten_Code CHAR (5) NOT NULL 
    )
GO

ALTER TABLE Student ADD CONSTRAINT Student_PK PRIMARY KEY CLUSTERED (Studentnummer)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Toetsen 
    (
     Code CHAR (5) NOT NULL , 
     Toetsnaam NVARCHAR (50) NOT NULL , 
     Vakken_Code CHAR NOT NULL 
    )
GO

ALTER TABLE Toetsen ADD CONSTRAINT Toetsen_PK PRIMARY KEY CLUSTERED (Code)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Vakken 
    (
     Code CHAR NOT NULL , 
     Vakken NVARCHAR (25) NOT NULL 
    )
GO

ALTER TABLE Vakken ADD CONSTRAINT Vakken_PK PRIMARY KEY CLUSTERED (Code)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE Relatie_Docent_Vak 
    ADD CONSTRAINT Relatie_Docent_Vak_Docenten_FK FOREIGN KEY 
    ( 
     Docenten_Code
    ) 
    REFERENCES Docenten 
    ( 
     Code 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Relatie_Docent_Vak 
    ADD CONSTRAINT Relatie_Docent_Vak_Vakken_FK FOREIGN KEY 
    ( 
     Vakken_Code
    ) 
    REFERENCES Vakken 
    ( 
     Code 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Resultaat 
    ADD CONSTRAINT Resultaat_Docenten_FK FOREIGN KEY 
    ( 
     Docenten_Code
    ) 
    REFERENCES Docenten 
    ( 
     Code 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Resultaat 
    ADD CONSTRAINT Resultaat_Student_FK FOREIGN KEY 
    ( 
     Student_Studentnummer
    ) 
    REFERENCES Student 
    ( 
     Studentnummer 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Resultaat 
    ADD CONSTRAINT Resultaat_Toetsen_FK FOREIGN KEY 
    ( 
     Toetsen_Code
    ) 
    REFERENCES Toetsen 
    ( 
     Code 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Student 
    ADD CONSTRAINT Student_Docenten_FK FOREIGN KEY 
    ( 
     Docenten_Code
    ) 
    REFERENCES Docenten 
    ( 
     Code 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Toetsen 
    ADD CONSTRAINT Toetsen_Vakken_FK FOREIGN KEY 
    ( 
     Vakken_Code
    ) 
    REFERENCES Vakken 
    ( 
     Code 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
