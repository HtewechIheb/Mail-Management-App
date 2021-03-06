USE [GEC DB]
GO
/****** Object:  Table [dbo].[ContactsGroups]    Script Date: 12/31/2020 1:43:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactsGroups](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdContact] [bigint] NOT NULL,
	[IdGroup] [bigint] NOT NULL,
 CONSTRAINT [PK_ContactsGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ContactsGroups]  WITH CHECK ADD  CONSTRAINT [FK_ContactsGroups_Contact] FOREIGN KEY([IdContact])
REFERENCES [dbo].[Contact] ([Id])
GO
ALTER TABLE [dbo].[ContactsGroups] CHECK CONSTRAINT [FK_ContactsGroups_Contact]
GO
ALTER TABLE [dbo].[ContactsGroups]  WITH CHECK ADD  CONSTRAINT [FK_ContactsGroups_Group] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[ContactsGroups] CHECK CONSTRAINT [FK_ContactsGroups_Group]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A contact can be part of one or many contact groups and a contact group can contain one or many contacts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ContactsGroups', @level2type=N'COLUMN',@level2name=N'Id'
GO
