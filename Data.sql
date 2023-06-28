CREATE DATABASE Library
-- Usar la base de datos
USE [Library]
GO

-- Crear la tabla BookCategories
CREATE TABLE [dbo].[BookCategories] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Category] [nvarchar](50) NULL,
    [SubCategory] [nvarchar](50) NULL,
    CONSTRAINT [PK_BookCategories] PRIMARY KEY CLUSTERED ([Id] ASC)
) ON [PRIMARY]
GO

-- Crear la tabla Books
CREATE TABLE [dbo].[Books] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Title] [nvarchar](200) NOT NULL,
    [Author] [nvarchar](100) NOT NULL,
    [Price] [float] NOT NULL,
    [Ordered] [bit] NOT NULL,
    [CategoryId] [int] NOT NULL,
    CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id] ASC)
) ON [PRIMARY]
GO

-- Crear la tabla Orders
CREATE TABLE [dbo].[Orders] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [UserId] [int] NOT NULL,
    [BookId] [int] NOT NULL,
    [OrderedOn] [datetime] NOT NULL,
    [Returned] [bit] NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC)
) ON [PRIMARY]
GO

-- Crear la tabla Users
CREATE TABLE [dbo].[Users] (
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [FirstName] [nvarchar](50) NOT NULL,
    [LastName] [nvarchar](50) NULL,
    [Email] [nvarchar](50) NOT NULL,
    [Mobile] [nvarchar](15) NULL,
    [Password] [nvarchar](20) NOT NULL,
    [Blocked] [bit] NOT NULL,
    [Active] [bit] NOT NULL,
    [CreatedOn] [datetime] NOT NULL,
    [UserType] [nvarchar](20) NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
) ON [PRIMARY]
GO

-- Agregar restricciones de clave foránea

-- FK_Books_BookCategories
ALTER TABLE [dbo].[Books] WITH CHECK ADD CONSTRAINT [FK_Books_BookCategories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[BookCategories] ([Id])
GO

ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_BookCategories]
GO

-- FK_Orders_Books
ALTER TABLE [dbo].[Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_Books] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO

ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Books]
GO

-- FK_Orders_Users
ALTER TABLE [dbo].[Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
SELECT * FROM [dbo].[Users]