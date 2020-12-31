USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectGroupMembers]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectGroupMembers]
	@Id bigint
AS 
	SELECT * FROM Contact WHERE Id IN (SELECT IdContact FROM ContactsGroups WHERE IdGroup = @Id);
GO
