USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectByIdContact]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectByIdContact]
	@Id bigint	
AS
	SELECT * FROM Contact WHERE Id = @Id
GO
