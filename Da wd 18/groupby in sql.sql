-- group by 
use myntra2 ;
-- find the number of products for Puma

select brand_name , count(brand_name)
from products 
group by brand_name  ;


-- find top 10 brands with maximum number of products listed 

select brand_name , count(brand_name) as 'Product Count', sum(revenue) , avg(rating)
from products 
group by brand_name  
order by 'Product Count' desc limit 10;




-- average rating of products for each brand 
select brand_name , round(avg(rating),2)
from products 
group by brand_name ;


-- Find the highest discounted price for each brand.
select brand_name , max(discounted_price)
from products 
group by brand_name ;



-- find top 10 product categories with maximum number of products listed 
select Category , count(Category)
from products 
group by Category order by count(Category) desc limit 10 ;



-- top 10 bestselling brands 
select brand_name , sum(rating_count)
from products 
group by brand_name order by sum(rating_count) desc 
limit 10 ;



-- top 10 bestselling categories 
select Category , sum(rating_count)
from products 
group by Category order by sum(rating_count) desc
limit 10 ;





/* Which brand has the highest number of products?
Which brand has the highest average rating?
Which brand has received the most customer ratings overall?
What is the average discounted price of products for each brand?
Which brands have products priced above ₹5000 on average?
Find the most expensive product price available in each brand.
Which brand offers the cheapest products on average?
Which brand has the highest average rating count? */ 

select brand_name , max(discounted_price)
from products 
group by brand_name ;

-- Which brands have products priced above ₹5000 on average?
select brand_name , avg(discounted_price)
from products 
group by brand_name
having avg(discounted_price) > 5000 ;

-- find brands having average rating greater than 4.5 
select brand_name , avg(rating) 
from products 
group by brand_name 
having avg(rating) > 4.5 ;

-- where  
-- having 