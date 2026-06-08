-- window functions 
use myntra2 ;
-- top 10 most expensive brands 
select brand_name , avg(discounted_price) 
from products 
group by brand_name 
order by avg(discounted_price ) desc limit 10 ;



-- Display each product along with its rating rank across the entire dataset

select product_name , rating , rank() over( order by rating desc )
, dense_rank() over( order by rating desc ) 
, row_number() over( order by rating desc ) from products ;

select product_name , rating , dense_rank() over( order by rating desc ) from products ;

select product_name , rating , row_number() over( order by rating desc ) from products ;


-- Assign a row number to each product within its brand based on rating in descending order 
-- using ROW_NUMBER()
 
 select product_name , brand_name , rating ,
 row_number() over(partition by brand_name order by rating desc )
 from products ;
 
 
 
-- Assign a rank to products within each category based on discounted price using RANK()
select product_name , category , discounted_price,
 rank() over(partition by category order by discounted_price desc) from products ;  
 
 
 
 
 
 -- Assign a row number to products within each brand based on discounted price

 
 
 
 
 
 
 -- window functions using aggregates 
 
-- Display each product and the average rating of its brand

select product_name , brand_name , avg(rating) over(partition by brand_name) from products ;



-- Show each product along with the highest discounted price within its brand
select product_name , brand_name , avg(discounted_price) over( partition by brand_name) from products ;




-- find the highest rated product in each brand 
 select * from (
   select product_name , brand_name , rating ,
 rank() over(partition by brand_name order by rating desc) as rnk
 
 from products) t
 where rnk = 1;




