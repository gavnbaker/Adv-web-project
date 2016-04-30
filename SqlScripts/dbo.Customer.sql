CREATE TABLE [dbo].[Customer] (
    [CustomerID]      INT           NULL,
    [FirstName]       NVARCHAR (50) NOT NULL,
    [LastName]        NVARCHAR (50) NOT NULL,
    [Street]          NVARCHAR (50) NULL,
    [City]            NVARCHAR (50) NULL,
    [State]           NCHAR (2)     NOT NULL,
    [ZipCode]         NCHAR (5)     NULL,
    [TelephoneNumber] VARCHAR (12)  NULL,
    [Email]           NVARCHAR (50) NOT NULL,
    [UserId]          NCHAR (2)     NULL,
    CONSTRAINT [FK_Customer_ToControlRoles] FOREIGN KEY ([UserId]) REFERENCES [dbo].[ControlRoles] ([Id])
);

