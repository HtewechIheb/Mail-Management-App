USE [GEC DB]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/31/2020 1:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Nature] [varchar](24) NOT NULL,
	[Type] [varchar](24) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email1] [varchar](50) NULL,
	[Email2] [varchar](50) NULL,
	[Telephone1] [varchar](24) NULL,
	[Telephone2] [varchar](24) NULL,
	[Fax] [varchar](24) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Contact_Unique_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'System primary key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Natural, Legal Person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Nature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'External, Internal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Name'
GO
