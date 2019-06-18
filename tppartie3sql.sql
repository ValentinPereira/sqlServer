--TP partie 3 
-- 1) 
-- ALTER TABLE [dbo].[Table_1codex]
-- DROP COLUMN [secondPhoneNumber];

--2)
-- EXEC sp_rename '[dbo].[Table_1codex]', 'firsPhoneNumber', 'phoneNumber';

--3)
-- ALTER TABLE [dbo].[Table_1codex];
-- ALTER COLUMN phoneNumber NVARCHAR(10);

--4)
-- ALTER TABLE [dbo].[Table_1codex] ADD [zipCode] NVARCHAR(10), [city] NVARCHAR(50);