USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectByIdMail]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectByIdMail] 
	@Id bigint	
AS
	SELECT * FROM Mail WHERE Id = @Id
GO
