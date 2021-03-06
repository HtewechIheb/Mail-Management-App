USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[createMail]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[createMail] 
	@MailType varchar(24),
	@Channel varchar(24),
	@RegistrationDate date,
	@RegistrationNumber varchar(24),
	@IdSender bigint,
	@SenderRegistrationNumber varchar(24),
	@SendingDate date,
	@IdRecipient bigint,
	@ProcessingTimeFrame varchar(24),
	@Confidentiality varchar(24),
	@Object nvarchar(255),
	@Content nvarchar(MAX),
	@DigitizedFile nvarchar(100),
	@Language varchar(24),
	@KeyWords nvarchar(100),
	@Observations nvarchar(MAX),
	@IdFolder bigint,
	@HasHardCopy bit
AS
	INSERT INTO Mail VALUES(
		@MailType, 
		@Channel, 
		@RegistrationDate, 
		@RegistrationNumber,
		@IdSender,
		@SenderRegistrationNumber,
		@SendingDate,
		@IdRecipient,
		@ProcessingTimeFrame,
		@Confidentiality,
		@Object,
		@Content,
		@DigitizedFile,
		@Language,
		@KeyWords,
		@Observations,
		@IdFolder,
		@HasHardCopy
	);
	SELECT SCOPE_IDENTITY();
GO
