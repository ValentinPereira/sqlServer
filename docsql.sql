-- Cr�ation de la base
CREATE DATABASE [webDevelopmente]
GO

-- On se positione dans la base nouvellement cr��
USE [webDevelopment]
GO

-- Cr�ation de la table ide
CREATE TABLE [dbo].[idee](
  [id] SMALLINT IDENTITY (1,1) NOT NULL PRIMARY KEY,
  [name] VARCHAR (50) NOT NULL,
	[version] VARCHAR (50) NOT NULL,
	[date] DATE NOT NULL,
)
GO

-- Insertion des donn�es dans la table ide
INSERT INTO [dbo].[idee] ([name], [version], [date]) VALUES 
  ('Eclipse', '3.3', '2007-06-01'),
  ('Eclipse', '3.5', '2009-06-01'),
  ('Eclipse', '3.6', '2010-06-01'),
  ('Eclipse', '3.7', '2011-06-01'),
  ('Eclipse', '4.3', '2013-06-13'),
  ('NetBeans', '7', '2011-04-01'),
  ('NetBeans', '8.2', '2016-10-03');
