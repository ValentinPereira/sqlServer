ALTER TABLE [dbo].[languages]
ALTER COLUMN [language] NVARCHAR(50)

ALTER TABLE [dbo].[languages]
ALTER COLUMN [version] NVARCHAR(50)
--Partie 4
INSERT INTO [dbo].[languages] ([language], [version])
VALUES
('JavaScript', 'version 5'),
('PHP', 'version 5.2'),
('PHP', 'version 5.4'),
('HTML', 'version 5.1'),
('JavaScript', 'version 6'),
('JavaScript', 'version 7'),
('JavaScript', 'version 8'),
('PHP', 'version 7');

--Partie 4 EXO 2

--Clique droit sur la table modifier les 200 lignes du haut et insérer les données demandées.