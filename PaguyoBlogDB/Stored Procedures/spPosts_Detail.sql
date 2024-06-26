﻿CREATE PROCEDURE [dbo].[spPosts_Detail]
	@id int
AS
begin 
	set nocount on;
	SELECT [p].[Id], [p].[Title], [p].[Body], [p].[DateCreated], [u].[Username], [u].[Firstname], [u].[Lastname]
	FROM dbo.Posts p
	INNER JOIN dbo.Users u 
	ON p.UserId = u.Id
	WHERE p.Id = @id
end
