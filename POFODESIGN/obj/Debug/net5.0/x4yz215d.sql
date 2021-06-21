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

CREATE TABLE [Blogs] (
    [ID] int NOT NULL IDENTITY,
    [PhotoUrl] nvarchar(max) NULL,
    [DesignName] nvarchar(max) NULL,
    [Header] nvarchar(max) NULL,
    [ByName] nvarchar(max) NULL,
    [PurchaseDate] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    CONSTRAINT [PK_Blog] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Builders] (
    [ID] int NOT NULL IDENTITY,
    [Icon] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    CONSTRAINT [PK_Builders] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Counts] (
    [ID] int NOT NULL IDENTITY,
    [Icon] nvarchar(max) NULL,
    [Number] int NOT NULL,
    [Title] nvarchar(max) NULL,
    CONSTRAINT [PK_Counts] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Designs] (
    [ID] int NOT NULL IDENTITY,
    [Top] nvarchar(max) NULL,
    [Center] nvarchar(max) NULL,
    [Bottom] nvarchar(max) NULL,
    [PhotoUrl] nvarchar(max) NULL,
    CONSTRAINT [PK_Designs] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [ExperienceCounts] (
    [ID] int NOT NULL IDENTITY,
    [Title] nvarchar(max) NULL,
    [Percent] int NOT NULL,
    CONSTRAINT [PK_ExperienceCounts] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [IconEnds] (
    [ID] int NOT NULL IDENTITY,
    [Icon] nvarchar(max) NULL,
    [Header] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [DeleteTitle] nvarchar(max) NULL,
    CONSTRAINT [PK_IconEnds] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [NumberTexts] (
    [ID] int NOT NULL IDENTITY,
    [Number] int NOT NULL,
    [Header] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    CONSTRAINT [PK_NumberTexts] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Peoples] (
    [ID] int NOT NULL IDENTITY,
    [PhotoUrl] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Worker] nvarchar(max) NULL,
    CONSTRAINT [PK_Peoples] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [PeopleSays] (
    [ID] int NOT NULL IDENTITY,
    [PhotoUrl] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Work] nvarchar(max) NULL,
    CONSTRAINT [PK_PeopleSays] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Portfolios] (
    [ID] int NOT NULL IDENTITY,
    [Header] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [PhotoUrl] nvarchar(max) NULL,
    CONSTRAINT [PK_Portfolios] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Section2s] (
    [ID] int NOT NULL IDENTITY,
    [Icon] nvarchar(max) NULL,
    [IconTitle] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    CONSTRAINT [PK_Section2s] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Services] (
    [ID] int NOT NULL IDENTITY,
    [Icon] nvarchar(max) NULL,
    [Header] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    CONSTRAINT [PK_Services] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [TabMenus] (
    [ID] int NOT NULL IDENTITY,
    [Number] int NOT NULL,
    [Header] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    CONSTRAINT [PK_TabMenus] PRIMARY KEY ([ID])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210620164742_Initial', N'6.0.0-preview.5.21301.9');
GO

COMMIT;
GO

