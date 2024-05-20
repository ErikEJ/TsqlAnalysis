CREATE TABLE [dbo].[Movie]
(
	[Id] INT NOT NULL PRIMARY KEY NONCLUSTERED,
	[Title] NVARCHAR(100) NOT NULL,
	[ReleaseDate] DATE NOT NULL,
	[Poster] image NULL,
)
GO

CREATE INDEX IX_Movie_Title ON [dbo].[Movie] ([Title] ASC) 
GO

CREATE INDEX IX_Movie_ReleaseDate ON [dbo].[Movie] ([Title] ASC, [ReleaseDate] ASC)
GO
