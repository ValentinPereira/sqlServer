--Exercice 2 partie 5

--SELECT [version]
--FROM [dbo].[languages]
--WHERE [language] ='PHP';

--Exercice 1 partie 5
    --SELECT [language], [version]
    ----FROM  [dbo].[languages];

--Exercice 3 partie 5
--SELECT [version]
--FROM [dbo].[languages]
--WHERE [language] ='PHP' OR [language] = 'JavaScript'

--Exercice 4 partie 5
--SELECT [id], [version], [language]
--FROM [dbo].[languages]
--WHERE [id] = 3 OR [id] = 5 OR [id] = 7;  ( AUTRE SOLUTION) WHERE [id] IN (3, 5, 7)

--Exercice 5 partie 5
--SELECT TOP 2*
--FROM [dbo].[languages]
--WHERE [language] = 'JavaScript';

--Exercice 6 partie 5
--SELECT*
--FROM [dbo].[languages]
--WHERE [language] NOT LIKE '%PHP%'; AUTRE : != ou <> ou not devant where pour not like

--Exercice 7 partie 5
--SELECT*
--FROM [dbo].[languages]
--ORDER BY [language] 