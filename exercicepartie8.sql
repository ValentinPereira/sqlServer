--Exercice 1 partie 8 // inverser tout meme right avec left et sens des lignes
--SELECT [dbo].[frameworks].[name] AS [languages],[dbo].[languages].[name] AS [frameworks]
--FROM [dbo].[frameworks]                      En mettant un AS dans le from on peut remplacer le dbo par le AS 
--RIGHT JOIN [dbo].[languages] 
--ON [dbo].[languages].[id] = [languagesId];

--Exercice 2 partie 8

--SELECT [dbo].[frameworks].[name],[dbo].[languages].[name]
--FROM [dbo].[frameworks]
--INNER JOIN [dbo].[languages] 
--ON [dbo].[languages].[id] = [languagesId];

--Exercice 3 partie 8
--SELECT [dbo].[languages].[name],
--COUNT ([dbo].[frameworks].[languagesId]) AS [languagenumber]
--FROM [dbo].[languages] // indique dans la base language
--LEFT JOIN [dbo].[frameworks]
--ON [dbo].[frameworks].[languagesId] = [dbo].[languages].[id]
--GROUP BY [dbo].[languages].[name];


--Exercice 4 partie 8
--SELECT [dbo].[languages].[name],
--	COUNT([dbo].[frameworks].[languagesId]) AS [numberFramework]
-- FROM [dbo].[languages] 
-- INNER JOIN [dbo].[frameworks]
--	ON [dbo].[frameworks].[languagesId] =[dbo].[languages].[id]
--GROUP BY [dbo].[languages].[name]
--HAVING 
	--COUNT ([dbo].[frameworks].[name]) >=3;