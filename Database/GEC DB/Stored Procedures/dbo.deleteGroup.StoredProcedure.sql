USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[deleteGroup]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteGroup]
	@Id bigint
AS
	DELETE FROM ContactsGroups WHERE IdGroup = @Id;
	DELETE FROM [Group] WHERE Id = @Id;
GO
