USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectByIdFolder]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectByIdFolder]
	@Id bigint
AS
	SELECT * FROM Folder WHERE Id = @Id;
GO
