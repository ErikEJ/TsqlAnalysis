CREATE PROCEDURE [dbo].[sp_GetScreenings]
	@day DATE
AS
	SELECT * FROM Screening WITH (NOLOCK)
	INNER JOIN Movie ON Movie.Id = Screening.MovieId
	WHERE CAST([ScreeningDate ★] AS DATE) = @day 
