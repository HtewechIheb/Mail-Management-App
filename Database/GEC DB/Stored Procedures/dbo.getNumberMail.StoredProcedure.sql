USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[getNumberMail]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getNumberMail]
AS
SELECT COUNT(*) + 1 AS NUMBER FROM Mail WHERE YEAR(RegistrationDate) = YEAR(SYSDATETIME());
GO
