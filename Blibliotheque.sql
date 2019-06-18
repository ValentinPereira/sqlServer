----/*------------------------------------------------------------
----*        Script SQLSERVER 
----------------------------------------------------------------*/


----/*------------------------------------------------------------
------ Table: TypeOfBook
----------------------------------------------------------------*/
----CREATE TABLE TypeOfBook(
----	id             INT IDENTITY (1,1) NOT NULL ,
----	categoryBook   VARCHAR (50) NOT NULL  ,
----	CONSTRAINT TypeOfBook_PK PRIMARY KEY (id)
----);


----/*------------------------------------------------------------
------ Table: customer
----------------------------------------------------------------*/
----CREATE TABLE customer(
----	id              INT IDENTITY (1,1) NOT NULL ,
----	lastName        VARCHAR (50) NOT NULL ,
----	firstname       VARCHAR (50) NOT NULL ,
----	dateOfBirth     DATETIME NOT NULL ,
----	mail            VARCHAR (100) NOT NULL ,
----	id_TypeOfBook   INT  NOT NULL  ,
----	CONSTRAINT customer_PK PRIMARY KEY (id)

----	,CONSTRAINT customer_TypeOfBook_FK FOREIGN KEY (id_TypeOfBook) REFERENCES TypeOfBook(id)
----);


----/*------------------------------------------------------------
---- Table: author
------------------------------------------------------------*/
----CREATE TABLE author(
----	id          INT IDENTITY (1,1) NOT NULL ,
----	lastName    VARCHAR (50) NOT NULL ,
----	firstName   VARCHAR (50) NOT NULL  ,
----	CONSTRAINT author_PK PRIMARY KEY (id)
----);


----/*------------------------------------------------------------
---- Table: book
------------------------------------------------------------*/
----CREATE TABLE book(
----	id              INT IDENTITY (1,1) NOT NULL ,
----	title           VARCHAR (100) NOT NULL ,
----	id_TypeOfBook   INT  NOT NULL ,
----	id_author       INT  NOT NULL  ,
----	CONSTRAINT book_PK PRIMARY KEY (id)

----	,CONSTRAINT book_TypeOfBook_FK FOREIGN KEY (id_TypeOfBook) REFERENCES TypeOfBook(id)
----	,CONSTRAINT book_author0_FK FOREIGN KEY (id_author) REFERENCES author(id)
----);


----/*------------------------------------------------------------
---- Table: register
------------------------------------------------------------*/
----CREATE TABLE register(
----	id              INT IDENTITY (1,1) NOT NULL ,
----	borrowingDate   DATETIME NOT NULL ,
----	returnDate      DATETIME NOT NULL ,
----	id_book         INT  NOT NULL ,
----	id_customer     INT  NOT NULL  ,
----	CONSTRAINT register_PK PRIMARY KEY (id)

----	,CONSTRAINT register_book_FK FOREIGN KEY (id_book) REFERENCES book(id)
----	,CONSTRAINT register_customer0_FK FOREIGN KEY (id_customer) REFERENCES customer(id)
----);

----INSERT INTO [dbo].[TypeOfBook]([categoryBook])
----VALUES 
----	('Horreur'),
----	('science-fiction'),
----	('roman'),
----	('jeunesse')
----GO

----INSERT INTO [dbo].[author] ([lastName], [firstName])
----VALUES 
----	('Jules', 'Verne'),
----	('J.K', 'Rowling'),
----	('Howard', 'Phillips'),
----	('Albert', 'Camus'),
----	('J.R.R', 'Tolkien'),
----	('Agatha', 'Chritie'),
----	('Guillaume', 'Musso'),
----	('Moli�re', 'Lebon'),
----	('Jean-Claude', 'Van Damme'),
----	('Arthur', 'Dimbaud'),
----	('Antoine', 'de Saint-Exup�ry'),
----	('Stephen', 'King') 
----GO

