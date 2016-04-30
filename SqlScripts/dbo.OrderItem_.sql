CREATE TABLE [dbo].[OrderItem	] (
    [OrderItemId] INT NOT NULL,
    [OrderId]     INT NOT NULL,
    [ProductId]   INT NOT NULL,
    [Quantity]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderItemId] ASC),
    CONSTRAINT [FK_OrderItem.OrderId_ToCusOrder] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[CustomerOrder] ([OrderId]),
    CONSTRAINT [FK_OrderItem.ProductId_ToProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId])
);

