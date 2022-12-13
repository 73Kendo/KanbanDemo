BEGIN TRANSACTION;
GO

ALTER TABLE [People] ADD [DateOfBirth] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

UPDATE [Issues] SET [Deadline] = '2023-02-20T09:36:46.4975352+01:00'
WHERE [Id] = 1;
SELECT @@ROWCOUNT;

GO

UPDATE [Issues] SET [Deadline] = '2022-11-23T09:36:46.4975394+01:00'
WHERE [Id] = 2;
SELECT @@ROWCOUNT;

GO

UPDATE [Issues] SET [Deadline] = '2023-01-09T09:36:46.4975397+01:00'
WHERE [Id] = 3;
SELECT @@ROWCOUNT;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20221120083646_AddedDateOfBirthProp', N'6.0.11');
GO

COMMIT;
GO