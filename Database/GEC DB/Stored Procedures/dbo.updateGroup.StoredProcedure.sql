USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[updateGroup]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateGroup]
	@Id bigint,
	@Name nvarchar(128),
	@Description nvarchar(MAX)
AS
	UPDATE [Group] SET 
		Name = @Name, 
		Description = @Description
	WHERE Id = @Id;
GO