----INSERT INTO [dbo].[book] ([title], [id_TypeOfBook], [id_author])
----VALUES 
----	('Harry Potter � l�cole des Sorciers', '2', '2'),
----	('Harry Potter et la chambre des secrets', '2', '2'),
----	('Harry Potter et le Prisonnier dAzkaban', '2', '2'),
----	('Harry Potter et la Coupe de Feu', '2', '2'),
----	('Harry Potter et la Coupe de Feu', '2', '2'),
----	('Harry Potter et le Prince de sang-m�l�', '2', '2'),
----	('Harry Potter et les Reliques de la Mort', '2', '2'),
----	('Harry Potter et les Reliques de la Mort tome 2', '2', '2'),
----	('Harry Potter lenfant maudit', '2', '2'),
----	('L�le myst�rieuse', '3', '1'),
----	('Un drame au Mexique', '3', '1'),
----	('Voyage au centre de la Terre', '3', '1'),
----	('Vingt mille lieues sous les mers', '3', '1'),
----	('Aventures de trois Russes et de trois Anglais dans lAfrique australe', '3', '1'),
----	('Le Tour du monde en quatre-vingts jours', '3', '1'),
----	('Frritt-Flacc', '3', '1'),
----	('Le Secret de Wilhelm Storitz', '3', '1'),
----	('LAppel de Cthulhu', '1', '3'),
----	('La Cit� sans nom', '1', '3'),
----	('La Peur qui r�de', '1', '3'),
----	('Le Monstre sur le seuil', '1', '3'),
----	('Celui qui hantait les t�n�bres', '1', '3'),
----	('Dans lab�me du temps', '1', '3'),
----	('La Couleur tomb�e du ciel','1','3'),
----	('La Maison de la sorci�re', '1', '3'),
----	('Letranger', '3', '4'),
----	('Le Premier Homme', '3', '4'),
----	('Le Mythe de Sisyphe', '3', '4'),
----	('La Chute', '3', '4'),
----	('L�t� ', '3', '4'),
----	('Lettres � un ami allemand', '3', '4'),
----	('La Peste', '3', '4'),
----	('Noces', '3', '4'),
----	('Le Seigneur des anneaux tome 1', '2', '5'),
----	('Le Seigneur des anneaux tome 2', '2', '5'),
----	('Le Seigneur des anneaux tome 3', '2', '5'),
----	('Le Hobbit', '2', '5'),
----	(' Le Silmarillion', '2', '5'),
----	('Du conte de f�es', '2', '5'),
----	('Roverandom', '2', '5'),
----	('La Chute dArthur', '2', '5'),
----	('LHomme au complet marron', '3', '6'),
----	('Les Quatre', '3', '6'),
----	('Le Train bleu', '3', '6'),
----	('Le Secret de Chimneys', '3', '6'),
----	('Le Couteau sur la nuque', '3', '6'),
----	('La Mort dans les nuages', '3', '6'),
----	('Cartes sur table', '3', '6'),
----	('Dix petits n�gres', '3', '6'),
----	('La vie secr�te des �crivains', '4', '7'),
----	('La Fille de Brooklyn', '4', '7'),
----	('La Jeune Fille et la nuit', '4', '7'),
----	('Demain', '4', '7'),
----	('La Fille de papier', '4', '7'),
----	('Parce que je taime', '4', '7'),
----	('Skidamarink', '4', '7'),
----	('Blanche fesse et les 7 nains', '4', '7'),
----	('Le D�pit amoureux', '3', '8'),
----	('Les F�cheux', '3', '8'),
----	('Le Mariage forc�', '3', '8'),
----	('Le Tartuffe ou lHypocrite', '3', '8'),
----	('Le Misanthrope', '3', '8'),
----	('Amphitryon', '3', '8'),
----	('Psych�', '3', '8'),
----	('Les Fourberies de Scapin', '3', '8'),
----	('Banni�res de mai', '3', '10'),
----	('Com�die de la soif', '3', '10'),
----	('Larme', '3', '10'),
----	('M�moire', '3', '10'),
----	('Honte', '3', '10'),
----	('Jeune m�nage', '3', '10'),
----	('Le loup criait', '3', '10'),
----	('Angoisse', '3', '10'),
----	('Le petit prince', '4', '11')
----GO

