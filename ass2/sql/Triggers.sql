----------------------- TRIGGER

--- 1. Update stock on order checked
create or replace function update_stock()
	returns trigger as
$BODY$
declare 
	current_stock int;
begin
	select p.stock into current_stock
	from product as p
	where p.product_id = new.product_id;

	if current_stock < new.quantity then
		raise error_in_assignment;
	end if;

	update product
	set stock = stock - new.quantity							 
	where product.product_id = new.product_id;

	return null;
end;
$BODY$
language PLPGSQL;

create trigger trg_update_stock
	after insert 
	on includes
	for each row
	execute procedure update_stock();

--- 2. Update stock on product refund

create or replace function update_stock_on_refund()
	returns trigger as
$BODY$
declare
	quantity int;
begin
	select i.quantity into quantity
	from includes as i
	where i.order_id = new.order_id and i.product_id = new.product_id;

	update product
	set stock = stock + quantity
	where product.product_id = new.product_id;

	return null;
end;
$BODY$
language PLPGSQL;

create trigger trg_update_stock_on_refund
	after insert
	on refunds
	for each row
	execute procedure update_stock_on_refund();
	
--- 3. Create new cart for every new member

create or replace function create_cart()
	returns trigger as
$BODY$
begin
	insert into list(account_id, privacy, list_type) values (new.account_id, false, 1);
	return null;
end;
$BODY$
language PLPGSQL;

create trigger trg_create_cart_on_new_member
	after insert
	on "Member"
	for each row
	execute procedure create_cart();

--- 4. Calculate Order's total price based on included products

create or replace function calculate_total_price()
	returns trigger as
$BODY$
declare
	product_price int;
begin
	select p.price into product_price
	from product as p
	where p.product_id = new.product_id;

	update "Order" as o
	set total_price = total_price + product_price * new.quantity
	where o.order_id = new.order_id;

	return null;
end;
$BODY$
language PLPGSQL;

create trigger trg_calculate_total_price
	after insert 
	on includes
	for each row
	execute function calculate_total_price();

--- 5. Calculate question_rate of a question
create or replace function calculate_question_rate()
	returns trigger as
$BODY$
begin
	if new.isupvote then
		update question 
		set question_rate = question_rate + 1
		where question.question_id = new.question_id;
	else 
		update question 
		set question_rate = question_rate - 1
		where question.question_id = new.question_id;
	end if;
	
	return null;
end;
$BODY$
language PLPGSQL;


create trigger trg_calculate_question_rate
	after insert 
	on Votes
	for each row
	execute function calculate_question_rate();

--- 6. Re-calculate question rate if a vote is deleted

create or replace function recalculate_question_rate()
	returns trigger as
$BODY$
begin
	if old.isupvote then
		update question 
		set question_rate = question_rate - 1
		where question.question_id = old.question_id;
	else 
		update question 
		set question_rate = question_rate + 1
		where question.question_id = old.question_id;
	end if;
	
	return null;
end
$BODY$
language PLPGSQL;

create trigger trg_recalculate_question_rate
	before delete
	on Votes
	for each row
	execute function recalculate_question_rate();


	
	
	
	
	
	
	
	
