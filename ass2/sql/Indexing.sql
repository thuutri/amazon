--Tim kiem san pham thong qua ten, vi chuc nang chinh la tim kiem san pham
CREATE INDEX idx_product_name 
ON Product(product_name);

explain 
select *
from Product
where product_name = 'Grim Reapers Scythe';

--Tim kiem thong tin account thong qua email, day la cau truy van duoc su dung nhieu nhat
--dung khi dang nhap, kiem soat don hang, dat hang,...

CREATE INDEX idx_email_account
ON "Member"(email);

explain
select *
from "Member"
where email = 'hdkhang1504@gmail.com'

--Nham ho tro cho viec tim kiem danh sach san pham thong qua ten nhom san pham tro nen nhanh hon
--dung indexing:

CREATE INDEX idx_subcategory_product
ON "Contains"(subcategory_name, product_id)

explain 
select *
from "Contains"
where subcategory_name = 'Men''s Fashion'

--Ho tro cho viec xac dinh danh sach product trong mot don hang tro nen nhanh hon
--dung indexing

CREATE INDEX idx_order_include_product
ON Includes(order_id)

explain
select * 
from Includes
where order_id = 10;

--Ho tro cho viec, xac dinh danh sach san pham theo chat luong danh gia, tro nen nhanh hon
--su dung index

CREATE INDEX idx_review_product
ON Review(rating, product_id)

explain
select product_id, AVG(rating) as rating
from Review
where rating >=3 and product_id in(
    select product_id
    from Product
    where product_name = 'Grim Reapers Scythe'
)
group by product_id;