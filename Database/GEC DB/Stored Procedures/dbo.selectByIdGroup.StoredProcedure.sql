USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectByIdGroup]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectByIdGroup]
	@Id bigint
AS
	SELECT * FROM [Group] WHERE Id = @Id;
GO
