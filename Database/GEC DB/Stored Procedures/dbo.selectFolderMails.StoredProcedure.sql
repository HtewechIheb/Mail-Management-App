USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectFolderMails]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectFolderMails]
	@Id bigint
AS 
	SELECT * FROM Mail WHERE IdFolder = @Id;
GO
