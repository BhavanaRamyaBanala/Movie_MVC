IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Movie] (
    [MId] int NOT NULL IDENTITY,
    [MName] nvarchar(max) NULL,
    [StarCast] nvarchar(max) NULL,
    [Director] nvarchar(max) NULL,
    CONSTRAINT [PK_Movie] PRIMARY KEY ([MId])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240206053600_Moviemig', N'6.0.26');
GO

COMMIT;
GO

