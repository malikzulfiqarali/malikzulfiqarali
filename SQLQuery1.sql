select * from [dbo].[Categories]
select categoryid,
	categoryname,
	description
from Categories
where CategoryID='4'
select * from [dbo].[CustomerCustomerDemo]
select * from [dbo].[CustomerDemographics]
select * from [dbo].[Orders]
select * from [dbo].[Employees]

select e.FirstName,
		e.[Address],
		e.BirthDate,
		o.CustomerID,
		o.OrderDate,
		od.Quantity,
		od.UnitPrice,
		od.Quantity*od.UnitPrice as [Total amount]
from [dbo].Orders o 
inner join [dbo].Employees e on o.EmployeeID=e.EmployeeID
inner join [dbo].[Order Details] od on o.OrderID=od.OrderID
where FirstName='steven'