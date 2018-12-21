CREATE TABLE [dbo].[customer]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[insertdt] [datetime] NULL DEFAULT (getdate()),
[first_name] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_name] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[password] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tracking_guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customer] ADD CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
