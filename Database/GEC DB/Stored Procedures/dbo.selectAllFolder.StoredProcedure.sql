USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[selectAllFolder]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selectAllFolder]
AS
SELECT * FROM Folder ORDER BY Id DESC;
GO
