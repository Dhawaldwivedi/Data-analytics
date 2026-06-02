create database myntra ;
use myntra ; 
select * from products ;

select count(*) from products where marked_price > 5000 and discounted_price > 5000 ;
 
-- Display all products with their brand names.
select product_name , brand_name from products ;

-- Show all products whose discounted price is greater than 2000.
select product_name , discounted_price from products where discounted_price > 2000 ;

-- Find all products having a rating greater than 4.
select product_name , rating 
from products
where rating >= 4 ;

-- Display the product names sorted by discounted price in ascending order.
select product_name, discounted_price 
from products 
order by discounted_price ;

-- Find the highest marked price in the dataset.
select max(marked_price) from products ;

-- Find the average discounted price of all products.
select avg(discounted_price) from products ;

-- Count how many products have received at least 100 ratings.
select count(product_name) from products where rating_count > 100 ;

-- Display the top 10 most expensive products based on marked price.
select product_name , marked_price
from products
order by marked_price desc 
limit 10 ; 


-- Show all products with a rating between 4.0 and 4.5, sorted by rating in descending order.
select product_name , rating
from products 
where rating >= 4 and rating <= 4.5
order by rating desc ;



-- How many products belong to the brand "Biba"?
select count(product_name) as Product_count, brand_name as Brand_Name
from products 
where brand_name = 'Biba' ;
