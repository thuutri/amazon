------ 2 TABLES

-- 1. Select Order that contains product id = 1
select order_id
from includes i
natural join "Order" o
where product_id = '1';


-- 2. Select all Subcategories of each Category
select category_name, subcategory_name
from category c
natural join subcategory s;


-- 3. select product names of subcategory named Toys
select product_name
from "Contains" as c, product as p
where c.subcategory_name = 'Toys' and c.product_id = p.product_id;


-- 4. select all images of product named 'Battle axe'
select picture
from product as p, product_picture as pp
where p.product_name = 'Battle axe' and p.product_id = pp.product_id;


-- 5. select all lists of member whose email is 'hdkhang1504@gmail.com'
select list_name 
from list
natural join "Member"
where email = 'hdkhang1504@gmail.com';


-- 6. Select all information of each shipment and order pair
select *
from "Order"
natural join Shipment;


-- 7. Select all information of each payment and order pair
select *
from "Order"
natural join Payment;


-- 8. Select all member that has list type number 2
select m.* 
from "Member" as m, list as l 
where l.account_id = m.account_id and l.list_type = '2';


-- 9. Select all reviews (cmt and rating) of product named "adidas Run Knit Shoes"
select r.cmt, r.rating
from review as r, product as p 
where r.product_id = p.product_id and p.product_name = 'adidas Run Knit Shoes';


-- 10. Select all upvotes that were made by member with email 'cdxkiet@gmail.com'
select v.*
from votes as v, "Member" as m
where v.account_id = m.account_id and v.isupvote = 'true' and m.email = 'cdxkiet@gmail.com';


-------- AGGREGATE 	FUNCTION & GROUP BY

-- 1. Sum all upvotes that account with email 'thhtri@gmail.com' has made
select count(v.isupvote) as count_upvote
from votes as v
natural join "Member"
where email = 'thhtri@gmail.com';


-- 2. Select min price and max price amongst all products of database
select min(p.price) as min_price, max(p.price) as max_price
from product as p;

-- 3. Calculate each order total price
select i.order_id, sum(p.price * i.quantity)
from product as p, includes as i
where p.product_id = i.product_id
group by order_id;

-- 4. Select number of each list types in database
select l.list_type, count(l.list_type)
from list as l 
group by list_type;

-- 5. Select number of shipping methods from all orders
select s."method", count(s."method") 
from shipment as s
group by "method";

