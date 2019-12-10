--------- STORED PROCEDURE

---- 1. Insert multiple pictures of a product_id into product_picture
create or replace procedure store_picture(prod_id int, picture_links text [])
as $BODY$
declare
	counter int := 1;
	looper int;
begin
  	looper := array_upper(picture_links, 1);
	while counter <= looper loop
		insert into Product_Picture(product_id, picture) values (prod_id, picture_links[counter]);
		counter := counter + 1;
	end loop;
	commit;
end;
$BODY$
language PLPGSQL;

call store_picture(3,array['a1.png','a2.png','a3.png']::text[]);

---- 2. Create order procedure

create or replace procedure create_order(acc_id int, ship_id int, pay_id int, product_list int [], quantity_list int [])
as $BODY$
declare
	counter int := 1;
	looper int;
	looper_2 int;
	this_order_id int;
begin
	insert into "Order"(account_id, total_price, order_date, shipping_id, payment_id) values (acc_id, 0, current_date, ship_id, pay_id);

	looper := array_upper(product_list, 1);
	looper_2 := array_upper(quantity_list, 1);

	if looper != looper_2 then
		raise string_data_length_mismatch;
		return;
	end if;

	select order_id into this_order_id
	from "Order"
	order by order_id desc limit 1;

	while counter <= looper loop
		insert into includes(order_id, product_id, quantity) values (this_order_id, product_list[counter], quantity_list[counter]);
		counter := counter + 1;
	end loop;
	commit;
end
$BODY$
language PLPGSQL;

insert into Shipment (addr, ship_date, "method", courier) values ((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nvlong@gmail.com')), '2019-05-05', 'Standard', 'Ship');
INSERT INTO Payment(billing_addr, paid_date, card_number, card_holder_name, card_expr_date, discount) values ((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nvlong@gmail.com')), '2019-05-02', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com')), '0');
call create_order(3, 14, 14, array[6,3,2,4]::int[], array[2,2,2,2]::int[]);

---- 3. Clear Buyer's cart

create or replace procedure clear_cart(acc_email text)
as $BODY$ 
declare
	l_id int;
	acc_id int;
begin
	select account_id, list_name
	into acc_id, l_id
	from list 
	natural join "Member"
	where email = acc_email and list_type = 1;

	delete 
	from consistof as c
	where c.account_id = acc_id and c.list_name = l_id;
	
end
$BODY$
language PLPGSQL;
	

call clear_cart('vkthanh@gmail.com');


---- 4. Apply discount on order
create or replace procedure apply_discount_on_order(ord_id int)
as $BODY$
declare 
	discount_percentage int := 0;
begin
	select discount
	into discount_percentage
	from payment as p
	where p.payment_id in (select payment_id
							from "Order" as o
							where o.order_id = ord_id);
						
	if discount_percentage = 0 then
		return;
	end if;

	update "Order" as o
	set total_price = total_price * (100 - discount_percentage) / 100
	where o.order_id = ord_id;

	commit;
end;
$BODY$
language PLPGSQL;
	
call apply_discount_on_order(2);

---- 5. Roll back discount on order
create or replace procedure rollback_discount_on_order(ord_id int)
as $BODY$
declare 
	discount_percentage int := 0;
begin
	select discount
	into discount_percentage
	from payment as p
	where p.payment_id in (select payment_id
							from "Order" as o
							where o.order_id = ord_id);
						
	if discount_percentage = 0 then
		return;
	end if;

	update "Order" as o
	set total_price = total_price * 100 / (100 - discount_percentage)
	where o.order_id = ord_id;

	commit;
end;
$BODY$
language PLPGSQL;
	
call rollback_discount_on_order(2);
