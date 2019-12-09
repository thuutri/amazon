
CREATE TABLE "Member" (
	account_id SERIAL NOT NULL PRIMARY KEY,
	"name" VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	"password" VARCHAR(20) NOT NULL,
	phone_num VARCHAR(20),
	UNIQUE (email)
);

CREATE TABLE Buyer (
	account_id 			INT 						NOT NULL	REFERENCES "Member"(account_id),
	membership_stt 		INT 						NOT NULL,
	default_addr 		VARCHAR(300) 				NOT NULL,
	PRIMARY KEY(account_id)
);

CREATE TABLE Shipment(
	shipping_id 		SERIAL 						NOT NULL,
	addr				VARCHAR(300)				NOT NULL,
	ship_date			DATE						NOT NULL,

	--varchar(50)
	"method"			VARCHAR(50)					NOT NULL,

	--varchar(50)
	courier				VARCHAR(50)					NOT NULL,
	PRIMARY KEY(shipping_id)
);

CREATE TABLE Payment(
	payment_id			SERIAL						NOT NULL,
	gift				VARCHAR(10),
	billing_addr		VARCHAR(300),
	paid_date			DATE,

	/*
	card				varchar(20),
	*/

	card_number 		VARCHAR(20) 				NOT NULL,
	card_holder_name 	VARCHAR(50) 				NOT NULL,
	card_expr_date 		DATE 						NOT NULL,

	--integer 0-99
	
	discount			integer						CHECK(discount >= 0 AND discount <= 99),
	PRIMARY KEY(payment_id)
);

CREATE TABLE "Order"(
	order_id			SERIAL						NOT NULL,
	account_id			integer						REFERENCES Buyer(account_id),

	--decimal()
	total_price			decimal						NOT NULL	CHECK(total_price >= 0),
	order_date			DATE						NOT NULL,
	shipping_id			integer						REFERENCES Shipment(shipping_id)	ON DELETE CASCADE,
	payment_id			integer						REFERENCES Payment(payment_id)		ON DELETE CASCADE,
	PRIMARY KEY(order_id),
	UNIQUE(shipping_id),
	UNIQUE(payment_id)
);

CREATE TABLE Buyer_Card (
	card_number 		VARCHAR(20) 				NOT NULL,
	card_holder_name 	VARCHAR(50) 				NOT NULL,
	card_expr_date 		DATE 						NOT NULL,
	account_id 			INT 						REFERENCES Buyer(account_id),
	PRIMARY KEY (account_id, card_number)
);

CREATE TABLE Buyer_Optional_Addr (
	account_id 			INT 						NOT NULL	REFERENCES Buyer(account_id)	ON DELETE CASCADE,
	optional_addr 		VARCHAR(300) 				NOT NULL,
	PRIMARY KEY(account_id, optional_addr)
);

CREATE TABLE Friend (
	account_id 			INT 						REFERENCES "Member"(account_id)		ON DELETE CASCADE,
	faccount_id 		INT 						REFERENCES "Member"(account_id)		ON DELETE CASCADE,
	PRIMARY KEY (account_id, faccount_id)
);

CREATE TABLE List (
	account_id 			INT 						REFERENCES "Member"(account_id)		ON DELETE CASCADE,

	--SERIAL
	list_name 			SERIAL		 				NOT NULL,
	privacy 			boolean 					NOT NULL,

	--integer
	list_type 			integer,
	PRIMARY KEY (account_id, list_name)
);

CREATE TABLE Seller (
	account_id 			integer 					REFERENCES "Member"(account_id)		ON DELETE CASCADE,

	--varchar(20)
	phone_num 			VARCHAR(20),

	--varchar(300)
	addr 				VARCHAR(300),
	country 			VARCHAR(20),
	card_num 			varchar(20) 				NOT NULL,
	card_expr_date 		DATE 						NOT	NULL,
	card_holder_name	VARCHAR(30)					NOT NULL,

	--varchar(10)
	zip					VARCHAR(10)					NOT NULL,

	--varchar(100)
	comp_name			VARCHAR(100),
	PRIMARY KEY(account_id)
);

