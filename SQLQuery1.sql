use C_DB17_2018

create table PET_OWNER (
OwnerID			Int			Not Null,
OwnerLastName	Text		Not Null,
OwnerFirstName	Text		Not Null,
OWnerPhone		Text		Not Null,
OwnerEmail		NvarChar	Not Null,
Constraint		PetOwner_PK	Primary Key (OwnerID)
);

create table PET (
PetID			int			Not Null,
PetName			Text		Not Null,
PetType			Text		Not Null,
PetBreed		Text		Not Null,
PetDOB			Text		Null,
PetWeight		Numeric		Not Null,
OwnerID			Int			Not Null,
Constraint		Pet_PK		Primary Key (PetID),
Constraint		Pet_PetOwner_FK	Foreign Key (PET_OWNER)
References	PetOwner(OwnerID)
On Update no Action
);

INSERT INTO PET_OWNER 
(OwnerID, OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail)
VALUES 
(1, 'Downs', 'Marscha', 5555378765, 'Marsha.downs@somewhere.com'), 
(2,	'James', 'Richard', 5555377654,	'Richard.James@somewhere.som'),
(3,	'Frier', 'Liz',	5555376543,	'Liz.Frier@somewhere.com'), 
(4,	'Trent', 'Miles', NULL,	'Miles.Trent@somewhere.com');

SELECT * FROM PET_OWNER 
ALTER TABLE PET_OWNER ALTER COLUMN OwnerPhone INT;

INSERT INTO PET
SELECT PetID,	PetName,	PetType,	PetBreed,	PetDOB,	PetWeight,	OwnerId
FROM PET;
(PetID,	PetName,	PetType,	PetBreed,	PetDOB,	PetWeight,	OwnerId)
SELECT PetType, PetBreed
From PET;
Select PetType, PetBreed, PetDOB
From PET
Where PetType = 'Dog';
Select PetBreed
From PET;
Select OwnerLastName, OwnerFirstName, OwnerEmail
From PET_OWNER;
Select PetBreed, PetType, PetDOB
From PET
Where PetType = 'Dog' and PetBreed = 'Std. Poodle';
Select PetName, PetBreed, PetType, PetDOB
From PET
Where PetType not in ('Dog', 'Cat', 'Fish');

Select Distinct PetBreed
From PET;
Select PetName, PetBreed
From PET
Order By PetName;
SELECT DISTINCT COUNT (PetBreed)
From PET;
SELECT MIN(PetWeight) AS LightWeight, MAX(PetWeight) AS HeavyWeight, AVG(PetWeight) AS AverageWeight
FROM PET
WHERE PetType = 'Dog';
SELECT AVG(PetWeight)
FROM PET
GROUP BY PetBreed;

SELECT PetBreed, AVG(PetWeight) AS AverageWeight
FROM PET
GROUP BY PetBreed;


VALUES
(1,	'King',	'Dog',		'Std. Poodle',	20110221,	25.5,	1);
(2, 'Teddy', 'Cat', 'Cashmere',	01-02-2012,	10.5,	2),
(3,	'Fido',	'Dog', 'Std. Poodle',	17-07-2010, 28.5,	1), 
(4,	'AJ',	'Dog',	'Collie Mix',	05/05-2011,	20.0,	3),
(5,	'Cedro',	'Cat',	null,	06/06/2009,	9.5,	2), 
(6,	'Wooley',	'Cat',	null, null, 9.5, 2),
(7,	'Buster',	'Dog',	'Border Collie',	11/12/2008,	25.0,	4);
);

INSET INTO 