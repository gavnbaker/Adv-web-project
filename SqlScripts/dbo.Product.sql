CREATE TABLE [dbo].[Product] (
    [ProductId]     INT            NOT NULL,
    [Name]          NCHAR (25)     NOT NULL,
    [Price]         DECIMAL (7, 2) NOT NULL,
    [ProductTypeId] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_Product.ProductTypeId_ToProductType] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductType] ([ProductTypeId])
);

