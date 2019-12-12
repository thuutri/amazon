--Liet ke tat ca cac review cua 1 product co ten la adidas NMD_r2 Shoes
select R.*
from Product "P" left join Review R on "P".product_id = R.product_id
    inner join "Member" M on R.account_id = M.account_id
where "P".product_name = 'adidas NMD_r2 Shoes';

--Liet ke tat ca cac san pham trong cac don hang cua account co email la cdxkiet@gmail.com
select "P".*, O.order_id
from Product "P" inner join Includes I on "P".product_id = I.product_id
    inner join "Order" O on I.order_id = O.order_id
where O.account_id in (
    select account_id
    from "Member"
    where email = 'cdxkiet@gmail.com'
)
Order By O.order_id;

--Liet ke tat ca cac hoi + cau tra loi trong 1 product co ten la 'adidas NMD_r2 Shoes'
select Q.*, "A".*
from Product "P" left join Question Q on "P".product_id = Q.product_id
    left join Answer "A" on Q.question_id = "A".question_id
where "P".product_name = 'adidas NMD_r2 Shoes'
Order By Q.question_id;

--Liet ke tat ca cac order duoc ship bang truck cua account co email la vkthant@gmail.com
select O.*
from "Order" O natural join Shipment S
    natural join "Member" "M"
where "M".email = 'vkthanh@gmail.com' and S.courier = 'Truck';

--Liet ke cac san pham trong tat ca cac list cua account co email la nvhphuc@gmail.com
select "P".*, "P".account_id as seller_id, L.*
from List L left join ConsistOf "C" on L.account_id = "C".account_id and L.list_name = "C".list_name
    inner join Product "P" on "C".product_id = "P".product_id
where L.account_id in (
    select account_id
    from "Member"
    where email = 'nvhphuc@gmail.com'
)
Order By L.list_name;

select "P".product_id, "P".product_name, Count(Distinct C.category_id)
from Category C inner join Subcategory S on C.category_id = S.category_id
    inner join "Contains" CO on C.category_id = CO.category_id and S.subcategory_name = CO.subcategory_name
    inner join Product "P" on CO.product_id = "P".product_id
Group by "P".product_id
having COUNT(Distinct C.category_id) >= 2;


INSERT INTO "Contains"(category_id, subcategory_name, product_id) VALUES
((select category_id from Subcategory where subcategory_name = 'Toys'), 'Toys',(select product_id from Product where product_name = 'adidas NMD_r2 Shoes'));
