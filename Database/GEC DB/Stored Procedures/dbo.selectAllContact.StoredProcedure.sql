USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectAllContact]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectAllContact]
AS
SELECT * FROM Contact ORDER BY Id DESC;
GO