----INSERT INTO [dbo].[customer] ([lastName], [firstname], [dateOfBirth],[mail],[id_TypeOfBook])
----VALUES 
----	('GARCIA', 'Babacar', '19971013 00:00:00', 'garcia.babacar@gmail.com', 1),
----	('MARTY', 'Balthazar', '19941203 00:00:00', 'Balthazar@gmail.com', 1),
----	('FAURE', 'Bazile', '20081111 00:00:00', 'Bazile@gmail.com', 3),
----	('MARTIN', 'Baudoin', '20111111 00:00:00', 'Baudoin@gmail.com', 3),
----	('VIDAL', 'Bob', '19800730 00:00:00', 'Bob@gmail.com', 4),
----	('PUJOL', 'Boubaker', '19980401 00:00:00', 'Boubaker@gmail.com', 3),
----	('MARTINEZ', 'Brandon', '20121221 00:00:00', 'Brandon@gmail.com', 2),
----	('LOPEZ', 'Zahr-Eddine', '20000101 00:00:00', 'Zahr-Eddine@gmail.com', 1),
----	('PEREZ', 'Zaid', '19450314 00:00:00', 'Zaid@gmail.com', 3),
----	('PONS', 'Zakarya', '20010110 00:00:00', 'Zakarya@gmail.com', 4),
----	('DURAND', 'Nabile', '19751212 00:00:00', 'Nabile@gmail.com', 1),
----	('ROQUES', 'Kassandra', '19950915 00:00:00', 'Kassandra@gmail.com', 4),
----	('FABRE', 'Katharina', '19740314 00:00:00', 'Katharina@gmail.com', 3),
----	('SANCHEZ', 'Galeane', '20081012 00:00:00', 'Galeane@gmail.com', 1),
----	('BONNET', 'Cl�mentine', '19800730 00:00:00', 'Cl�mentine@gmail.com', 2),
----	('DUPUY', 'Corentine', '19800730 00:00:00', 'Corentine@gmail.com', 1),
----	('RIVIERE', 'Cyrine', '19800730 00:00:00', 'Cyrine@gmail.com', 4),
----	('FERNANDEZ', 'Colette', '20060712 00:00:00', 'Colette@gmail.com', 3),
----	('BLANC', 'Quentin', '19910605 00:00:00', 'Quentin@gmail.com', 1),
----	('RODRIGUEZ', 'Quiesie-Vanessa', '19990506 00:00:00', 'Quiesie-Vanessa@gmail.com', 4),
----	('GONZALEZ', 'Quincy', '19751212 00:00:00', 'Quincy@gmail.com', 3),
----	('REY', 'Elif', '20081012 00:00:00', 'Elif@gmail.com', 2),
----	('BOUSQUET', 'Eleana', '20121221 00:00:00', 'Eleana@gmail.com', 2),
----	('DEJEAN', 'Edouardine', '19860817 00:00:00', 'Edouardine@gmail.com',3 ),
----	('LOPEZ', 'JORDAN', '20040401 00:00:00', 'darkKiller@hotmail.fr', 4)
----GO