CREATE TABLE Product (

	--Serial
	product_id			SERIAL						NOT NULL,
	stock				integer						NOT NULL						CHECK(stock >= 0),
	descript			text,
	product_name		VARCHAR(30)					NOT NULL,
	brand 				VARCHAR(30)					NOT NULL,

	--decimal
	price				decimal						NOT NULL						CHECK(price >= 0),
	account_id			integer						NOT NULL	REFERENCES Seller(account_id)		ON DELETE CASCADE,

	--integer 0--99
	discount			integer						NOT NULL 						CHECK(discount>=0 AND discount <= 99),
	PRIMARY KEY (product_id)
);

CREATE TABLE ConsistOf (
	product_id 			integer						NOT NULL	REFERENCES Product(product_id),
	account_id			integer						NOT NULL,
	list_name			integer						NOT NULL,
	PRIMARY KEY (product_id, account_id, list_name),
	CONSTRAINT fk_list_consist FOREIGN KEY (account_id, list_name) REFERENCES List(account_id, list_name)
);
CREATE TABLE Product_Picture(
	product_id			integer						NOT NULL	REFERENCES Product(product_id)		ON DELETE CASCADE,
	picture 			text						NOT NULL,
	PRIMARY KEY (product_id, picture)			
);

CREATE TABLE Feature(
	product_id			integer						NOT NULL	REFERENCES Product(product_id)		ON DELETE CASCADE,
	feature				text						NOT NULL,
	PRIMARY Key (product_id, feature)
);

CREATE TABLE Review(
	review_id			SERIAL						NOT NULL,
	cmt					text,
	rating				smallint					CHECK (rating >= 1 AND rating <= 5),
	account_id			integer						REFERENCES Buyer(account_id)		ON DELETE CASCADE,
	product_id			integer						REFERENCES Product(product_id)		ON DELETE CASCADE,
	PRIMARY KEY(review_id)
);

CREATE TABLE Category(

	--serial
	category_id			SERIAL						NOT NULL,
	category_name		VARCHAR(30),
	PRIMARY KEY (category_id),
	UNIQUE (category_name)
);

CREATE TABLE Subcategory(
	category_id			integer						NOT NULL	REFERENCES Category(category_id)		ON DELETE CASCADE,
	subcategory_name	VARCHAR(30)					NOT NULL,
	PRIMARY KEY (category_id, subcategory_name)
);

CREATE TABLE "Contains"(
	category_id			integer						NOT NULL,
	subcategory_name	VARCHAR(30),
	product_id			integer 					NOT NULL	REFERENCES Product(product_id),
	PRIMARY KEY(subcategory_name, product_id),
	CONSTRAINT fk_contain_subcategory FOREIGN KEY (category_id, subcategory_name) REFERENCES Subcategory(category_id, subcategory_name)
);

CREATE TABLE Includes(
	product_id			integer						REFERENCES Product(product_id),
	order_id			integer						REFERENCES "Order"(order_id),
	quantity			integer						CHECK (quantity >= 0),
	PRIMARY KEY	(product_id, order_id)
);

CREATE TABLE Refunds(
	order_id			integer						REFERENCES "Order"(order_id)	ON DELETE CASCADE,
	product_id			integer						REFERENCES Product(product_id)	ON DELETE CASCADE,
	account_id			integer						REFERENCES Buyer(account_id)	ON DELETE CASCADE,
	PRIMARY KEY	(product_id, order_id)
);

CREATE TABLE Question(

	--serial
	question_id			SERIAL						NOT NULL,
	content				text						NOT NULL,
	question_rate		smallint					NOT NULL CHECK(question_rate >= 0 AND question_rate <= 5),
	account_id			integer						REFERENCES "Member"(account_id),
	product_id			integer						REFERENCES Product(product_id),
	PRIMARY KEY(question_id)
);

CREATE TABLE Votes(
	question_id			integer						REFERENCES Question(question_id),
	account_id			integer						REFERENCES "Member"(account_id),
	IsUpVote			boolean						NOT NULL,
	PRIMARY KEY (question_id, account_id)
);

CREATE TABLE Answer(

	--serial
	answer_id			SERIAL						NOT NULL,						
	content				text						NOT NULL,
	question_id			integer						REFERENCES Question(question_id),
	account_id			integer						REFERENCES "Member"(account_id),
	PRIMARY KEY	(answer_id)
);

