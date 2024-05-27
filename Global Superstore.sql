create database Superstore
use Superstore
select * from Orders

--Total sales by region--
SELECT region, SUM(sales) as total_sales
FROM orders
GROUP BY region;

--Top 10 Customers by Sales--
SELECT top 10 customer_name, SUM(sales) as total_sales
FROM orders
GROUP BY customer_name
ORDER BY total_sales DESC

--Monthly Sales Trend--
SELECT FORMAT(Order_Date, 'yyyy-MM') as Month, SUM(Sales) as TotalSales
FROM Orders
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Month;