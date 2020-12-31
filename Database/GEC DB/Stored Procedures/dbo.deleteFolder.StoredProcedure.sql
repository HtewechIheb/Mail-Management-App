USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[deleteFolder]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteFolder]
	@Id bigint
AS
	UPDATE Mail SET
		IdFolder = NULL 
	WHERE IdFolder = @Id;
	DELETE FROM Folder WHERE Id = @Id;
GO
