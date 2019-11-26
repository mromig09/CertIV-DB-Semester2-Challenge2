CREATE TABLE [dbo].[customer]
(
	[customerNumber] INT NOT NULL , 
    [interestCode] VARCHAR(5) NOT NULL, 
    [name] VARCHAR(100) NOT NULL, 
    [address] VARCHAR(100) NOT NULL, 
    [postcode] VARCHAR(10) NOT NULL, 
    PRIMARY KEY ([interestCode], [customerNumber]),
	FOREIGN KEY ([interestCode]) REFERENCES [dbo].[interests]
)
