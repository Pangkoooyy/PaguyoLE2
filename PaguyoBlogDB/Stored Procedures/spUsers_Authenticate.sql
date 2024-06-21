CREATE PROCEDURE [dbo].[spUsers_Authenticate]
    @username nvarchar(16),
    @password nvarchar(16)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT [Id], [Username], [Firstname], [Lastname], [Password] 
    FROM dbo.Users
    WHERE Username = @username
    AND Password = @password;
END
