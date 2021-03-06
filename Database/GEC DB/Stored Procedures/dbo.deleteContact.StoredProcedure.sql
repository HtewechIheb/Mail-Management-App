USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[deleteContact]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteContact]
	@Id bigint
AS
	UPDATE Mail SET IdSender = NULL WHERE IdSender = @Id;
	UPDATE Mail SET IdRecipient = NULL WHERE IdRecipient = @Id;
	DELETE FROM ContactsGroups WHERE IdContact = @Id;
	DELETE FROM Contact WHERE Id = @Id;
GO
