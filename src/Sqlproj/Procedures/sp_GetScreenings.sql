CREATE PROCEDURE [dbo].[sp_GetScreenings]
	@day DATE
AS
	WAITFOR DELAY '00:00:01';
	SELECT * FROM Screening WITH (NOLOCK)
	INNER JOIN Movie ON Movie.Id = Screening.MovieId
	WHERE CAST([ScreeningDate ★] AS DATE) = @day 
