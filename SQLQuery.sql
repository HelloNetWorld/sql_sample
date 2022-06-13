CREATE TABLE dbo.Customers(
	Id INT PRIMARY KEY,
	[Name] NVARCHAR (max) NULL
)

INSERT INTO dbo.Customers 
VALUES 
    (1,'Max'),
    (2,'Pavel'),
    (3,'Ivan'),
	(4,'Leonid');

GO

CREATE TABLE dbo.Orders(
	Id INT PRIMARY KEY,
	CustomerId INT FOREIGN KEY REFERENCES dbo.Customers(Id)
)

INSERT INTO dbo.Orders
VALUES 
    (1, 2),
	(2, 4);
GO

SELECT a.Name FROM dbo.Customers a
LEFT JOIN dbo.Orders b
ON a.Id = b.CustomerId
WHERE b.Id IS NULL

