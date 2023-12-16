#Query to show top 2 best rated restaurants
select res_name,Avg_Restaurant_Rating from 
(select res_name,avg(restaurant_rating) as Avg_Restaurant_Rating,DENSE_RANK() over (order by avg(restaurant_rating) desc) as res_rank from 
(SELECT distinct res_name,restaurant_rating FROM RESTAURANT 
JOIN ORDERS ON restaurant.res_id=orders.res_id 
JOIN RATING ON orders.order_id=rating.order_id
) tablea
group by res_name
ORDER BY Avg_Restaurant_Rating DESC ) tableh
where res_rank in (1,2)


#Query to show the best rated delivery person details
select dp_id,Delivery_Person_Name,avg(delivery_person_rating) as Avg_Delivery_Person_Rating from 
(select distinct D.dp_id,concat(D.dp_firstname,' ',D.dp_lastname) Delivery_Person_Name,R.delivery_person_rating from Rating R
join Invoice I on R.order_id=I.order_id
join Delivery_Person D on I.dp_id=D.dp_id) tableb
group by dp_id,Delivery_Person_Name
order by Avg_Delivery_Person_Rating Desc

#Query to show the most ordered menu item in each cuisine

select cuisine_name,menu_item_desc,menu_item_id,order_count from 
(select C.Cuisine_name,C.menu_item_desc,O.menu_item_id,COUNT(O.menu_item_id) order_count,rank() over (partition by C.Cuisine_name order by COUNT(O.menu_item_id) desc) as 'Max_rank' from Orders O
join Menu M on O.menu_item_id=M.menu_item_id and O.res_id=M.res_id
join Cuisine C on M.menu_item_id=C.menu_item_id
group by O.menu_item_id
order by C.cuisine_name) tablec
where max_rank=1


#Query to show the highest rated item in each restaurant
select res_name,menu_item_desc,Avg_Rating from
(SELECT R.res_name,Cuisine.menu_item_desc,AVG(Ra.menu_item_rating) Avg_Rating,rank() over (partition by R.res_name order by AVG(Ra.menu_item_rating) desc) as 'Rank_Item' FROM RESTAURANT R
JOIN ORDERS ON R.res_id=orders.res_id 
JOIN RATING Ra ON orders.order_id=Ra.order_id and orders.menu_item_id=Ra.menu_item_id
JOIN Menu ON Orders.menu_item_id=Menu.menu_item_id and Orders.res_id=Menu.res_id
JOIN Cuisine ON Menu.menu_item_id=Cuisine.menu_item_id
group by R.res_name,Cuisine.menu_item_desc
) tabled
where Rank_Item=1;



#Query to select the restaurant that has top rating and highest orders for a specified item
SELECT R.res_id,R.res_name,R.res_email,R.res_contactnum,R.res_username,R.res_password,R.latitude,R.longitude,R.res_street,R.res_city,R.res_state,R.res_zipcode,
    AVG(RT.restaurant_rating) AS avg_rating,
    COUNT(O.res_id) AS order_count FROM
    Restaurant R
JOIN
    Orders O ON R.res_id = O.res_id
JOIN
    Rating RT ON O.order_id = RT.order_id
WHERE O.menu_item_id = 'M2'
GROUP BY R.res_id,R.res_name,R.res_email,R.res_contactnum,R.res_username,R.res_password,R.latitude,R.longitude,R.res_street,R.res_city,R.res_state,R.res_zipcode
ORDER BY
    avg_rating DESC,order_count DESC
LIMIT 1;


#Query to select the cuisine which was most ordered
select cuisine_name,menu_item_desc,menu_item_id,order_count from 
(select C.Cuisine_name,C.menu_item_desc,O.menu_item_id,COUNT(O.menu_item_id) order_count,rank() over (partition by C.Cuisine_name order by COUNT(O.menu_item_id) desc) as 'Max_rank'from Orders O
join Menu M on O.menu_item_id=M.menu_item_id and O.res_id=M.res_id
join Cuisine C on M.menu_item_id=C.menu_item_id
group by O.menu_item_id
order by C.cuisine_name) tablec
where max_rank=1
order by order_count desc
limit 1;


#Query to select the delivery person that has delivered more orders and has rating 5 in last 2 months
select dp_id,Delivery_Person,count(invoice_id) orders_count,avg(delivery_person_rating) dp_rating from 
(select DISTINCT D.dp_id,invoice_id,delivery_person_rating,concat(dp_firstname,' ',dp_lastname) as Delivery_Person from Rating R
join Invoice I on R.order_id=I.order_id
join Delivery_Person D on I.dp_id=D.dp_id
where order_date >= now()-interval 2 month
) tablef
group by dp_id
order by orders_count desc,dp_rating desc

#Query to select the customer name that has ordered the most in the last week
select concat(cus_firstname,' ',cus_lastname) as Customer,orders_count from 
(
SELECT cus_firstname,cus_lastname,count(distinct orders.order_id) as orders_count,rank() over (order by count(distinct orders.order_id) desc) Customer_Rank
from customer 
join orders ON customer.cus_id=orders.cus_id 
join invoice on orders.order_id=invoice.order_id
WHERE order_date >= now()-interval 7 day
group by customer.cus_id
order by orders_count desc
) tableh
where Customer_Rank=1

#Query to show number of customers for each payment_type
SELECT payment_type,count(invoice_id) As 'number of customers'  from invoice
group by payment_type;

#Query to select the cuisine type that has been ordered the most in the last month
select cuisine_name,Total_Orders from 
(SELECT cuisine_name,COUNT(distinct orders.order_id) AS Total_Orders,rank() over (order by COUNT(distinct orders.order_id) desc) ordersrank FROM CUISINE 
JOIN ORDERS ON cuisine.menu_item_id=orders.menu_item_id 
JOIN INVOICE ON orders.order_id=invoice.order_id
where order_date >= now()-interval 1 month
GROUP BY cuisine_name
ORDER BY COUNT(orders.order_id) DESC ) tableh
where ordersrank=1


#Query to select top and bottom restaurants based on their revenue generated
(select res_name,sum(invoice_amount) revenue ,'Top' from 
(select distinct invoice_id,invoice_amount,res_name from 
invoice I
JOIN Orders O on I.order_id=O.order_id
JOIN restaurant R on R.res_id=O.res_id

) tableg
group by res_name
order by revenue desc
limit 2)
UNION
(select res_name,sum(invoice_amount) revenue , 'Bottom' from 
(select distinct invoice_id,invoice_amount,res_name from 
invoice I
JOIN Orders O on I.order_id=O.order_id
JOIN restaurant R on R.res_id=O.res_id

) tableg
group by res_name
order by revenue asc
limit 20)