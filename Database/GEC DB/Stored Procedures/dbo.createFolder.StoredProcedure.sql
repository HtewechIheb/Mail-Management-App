USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[createFolder]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[createFolder]
	@Name nvarchar(128),
	@Description nvarchar(MAX)
AS
	INSERT INTO Folder VALUES (@Name, @Description);
	SELECT SCOPE_IDENTITY();
GO
