USE AdventureWorks2019
Go
/*
AUTHOR: ALBERTO CRUZ
DATE: 10 - 02 -23
DESC: Scripts for part "SQL QUERIES"
*/

/*
SQL QUERIES
*/
CREATE TABLE sales.SpecialOfferReseller(
	SpecialOfferID int not null,
	[Description] nvarchar(255) not null, 
	DiscountPct smallmoney not null
)
GO
CREATE TABLE sales.SpecialOfferCustomer(
	SpecialOfferID int not null,
	[Description] nvarchar(255) not null, 
	DiscountPct smallmoney not null
)
INSERT INTO sales.SpecialOfferReseller
SELECT SpecialOfferID, [Description], DiscountPct FROM sales.SpecialOffer WHERE Category='Reseller'
GO
INSERT INTO sales.SpecialOfferCustomer
SELECT SpecialOfferID, [Description], DiscountPct FROM sales.SpecialOffer WHERE Category='Customer'