--Exercice 1 partie 9
--SELECT [id], [region], [prefecture], [nom_region]
--	FROM [dbo].[regions];

--Exercice 2 partie 9
--SELECT [nom_dep]
--	FROM [dbo].[departements]
--	ORDER BY [nom_dep] ASC

--Exercice 3 partie 9
--SELECT [libelle], [cp]
--	FROM [dbo].[villes]
--	WHERE [dep] = '60'
--	ORDER BY [cp];

--Exercice 4 partie 9
--SELECT TOP 3* [id],
  --[cp],[insee],[article],[ville],[libelle],[region],[dep]
--	FROM[dbo].[villes]
--	WHERE [cp] = '60400'
--	ORDER BY [ville]

--Exercice 5 partie 9
--SELECT [id],
	--[[ville][cp]
--	FROM [france].[dbo].[villes]
--	WHERE [ville] LIKE 'saint%'

--Exercice 6 partie 9
 --SELECT [dbo].[departements].[nom_dep], COUNT ([dbo].[villes].[dep]) AS [numberCity]
 --   FROM [dbo].[villes]
 --     INNER JOIN [dbo].[departements]
 --		ON [dbo].[villes].[dep] = [dbo].[departements].[dep]
 --   GROUP BY [dbo].[departements].[nom_dep]

 --Exercice 7 partie 9
 --SELECT [dbo].[regions].[nom_region], [dbo].[villes].[ville]
 --  FROM [dbo].[villes]
 --    INNER JOIN [dbo].[regions]
 --	   ON [dbo].[regions].[region] = [dbo].[villes].[region]
 --  WHERE [dbo].[regions].[nom_region] = 'Picardie'

 --Exercice 8 partie 9
 --SELECT [dbo].[departements].[nom_dep], COUNT ([dbo].[villes].[ville]) AS [numberCityDep]
 --  FROM [dbo].[villes]
	--INNER JOIN [dbo].[departements]
 --   ON [dbo].[departements].[dep] = [dbo].[villes].[dep]
 --  GROUP BY [dbo].[departements].[nom_dep]
 --  UNION 
 --SELECT [dbo].[regions].[nom_region], COUNT ([dbo].[villes].[ville]) 
 --  FROM [dbo].[villes]
	--INNER JOIN [dbo].[regions]
 --   ON [dbo].[regions].[region] = [dbo].[villes].[region]
 --  GROUP BY [dbo].[regions].[nom_region]


