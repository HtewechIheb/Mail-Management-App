USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectContactGroups]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectContactGroups]
	@Id bigint
AS 
	SELECT * FROM [Group] WHERE Id IN (SELECT IdGroup FROM ContactsGroups WHERE IdContact = @Id);
GO
