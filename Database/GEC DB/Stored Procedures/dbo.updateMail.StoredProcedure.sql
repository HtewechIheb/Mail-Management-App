USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[updateMail]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateMail]
	@Id bigint,
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
	IF(@DigitizedFile IS NOT NULL)	
		UPDATE Mail SET 
			MailType = @MailType,
			Channel = @Channel,
			RegistrationDate = @RegistrationDate,
			RegistrationNumber = @RegistrationNumber,
			IdSender = @IdSender,
			SenderRegistrationNumber = @SenderRegistrationNumber,
			SendingDate = @SendingDate,
			IdRecipient = @IdRecipient,
			ProcessingTimeFrame = @ProcessingTimeFrame,
			Confidentiality = @Confidentiality,
			Object = @Object,
			Content = @Content,
			DigitizedFile = @DigitizedFile,
			Language = @Language,
			KeyWords = @KeyWords,
			Observations = @Observations,
			IdFolder = @IdFolder,
			HasHardCopy = @HasHardCopy
		WHERE Id = @Id;
	ELSE
		UPDATE Mail SET 
			MailType = @MailType,
			Channel = @Channel,
			RegistrationDate = @RegistrationDate,
			RegistrationNumber = @RegistrationNumber,
			IdSender = @IdSender,
			SenderRegistrationNumber = @SenderRegistrationNumber,
			SendingDate = @SendingDate,
			IdRecipient = @IdRecipient,
			ProcessingTimeFrame = @ProcessingTimeFrame,
			Confidentiality = @Confidentiality,
			Object = @Object,
			Content = @Content,
			Language = @Language,
			KeyWords = @KeyWords,
			Observations = @Observations,
			IdFolder = @IdFolder,
			HasHardCopy = @HasHardCopy
		WHERE Id = @Id;
GO
