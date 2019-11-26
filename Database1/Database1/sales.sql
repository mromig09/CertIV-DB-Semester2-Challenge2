CREATE TABLE [dbo].[sales]
(
	[dateOrdered] DATE NOT NULL, 
    [recordID] VARCHAR(10) NOT NULL, 
    [customerNumber] INT NOT NULL, 
    [price] MONEY NOT NULL
	PRIMARY KEY ([dateOrdered], [recordID], [customerNumber]),
    [interestCode] VARCHAR(5) NOT NULL, 
    FOREIGN KEY ([recordID]) REFERENCES [dbo].[record],
	FOREIGN KEY ([interestCode], [customerNumber]) REFERENCES [dbo].[customer]
)
