-- Major Preprocessing Checks

-- a) Customer_ID (PK) is uniuque 
Select Count(*) as Total_Customer_ID, count( Distinct customer_ID) as Unique_Customer_ID 
From customers;

-- b) Order_ID (PK) is uniuque 
Select Count(*) as Total_Order_ID, count( Distinct Order_ID) as Unique_Order_ID
From orders;

-- c) Session_ID (PK) is uniuque 
Select Count(*) as Total_Session_ID, count( Distinct Session_ID) as Unique_Session_ID 
From Web_sessions;


-- d) Revenue should be non-null and greater than 0 
Select Revenue From Orders 
Where Revenue <= 0 or Revenue is Null;


-- e) Channels & Region should not be nulll
Select Region, Channel From Customers 
Where Region or Channel is Null; 


-- f) Customers' order date must be greater than their sign_up date 
Select * From Customers
Join Orders ON Customers.Signup_date = Orders.Order_date
Where Signup_date > Order_date;


-- Just to doube-check if joining two tables work or not
Select * from orders
Join Customers
on Customers.customer_ID = Orders.Customer_ID;


-- Task 1 - Revenue by Segment 
Select Round(Sum(Revenue), 2) As Total_Revenue, Channel, Region 
From Orders
Join Customers On Customers.Customer_ID = Orders.Customer_ID
Group by Region, Channel
Order by Sum(Revenue) Desc;


-- Task 2 - Sign-up to Order Conversion Rate (Early Engagement Rate)
Select Count(Distinct Orders.Customer_ID)*1/ (Select Count(*) From Customers) 
AS Conversion_Rate
From Orders 
Join Customers on Customers.Customer_ID = Orders.Customer_ID 
Where Orders.is_first_order = "True"
And Datediff (Orders.Order_Date, Customers.Signup_Date) <=7;


-- Task 3 - A Promo Usage & Retention - Finding out If this Marketing Tactic is Effective and Sustainable 
-- Identification of Customers Who Used Promo Codes on First Order, and Never Placed a Second order

SELECT customer_id, COUNT(*) OVER() AS total_customers
FROM orders
WHERE is_first_order = "TRUE"
  AND promo_used IS NOT NULL
  AND customer_id NOT IN (
      SELECT customer_id
      FROM orders
      GROUP BY customer_id
      HAVING COUNT(order_id) > 1);
	  
-- Total Promo Users	  
SELECT COUNT(DISTINCT customer_id) AS total_promo_users
FROM orders
WHERE promo_used IS NOT NULL
AND TRIM(promo_used) != ''
AND is_first_order = 'TRUE';
  
  
  -- Task 4 - Averge Order Value
Select Channel, Round(Avg(Revenue),2) AS AOV
From Orders
Join Customers On Orders.Customer_ID = Customers.Customer_ID
Group by Channel 
Order by AOV Desc;


-- Number of Orders per Customers 
Select count(order_id), customer_id from Orders
Group by customer_id 
order by count(order_id) Desc;

-- Promo Used Analysis
Select customer_id, promo_used, count(*) As times_used
From Orders
Where promo_used is not null 
group by customer_id, promo_used 
Having count(*)>1;


