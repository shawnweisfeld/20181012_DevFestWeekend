SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


DROP TABLE [dbo].[Products]
GO

DROP TABLE [dbo].[ProductTranslations]
GO

CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductPrice] decimal NOT NULL,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProductTranslations](
	[TranslationId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
) ON [PRIMARY]
GO

/*

DELETE FROM [dbo].[Products]
DELETE FROM [dbo].[ProductTranslations]

*/


INSERT INTO [dbo].[Products]
           ([ProductName]
           ,[ProductDescription]
           ,[ProductPrice])
     VALUES
           ('Comicave Studios Marvel Iron Man Mark XLIV'
           ,'The main suit featured in Marvel’s Avengers: Age of Ultron, the Hulkbuster armor can be deployed from orbit, forming a protective shell around the Mark 43'
           ,500)
GO


/*

SELECT * FROM [dbo].[Products]
SELECT * FROM [dbo].[ProductTranslations]

*/
