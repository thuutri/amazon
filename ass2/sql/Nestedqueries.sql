--Truy xuat tat ca cac ma don hang cua mot account co email la 'hdkhang1504@gmail.com'
select order_id 
from "Member" natural join "Order" 
where email in 
    (select email 
    from "Member" natural join "Order" 
    where email ='hdkhang1504@gmail.com');

--Truy xuat don hang co gia tien cao nhat cua mot account co email la 'hdkhang1504@gmail.com'
select "Order".order_id, total_price
from "Order"
where total_price in (
    select Max(total_price)
    from "Order"
    where account_id in(
        select account_id
        from "Member"
        where email ='hdkhang1504@gmail.com') 
);

--Truy xuat ma san pham co gia ban thap nhat cua seller co email la 'ldatai@gmail.com'
select product_id, price
from Product
where price in (
    select Min(price)
    from Product
    where account_id in (
        select account_id
        from "Member"
        where email ='ldatai@gmail.com')
);

--Liet ke danh sach ma san pham thuoc 'Men''s Fashion' co gia hon 50$
select product_id, price
from Product
where price > 50 AND product_id in (
    select product_id
    from "Contains"
    where subcategory_name = 'Men''s Fashion'
);

--Liet ke danh sach ma san pham co diem rating lon hon 4 cua seller co email la hdkhang1504@gmail.com

select "P".product_id pid,
    AVG(rating) as rating
from Product "P" left join Review R on "P".product_id = R.product_id
where "P".account_id in (
    select account_id
    from "Member"
    where email ='hdkhang1504@gmail.com'
)
group by pid
having AVG(rating) >= 4;

