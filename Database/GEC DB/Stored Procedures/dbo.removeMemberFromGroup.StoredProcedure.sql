USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[removeMemberFromGroup]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[removeMemberFromGroup]
	@IdContact bigint, 
	@IdGroup bigint
AS
	DELETE FROM ContactsGroups WHERE IdContact = @IdContact AND @IdGroup = @IdGroup;
GO
