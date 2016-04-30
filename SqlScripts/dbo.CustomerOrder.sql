CREATE TABLE [dbo].[CustomerOrder] (
    [OrderId]    INT      NOT NULL,
    [Date]       DATE     NOT NULL,
    [Time]       TIME (7) NOT NULL,
    [CustomerId] INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC)
);

