USE [GEC DB]
GO
/****** Object:  StoredProcedure [dbo].[searchMail]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchMail]   
    @QueryString nvarchar(100),
	@QueryDay Int,
	@QueryMonth Int,
	@QueryYear Int,
	@QueryBigInt Bigint
AS   
	SET NOCOUNT ON; 
	IF (@QueryYear IS NOT NULL AND @QueryMonth IS NOT NULL AND @QueryDay IS NOT NULL)
		SELECT * FROM Mail
		WHERE MailType LIKE @QueryString
			OR Channel LIKE @QueryString
			OR DAY(RegistrationDate) = @QueryDay AND MONTH(RegistrationDate) = @QueryMonth AND YEAR(RegistrationDate) = @QueryYear
			OR RegistrationNumber LIKE @QueryString
			OR SenderRegistrationNumber LIKE @QueryString
			OR DAY(SendingDate) = @QueryDay AND MONTH(SendingDate) = @QueryMonth AND YEAR(SendingDate) = @QueryYear
			OR ProcessingTimeFrame LIKE @QueryString
			OR Confidentiality LIKE @QueryString
			OR Language LIKE @QueryString
			OR IdSender IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
			OR IdRecipient IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
			OR Mail.Object LIKE CONCAT('%', @QueryString, '%')
			OR Mail.Content LIKE CONCAT('%', @QueryString, '%')
			OR Mail.DigitizedFile LIKE CONCAT('%', @QueryString, '%')
			OR Mail.KeyWords LIKE CONCAT('%', @QueryString, '%')
			OR Mail.Observations LIKE CONCAT('%', @QueryString, '%')
	ELSE IF (@QueryYear IS NOT NULL AND @QueryMonth IS NOT NULL AND @QueryDay IS NULL)
		SELECT * FROM Mail
		WHERE MailType LIKE @QueryString
			OR Channel LIKE @QueryString
			OR MONTH(RegistrationDate) = @QueryMonth AND YEAR(RegistrationDate) = @QueryYear
			OR RegistrationNumber LIKE @QueryString
			OR SenderRegistrationNumber LIKE @QueryString
			OR MONTH(SendingDate) = @QueryMonth AND YEAR(SendingDate) = @QueryYear
			OR ProcessingTimeFrame LIKE @QueryString
			OR Confidentiality LIKE @QueryString
			OR Language LIKE @QueryString
			OR IdSender IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
			OR IdRecipient IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
			OR Mail.Object LIKE CONCAT('%', @QueryString, '%')
			OR Mail.Content LIKE CONCAT('%', @QueryString, '%')
			OR Mail.DigitizedFile LIKE CONCAT('%', @QueryString, '%')
			OR Mail.KeyWords LIKE CONCAT('%', @QueryString, '%')
			OR Mail.Observations LIKE CONCAT('%', @QueryString, '%')
	ELSE IF (@QueryYear IS NOT NULL AND @QueryMonth IS NULL AND @QueryDay IS NULL)
		SELECT * FROM Mail
		WHERE MailType LIKE @QueryString
			OR Channel LIKE @QueryString
			OR YEAR(RegistrationDate) = @QueryYear
			OR RegistrationNumber LIKE @QueryString
			OR SenderRegistrationNumber LIKE @QueryString
			OR YEAR(SendingDate) = @QueryYear
			OR ProcessingTimeFrame LIKE @QueryString
			OR Confidentiality LIKE @QueryString
			OR Language LIKE @QueryString
			OR IdSender IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
			OR IdRecipient IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
			OR Mail.Object LIKE CONCAT('%', @QueryString, '%')
			OR Mail.Content LIKE CONCAT('%', @QueryString, '%')
			OR Mail.DigitizedFile LIKE CONCAT('%', @QueryString, '%')
			OR Mail.KeyWords LIKE CONCAT('%', @QueryString, '%')
			OR Mail.Observations LIKE CONCAT('%', @QueryString, '%')
	ELSE
	SELECT * FROM Mail
	WHERE MailType LIKE @QueryString
		OR Channel LIKE @QueryString		
		OR RegistrationNumber LIKE @QueryString
		OR SenderRegistrationNumber LIKE @QueryString
		OR ProcessingTimeFrame LIKE @QueryString
		OR Confidentiality LIKE @QueryString
		OR Language LIKE @QueryString
		OR IdSender IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
		OR IdRecipient IN (SELECT Id FROM Contact WHERE Contact.Name LIKE CONCAT('%', @QueryString, '%'))
		OR Mail.Object LIKE CONCAT('%', @QueryString, '%')
		OR Mail.Content LIKE CONCAT('%', @QueryString, '%')
		OR Mail.DigitizedFile LIKE CONCAT('%', @QueryString, '%')
		OR Mail.KeyWords LIKE CONCAT('%', @QueryString, '%')
		OR Mail.Observations LIKE CONCAT('%', @QueryString, '%');

GO
