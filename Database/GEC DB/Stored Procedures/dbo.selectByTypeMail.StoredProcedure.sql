USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectByTypeMail]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectByTypeMail] 
	@MailType varchar(24)	
AS
	SELECT * FROM Mail WHERE MailType = @MailType;
GO
