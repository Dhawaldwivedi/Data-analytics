use myntra2 ;

-- find the product with minimum discounted price 
select min(discounted_price) from products ;


select * from products 
where discounted_price = (select min(discounted_price) from products) ;


-- Find products with ratings higher than the average rating.
select avg(rating) from products ;

select product_name , rating  
from products 
where rating > (select avg(rating) from products);



-- find the most expensive product based on the discounted price 
select max(discounted_price) from products ;

select product_name , discounted_price
from products 
where discounted_price = (select max(discounted_price) from products
) ;

-- Find products whose discounted price is higher than the 
-- average discounted price having rating greater than 4.

select product_name , rating , discounted_price 
from products 
where discounted_price > 
( select avg(discounted_price) from products) and rating > 4;


-- Find brands whose average discounted price is greater than the 
-- overall average discounted price.

select avg(discounted_price) from products ;

select brand_name , avg(discounted_price) 
from products 
group by brand_name 
having avg(discounted_price) > (select avg(discounted_price) from products 
);


-- Find products belonging to brands with highest average rating
select brand_name , avg(rating)
from products 
group by brand_name 
order by avg(rating) desc limit 1 ; 

select product_name , brand_name , rating
from products 
where brand_name = (select brand_name
from products 
group by brand_name 
order by avg(rating) desc limit 1 );

-- find brands whose total rating count is above 
-- the overall average rating count 

select avg(rating_count) from products ;

select brand_name , sum(rating_count)
from products 
group by brand_name 
having sum(rating_count) > (select avg(rating_count) from products 
);