----INSERT INTO [dbo].[register] ([borrowingDate], [returnDate], [id_book], [id_customer])
----VALUES
----	('20190101 00:00:00',NULL, 1, 2),
----	('20190202 00:00:00',NULL, 9, 3),
----	('20190303 00:00:00',NULL, 1, 4),
----	('20190404 00:00:00',NULL, 2, 5),
----	('20190505 00:00:00',NULL, 3, 6),
----	('20190606 00:00:00',NULL, 25, 7),
----	('20190707 00:00:00',NULL, 30, 8),
----	('20190808 00:00:00',NULL, 6, 9),
----	('20190909 00:00:00',NULL, 8, 10),
----	('20191010 00:00:00',NULL, 14, 11),
----	('20191111 00:00:00',NULL, 40, 12),
----	('20191212 00:00:00',NULL, 10, 13),
----	('20191113 00:00:00',NULL, 50, 14),
----	('20191014 00:00:00',NULL, 69, 15),
----	('20190915 00:00:00','20190501 00:00:00', 55, 16),
----	('20190816 00:00:00','20190502 00:00:00', 33, 17),
----	('20190717 00:00:00','20190503 00:00:00', 25, 18),
----	('20190618 00:00:00','20190504 00:00:00', 37, 19),
----	('20190519 00:00:00','20190505 00:00:00', 48, 20),
----	('20180420 00:00:00','20190506 00:00:00', 58, 21),
----	('20180321 00:00:00','20190507 00:00:00', 60, 22),
----	('20180222 00:00:00','20190508 00:00:00', 67, 23),
----	('20180124 00:00:00','20190509 00:00:00', 66, 24),
----	('20180223 00:00:00','20190510 00:00:00', 28, 25),
----	('20180325 00:00:00','20190511 00:00:00', 30, 26),
----	('20180426 00:00:00','20190512 00:00:00', 21, 20),
----	('20180527 00:00:00','20190513 00:00:00', 12, 17),
----	('20180628 00:00:00','20190514 00:00:00', 11, 5),
----	('20170728 00:00:00','20190515 00:00:00', 10, 6),
----	('20170829 00:00:00','20190516 00:00:00', 18, 19),
----	('20170901 00:00:00','20190517 00:00:00', 19, 9),
----	('20171002 00:00:00','20190518 00:00:00', 20, 25),
----	('20171103 00:00:00','20190519 00:00:00', 44, 2),
----	('20171204 00:00:00','20190520 00:00:00', 43, 2),
----	('20171105 00:00:00','20190521 00:00:00', 48, 3),
----	('20171006 00:00:00','20190522 00:00:00', 46, 6),
----	('20180907 00:00:00','20190523 00:00:00', 69, 8),
----	('20180808 00:00:00','20190524 00:00:00', 26, 11),
----	('20180709 00:00:00','20190516 00:00:00', 67, 21),
----	('20180601 00:00:00','20190526 00:00:00', 28, 14)
----GO

--SELECT 
--	   [dbo].[register].[borrowingDate],
--	   [dbo].[register].[returnDate],
--	   [dbo].[customer].[lastName],
--	   [dbo].[customer].[firstname],
--	   [dbo].[book].[title]
--FROM 
--	[dbo].[register]
--INNER JOIN 
--	[dbo].[book]
--	ON [dbo].[register].[id_book] = [dbo].[book].[id]
--INNER JOIN 
--	[dbo].[customer]
--	ON [dbo].[register].[id_customer] = [dbo].[customer].[id]
--GO

--SELECT 
--	[dbo].[book].[title],
--    [dbo].[TypeOfBook].[categoryBook],
--    [dbo].[author].[lastName],
--    [dbo].[author].[firstName],
--	CASE 
--		WHEN 
--			[dbo].[register].[returnDate] < GETDATE() 
--			OR [dbo].[register].[id] IS NULL 
--		THEN 
--			'oui'
--		ELSE 
--			'non'
--	END AS [dispo]
--FROM
--	[dbo].[book]
--INNER JOIN
--	[dbo].[TypeOfBook]
--	ON [dbo].[book].[id_TypeOfBook] = [dbo].[TypeOfBook].[id]
--INNER JOIN 
--	[dbo].[author]
--	ON [dbo].[book].[id_author] = [dbo].[author].[id]
--LEFT JOIN 
--	[dbo].[register]
--	ON [dbo].[register].[id_book] = [dbo].[book].[id] 
--ORDER BY [dispo] ASC
--GO

--SELECT 
--	[dbo].[TypeOfBook].[categoryBook],
--	COUNT([dbo].[TypeOfBook].[categoryBook]) AS [Nbr de livre]
--FROM 
--	[dbo].[TypeOfBook]
--INNER JOIN
--	[dbo].[book]
--	ON [dbo].[TypeOfBook].[id] = [dbo].[book].[id_TypeOfBook]
--GROUP BY
--	[dbo].[TypeOfBook].[categoryBook]
--GO