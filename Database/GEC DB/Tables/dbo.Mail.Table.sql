USE [GEC DB]
GO
/****** Object:  Table [dbo].[Mail]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MailType] [varchar](24) NOT NULL,
	[Channel] [varchar](24) NOT NULL,
	[RegistrationDate] [date] NOT NULL,
	[RegistrationNumber] [varchar](24) NOT NULL,
	[IdSender] [bigint] NOT NULL,
	[SenderRegistrationNumber] [varchar](24) NULL,
	[SendingDate] [date] NULL,
	[IdRecipient] [bigint] NOT NULL,
	[ProcessingTimeFrame] [varchar](24) NULL,
	[Confidentiality] [varchar](24) NULL,
	[Object] [nvarchar](255) NULL,
	[Content] [nvarchar](max) NULL,
	[DigitizedFile] [nvarchar](100) NULL,
	[Language] [varchar](24) NULL,
	[KeyWords] [nvarchar](100) NULL,
	[Observations] [nvarchar](max) NULL,
	[IdFolder] [bigint] NULL,
	[HasHardCopy] [bit] NOT NULL,
 CONSTRAINT [PK_Mail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_Mail_Contact_Recipient] FOREIGN KEY([IdRecipient])
REFERENCES [dbo].[Contact] ([Id])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_Mail_Contact_Recipient]
GO
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_Mail_Contact_Sender] FOREIGN KEY([IdSender])
REFERENCES [dbo].[Contact] ([Id])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_Mail_Contact_Sender]
GO
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_Mail_Folder] FOREIGN KEY([IdFolder])
REFERENCES [dbo].[Folder] ([Id])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_Mail_Folder]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'System primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Incoming, Outgoing, Internal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'MailType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hard, Email, Parcel Post' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'Channel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of registration of the mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'RegistrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The registration number of the mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'RegistrationNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sender identifier (From Contact table)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'IdSender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The registration number made by the sender (If available)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'SenderRegistrationNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the sender sent the mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'SendingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the recipient of the mail (from Contact table)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'IdRecipient'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The processing time frame (normal, urgent, no time frame)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'ProcessingTimeFrame'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Confidential, Normal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'Confidentiality'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The object of the mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'Object'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The content of the mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The scanned version of a hard copy mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'DigitizedFile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language in which is written the mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'Language'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key words to index the mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'KeyWords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observations if needed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'Observations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The folder in which the scanned file will be stored' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'IdFolder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether a hard copy of the mail is archived or not' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mail', @level2type=N'COLUMN',@level2name=N'HasHardCopy'
GO
