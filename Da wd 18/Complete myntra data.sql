create database myntra2 ;
use myntra2 ;
select * from products ;


-- Find all products that have a rating greater than 4.5 and a discounted price less than ₹2000. 
-- Sort them by rating in descending order.
select product_name , rating , discounted_price 
from products 
where rating > 4.5 and discounted_price < 2000 
order by rating desc ;


-- Find the average discounted price of products that have received more than 500 ratings.
select avg(discounted_price) 
from products 
where rating_count > 500 ;


-- find the discount of a brand 'Biba'
select (rating_count * discounted_price) as 'Revenue'
from products ;



-- display the top 15 products with highest number of ratings 
select product_name , rating 
from products 
order by product_name desc  
limit 15 ;



-- Count how many products satisfy all of the following conditions:
--    Rating greater than 4
--    Rating count greater than 100
--    Discounted price less than ₹3000

select * 
from products 
where rating > 4 and rating_count > 100 and discounted_price < 3000 ;


-- give a count of total product categories
select count(distinct(Category)) as "Unique Categories" from products ;


-- find top 10 most bought products from puma 
select product_name , rating_count 
from products 
where brand_name = 'Puma' order by rating_count desc 
limit 10 ;


-- find top 10 best selling tshirts from nike with rating more than 4 
select * 
from products 
where Category = 'Tshirts' and brand_name = 'Nike' and rating > 4
order by rating_count desc 
limit 10 ;



-- top 10 best selling shoes from nike with rating more than 4 and price between 5k and 10k 
select * 
from products 
where Category in ('sports-shoes','casual-shoes') and brand_name = 'Nike' and rating > 4 and discounted_price between 5000 and 10000 
order by rating_count desc 
limit 10 ;



select distinct Category 
from products 
where brand_name = 'Nike' ;

-- find all product names that start with Men 
select product_name
from products 
where product_name like 'Set%' ;



-- display all the product names which end with 'a'

select product_name
from products 
where product_name like '%a' ;


-- Display all products whose brand name starts with "B" and ends with "a".
select product_name , brand_name
from products 
where brand_name like 'B%a' ;



-- Display all brands whose second letter is "i".
select distinct brand_name 
from products 
where brand_name like '_i%';



-- find the 6th most expensive product 
select product_name ,discounted_price 
from products 
order by discounted_price desc 
limit 5,1  ;                   -- offset (skip),limit(pick)

-- count number of products within puma 
select count(product_name) 
from products 
where brand_name = 'Puma' ;

