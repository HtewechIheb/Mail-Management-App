USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[createContact]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[createContact]
	@Nature varchar(24),
	@Type varchar(24),
	@Name nvarchar(50),
	@Email1 varchar(50), 
	@Email2 varchar(50),
	@Telephone1 varchar(24),
	@Telephone2 varchar(24),
	@Fax varchar(24),
	@Address nvarchar(100)
AS
	INSERT INTO Contact VALUES(
		@Nature,
		@Type,
		@Name,
		@Email1,
		@Email2,
		@Telephone1,
		@Telephone2,
		@Fax,
		@Address
	);
	SELECT SCOPE_IDENTITY();
GO
