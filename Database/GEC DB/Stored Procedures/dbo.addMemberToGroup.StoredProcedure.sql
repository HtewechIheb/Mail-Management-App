USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[addMemberToGroup]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[addMemberToGroup]
	@IdContact bigint,
	@IdGroup bigint
AS
	INSERT INTO ContactsGroups VALUES (@IdContact, @IdGroup);
GO
