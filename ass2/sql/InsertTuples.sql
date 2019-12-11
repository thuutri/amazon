-- Table: Member:
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Hoang Dinh Khang', 'hdkhang1504@gmail.com', '123456', '0335795051');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Vo Khac Thanh', 'vkthanh@gmail.com', '123456', '0134564684');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Tran Huu Tri', 'thhtri@gmail.com', '123456', '0465156875');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Cap Dang Xuan Kiet', 'cdxkiet@gmail.com', '123456', '0943198415');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Le Duc Anh Tai', 'ldatai@gmail.com', '123456', '0846516843');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Nguyen Duong Minh Tam Dat', 'ndmtdat@gmail.com', '123456', '0745466879');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Nguyen Trong Trung', 'nttrung@gmail.com', '123456', '0646121684');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Tran Duc Luan', 'tdluan@gmail.com', '123456', '0646516682');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Nguyen Viet Long', 'nvlong@gmail.com', '123456', '0146451387');
INSERT INTO "Member"("name", email, "password", phone_num)
    VALUES ('Nguyen Vu Hoang Phuc', 'nvhphuc@gmail.com', '123456', '0867136615');


-- Table: Buyer default_addr
INSERT INTO Buyer(membership_stt, default_addr, account_id) VALUES
    (10, 'Hoang Dinh Khang, Binh An Hotel, Linh Trung Ward, 0335795051, Thu Duc District, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Hoang Dinh Khang')),
    (11, 'Le Duc Anh Tai, 243 Le Dai Hanh Street, 0846516843, District 1, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Le Duc Anh Tai')),
    (12, 'Vo Khac Thanh, 13 Thang 3 Street, 0134564684, District 2, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Vo Khac Thanh')),
    (13, 'Nguyen Duong Minh Tam Dat, 84-32 Le Lai, 0745466879, District 3, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Nguyen Duong Minh Tam Dat')),
    (14, 'Nguyen Trong Trung, 214 Le Duan, Binh Hung Hoa Ward, 0646121684, District 4, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Nguyen Trong Trung')),
    (15, 'Tran Huu Tri, 31-2 Leonardo de Foe Street, Binh Tan Ward, 0465156875, District 5, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Tran Huu Tri')),
    (17, 'Tran Duc Luan, 41 Vo Thi Sau Street, 0646516682, District 6, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Tran Duc Luan')),
    (18, 'Nguyen Vu Hoang Phuc, 20 Le Duc Tho Street, Phu My Hung Ward, 0867136615, District 7, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Nguyen Vu Hoang Phuc')),
    (19, 'Cap Dang Xuan Kiet, 1 Vo Nguyen Giap Street, Tan Phu Ward, 0943198415, District 8, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Cap Dang Xuan Kiet')),
    (20, 'Nguyen Viet Long, 1222 Pham Van Dong Street, Van Hanh Ward, 0146451387, District 9, Ho Chi Minh City, Vietnam, 700000', (select account_id from "Member" where "name" = 'Nguyen Viet Long'));
    

--Table: Seller
INSERT INTO Seller(phone_num, addr, country, card_num, card_expr_date, card_holder_name, zip, comp_name, account_id) VALUES
    ('0344849457', 'The dormitory A, Thu Duc district, HCM city', 'Vietnam', '4645168465136488', '2022-06-01', 'Le Duc Anh Tai', '840000', 'Hana Shop', (select account_id from "Member" where "name" = 'Le Duc Anh Tai')),
    ('0546132188', 'Independence Pallace, District 1, HCM city', 'Vietnam', '1648461654564849', '2022-08-05', 'Hoang Dinh Khang', '84000', 'Weapons Shop', (select account_id from "Member" where "name" = 'Hoang Dinh Khang')),
    ('0216845334', 'Bay Hien intersection, Tan Binh District, HCM city', 'Vietnam', '1648413549895546', '2022-09-16', 'Vo Khac Thanh', '840000', 'Hello Kitty Shop', (select account_id from "Member" where "name" = 'Vo Khac Thanh')),
    ('0798781238', 'Giga Mall, Thu Duc district, HCM city', 'Vietnam', '4612246164131656', '2025-12-16', 'Cap Dang Xuan Kiet', '840000', 'Electronics Shop', (select account_id from "Member" where "name" = 'Cap Dang Xuan Kiet')),
    ('0481684843', 'Van Hanh Mall, District 10, HCM city', 'Vietnam', '7914941346134335', '2024-03-08', 'Nguyen Viet Long', '840000', 'Skincare Shop', (select account_id from "Member" where "name" = 'Nguyen Viet Long')),
    ('0166489134', 'Diamond Plaza, District 1, HCM city', 'Vietnam', '3454613345613565', '2021-04-15', 'Tran Huu Tri', '840000', 'Computer components shop', (select account_id from "Member" where "name" = 'Tran Huu Tri')),
    ('0151646464', 'Vincom plaza, District 2, HCM city', 'Vietnam', '8751341348416451', '2022-11-11', 'Nguyen Duong Minh Tam Dat', '840000', 'Clothing shop', (select account_id from "Member" where "name" = 'Nguyen Duong Minh Tam Dat')),
    ('0154131657', 'Ly Thuong Kiet Street, District 10, HCM city', 'Vietnam', '1846164312468215', '2020-01-01', 'Nguyen Trong Trung', '840000', 'Bra Shop', (select account_id from "Member" where "name" = 'Nguyen Trong Trung')),
    ('0167134848', '3/2 Street, District 11, HCM city', 'Vietnam', '8136845351653154', '2022-06-01', 'Tran Duc Luan', '840000', 'NOWSG', (select account_id from "Member" where "name" = 'Tran Duc Luan')),
    ('0185179444', 'Cach Mang Thang 8 street, District 3, HCM city', 'Vietnam', '0000354615445465', '2022-07-12', 'Nguyen Vu Hoang Phuc', '840000', 'TSUNSG', (select account_id from "Member" where "name" = 'Nguyen Vu Hoang Phuc'));
    

--Table: Friend
INSERT INTO Friend(account_id, faccount_id) VALUES
    ((select account_id from "Member" where "name"= 'Nguyen Vu Hoang Phuc'), (select account_id from "Member" where "name"= 'Hoang Dinh Khang')),
    ((select account_id from "Member" where "name"= 'Nguyen Viet Long'), (select account_id from "Member" where "name"= 'Nguyen Duong Minh Tam Dat')),
    ((select account_id from "Member" where "name"= 'Cap Dang Xuan Kiet'), (select account_id from "Member" where "name"= 'Vo Khac Thanh')),
    ((select account_id from "Member" where "name"= 'Nguyen Trong Trung'), (select account_id from "Member" where "name"= 'Tran Duc Luan')),
    ((select account_id from "Member" where "name"= 'Tran Huu Tri'), (select account_id from "Member" where "name"= 'Hoang Dinh Khang')),
    ((select account_id from "Member" where "name"= 'Le Duc Anh Tai'), (select account_id from "Member" where "name"= 'Nguyen Viet Long')),
    ((select account_id from "Member" where "name"= 'Nguyen Duong Minh Tam Dat'), (select account_id from "Member" where "name"= 'Nguyen Trong Trung')),
    ((select account_id from "Member" where "name"= 'Hoang Dinh Khang'), (select account_id from "Member" where "name"= 'Cap Dang Xuan Kiet')),
    ((select account_id from "Member" where "name"= 'Tran Duc Luan'), (select account_id from "Member" where "name"= 'Nguyen Viet Long')),
    ((select account_id from "Member" where "name"= 'Vo Khac Thanh'), (select account_id from "Member" where "name"= 'Tran Huu Tri'));


--Table: Product
INSERT INTO Product(stock, descript, product_name, brand, price, discount, account_id) VALUES
    (100, 'Leather and Synthetic
\nImported
\nRubber sole
\nPlatform measures approximately 1 inches inches
\nSturdy lace-up sneaker featuring cushioned midsole and two-tone heel pull
\nPadded tongue and collar. Soft fabric shoe lining. Contrast colored mesh fabric panels for cooling effect
\nLace-up vamp for centralized support
\nMemory Foam cushioned comfort insole
\nDLites super lightweight shock absorbing athletic midsole', 'Skechers Womens DLites', 'Skechers', 29.99, 50, (select account_id from Seller where comp_name = 'Hana Shop')),
    (100, 'Rubber sole
\nShaft measures approximately low-top from arch
\nMens shoes with modern style
\nRegular fit; Hugs the foot
\nKnit upper for breathability
\nRubber outsole for traction
\nEVA midsole for lightweight cushioning', 'adidas Run Knit Shoes', 'Adidas', 60.0, 20, (select account_id from Seller where comp_name= 'Hana Shop')),
    (100, 'Rubber sole
\nEva midsole and outsole for lightweight cushioning. Knit upper with sock like feel', 'adidas Tennis Hu Shoes', 'Adidas', 140.0, 40, (select account_id from Seller where comp_name= 'Hana Shop')),
    (100, 'Rubber sole
Shaft measures approximately low-top from arch', 'adidas Lux Clima Shoes', 'Adidas', 120.0, 60, (select account_id from Seller where comp_name= 'Hana Shop')),
    (100, 'Rubber sole
\nShaft measures approximately low-top from arch
\nboost is our most responsive cushioning ever: The more energy you give, the more you get
\nMolded EVA midsole plug on medial side for NMD aesthetic; Four-language branding on medial EVA insert', 'adidas NMD_r2 Shoes', 'Adidas', 230.0, 50, (select account_id from Seller where comp_name= 'Hana Shop')),
    (100, 'Rubber sole
\nShaft measures approximately low-top from arch
\nThe Flashback Runner gives a nod to the 70s runners with a fresh street-ready vibe for today.', 'adidas FLB_Runner Shoes', 'Adidas', 149.0, 95, (select account_id from Seller where comp_name= 'Hana Shop')),
    (100, 'Made of Plastic; Fake Sickle Weapon, Womens, Kids or Mens Grim Reaper Costume Accessory
\nPieces Twist Together for Quick Dress Up & Twist Apart for Easy Storage
\nLightweight & Perfect for Any Adult or Any Age Kids Halloween Costume', 'Grim Reapers Scythe', 'Sickle Weapon', 6.5, 0, (select account_id from Seller where comp_name= 'Weapons Shop')),
    (100, 'Child size costume Accessory Legolas sword
\nInspired by the hit Hobbit movies and officially licensed by Warner Bros
\nLight weight molded plastic weapon fun all year round but not meant for battle
\nSearch The Hobbit and Rubies for weapons, wigs, costumes and more - everything you need to complete that perfect costume', 'Long Blade Sword', 'The Rubies', 13.99, 10, (select account_id from Seller where comp_name= 'Weapons Shop')),
    (100, 'Twin blades extend out of either side of the haft in a crescent design
\nFour-flanged topper, designed for extra weight and design
\nComes complete with a display plaque', 'Battle axe', 'BladeUSA', 30.49, 10, (select account_id from Seller where comp_name= 'Weapons Shop')),
    (100, 'Made of Plastic', 'Knife', 'Forum Novelties', 2, 0, (select account_id from Seller where comp_name= 'Weapons Shop')),
    (100, '21 Inch Skeleton Double Axe Standard;One Size
\n- NEW - FREE SHIPPING!', 'Skeleton Double Axe', 'RG Costumes', 3.72, 0, (select account_id from Seller where comp_name= 'Weapons Shop'));
    
-- Table: Feature

INSERT INTO Feature (product_id, feature) VALUES ((select product_id from Product where product_name = 'Skechers Womens DLites' and account_id = (select account_id from Seller where comp_name = 'Hana Shop')), 'color=black, color=blue'),
	((select product_id from Product where product_name = 'adidas Run Knit Shoes' and account_id = (select account_id from Seller where comp_name = 'Hana Shop')), 'color=red, color=blue'),
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes' and account_id = (select account_id from Seller where comp_name = 'Hana Shop')), 'color=yellow, color=purple'),
	((select product_id from Product where product_name = 'adidas NMD_r2 Shoes' and account_id = (select account_id from Seller where comp_name = 'Hana Shop')), 'color=black, color=violet'),
	((select product_id from Product where product_name = 'adidas FLB_Runner Shoes' and account_id = (select account_id from Seller where comp_name = 'Hana Shop')), 'color=yellow, color=black, color=white'),
	((select product_id from Product where product_name = 'Grim Reapers Scythe' and account_id = (select account_id from Seller where comp_name = 'Weapons Shop')), 'color=black, height=120cm, sharpness=yes'),
	((select product_id from Product where product_name = 'Long Blade Sword' and account_id = (select account_id from Seller where comp_name = 'Weapons Shop')), 'color=white, height=150cm, sharpness=yes, decoration=no'),
	((select product_id from Product where product_name = 'Battle axe' and account_id = (select account_id from Seller where comp_name = 'Weapons Shop')), 'color=black, color=white, height=90cm, sharpness=no, decoration=emerald'),
	((select product_id from Product where product_name = 'Knife' and account_id = (select account_id from Seller where comp_name = 'Weapons Shop')), 'color=black, color=red, height=15cm, sharpness=no, decoration=no'),
	((select product_id from Product where product_name = 'Skeleton Double Axe' and account_id = (select account_id from Seller where comp_name = 'Weapons Shop')), 'color=black,  height=115cm, sharpness=yes, decoration=skeleton'),
	((select product_id from Product where product_name = 'adidas Tennis Hu Shoes' and account_id = (select account_id from Seller where comp_name = 'Hana Shop')), 'color=yellow, color=white, color=black');

-- Table: Buyer_Optional_Addr

INSERT INTO Buyer_Optional_Addr(account_id, optional_addr) VALUES ((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'vkthanh@gmail.com')), 'Vo Khac Thanh, Domitory Zone B, Room 417, Linh Trung Ward, 0399505707, Thu Duc District, Ho Chi Minh City, Vietnam, 700000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'vkthanh@gmail.com')), 'Le Thanh Vinh, Room 423, Linh Dong Ward, 0386441224, Thu Duc District, Ho Chi Minh City, Vietnam, 700000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'hdkhang1504@gmail.com')), 'Hoang Dinh Khang, Happy Castle, Room 213, Linh Trung Ward, 0396473322, Thu Duc District, Ho Chi Minh City, Vietnam, 723418'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'nvlong@gmail.com')), 'Viet Dragon, Domitory Zone A, Room 823H2, Linh Trung Ward, 0288246642, Thu Duc District, Ho Chi Minh City, Vietnam, 700000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'thhtri@gmail.com')), 'Le Trung Vinh, Nguyen Khuyen Street, 0328514714, Binh Duong Province, Thu Dau Mot City, Vietnam, 710000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'cdxkiet@gmail.com')), 'Nguyen Thi Be Hai, Nguyen Du Street, 0923483314, Hai Lang District, Quang Tri Province, Vietnam, 790000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'nvhphuc@gmail.com')), 'Le Minh Trang, 142 Le Van Tam, 0384448884, Le Chi Thanh District, Binh Thuan Province, Vietnam, 730000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'nttrung@gmail.com')), 'Truong Thanh Tam, 914-255 Vo Van Ngan, 0919443334, 5th District, Ha Tinh Province, Vietnam, 630000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'ndmtdat@gmail.com')), 'Le Viet, 514 Khuong Van Street, 0123448774, Tuy Hoa District, Phu Yen Province, Vietnam, 740000'),
	((select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'tdluan@gmail.com')), 'Tran Huy, 13 Thang 3 Street, 0298417564, Tuy Hoa District, Binh Duong Province, Vietnam, 721548');

-- Table: Buyer_Card

INSERT INTO Buyer_Card(card_number, card_holder_name, card_expr_date, account_id ) VALUES ('4412124815971234', 'HOANG DINH KHANG', '2022-11-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'hdkhang1504@gmail.com'))),
	('4125784136541284', 'VO KHAC THANH', '2023-06-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'vkthanh@gmail.com'))),
	('3481121481487942', 'TRAN HUU TRI', '2020-12-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'thhtri@gmail.com'))),
	('6154784312487745', 'CAP DANG XUAN KIET', '2024-11-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'cdxkiet@gmail.com'))),
	('4422422147325555', 'LE DUC ANH TAI', '2021-11-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'ldatai@gmail.com'))),
	('3121484215473169', 'NGUYEN DUONG MINH TAM DAT', '2022-03-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'ndmtdat@gmail.com'))),
	('1111222244448888', 'NGUYEN TRONG TRUNG', '2021-02-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'nttrung@gmail.com'))),
	('6154218794531257', 'TRAN DUC LUAN', '2020-11-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'tdluan@gmail.com'))),
	('5214789412365487', 'NGUYEN VIET LONG', '2023-11-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'nvlong@gmail.com'))),
	('3154876498154236', 'NGUYEN VU HOANG PHUC', '2024-05-1', (select account_id from Buyer where account_id in (select account_id from "Member" where "email" = 'nvhphuc@gmail.com')));

-- Table: Category

INSERT INTO Category(category_name) VALUES ('Pet Supplies'),
	('Sports And Outdoors'),
	('Baby'),
	('Automotive'),
	('Arts and Crafts'),
	('Computers'),
	('Electronics'),
	('Fashion'),
	('Health and Household'),
	('Home and Kitchen'),
	('Software'),
	('Toys and Games');

-- Table: Subcategory

INSERT INTO Subcategory(category_id, subcategory_name) VALUES ((select category_id from Category where category_name = 'Pet Supplies'), 'Dogs'),
	((select category_id from Category where category_name = 'Pet Supplies'), 'Cats'),
	((select category_id from Category where category_name = 'Sports And Outdoors'), 'Outdoor Recreation'),
	((select category_id from Category where category_name = 'Sports And Outdoors'), 'Sports & Fitness'),
	((select category_id from Category where category_name = 'Baby'), 'Baby Care'),
	((select category_id from Category where category_name = 'Baby'), 'Feeding'),
	((select category_id from Category where category_name = 'Automotive'), 'Car Care'),
	((select category_id from Category where category_name = 'Automotive'), 'Oils & Fluids'),
	((select category_id from Category where category_name = 'Arts and Crafts'), 'Fabric'),
	((select category_id from Category where category_name = 'Arts and Crafts'), 'Needlework'),
	((select category_id from Category where category_name = 'Computers'), 'Data Storage'),
	((select category_id from Category where category_name = 'Computers'), 'Computer & Laptop'),
	((select category_id from Category where category_name = 'Electronics'), 'Home Audio'),
	((select category_id from Category where category_name = 'Electronics'), 'Television & Video'),
	((select category_id from Category where category_name = 'Fashion'), 'Men''s Fashion'),
	((select category_id from Category where category_name = 'Fashion'), 'Women''s Fashion'),
	((select category_id from Category where category_name = 'Health and Household'), 'Health Care'),
	((select category_id from Category where category_name = 'Health and Household'), 'Sports Nutrition'),
	((select category_id from Category where category_name = 'Home and Kitchen'), 'Furniture'),
	((select category_id from Category where category_name = 'Home and Kitchen'), 'Heating, Cooling'),
	((select category_id from Category where category_name = 'Software'), 'Music'),
	((select category_id from Category where category_name = 'Software'), 'Networking & Servers'),
	((select category_id from Category where category_name = 'Toys and Games'), 'Toys'),
	((select category_id from Category where category_name = 'Toys and Games'), 'Games');

-- Table: Contains

INSERT INTO "Contains"(category_id, subcategory_name, product_id) VALUES  ((select category_id from Subcategory where subcategory_name = 'Women''s Fashion'), 'Women''s Fashion',(select product_id from Product where product_name = 'Skechers Womens DLites')),
	((select category_id from Subcategory where subcategory_name = 'Women''s Fashion'), 'Women''s Fashion',(select product_id from Product where product_name = 'adidas Run Knit Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Men''s Fashion'), 'Men''s Fashion',(select product_id from Product where product_name = 'adidas Run Knit Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Women''s Fashion'), 'Women''s Fashion',(select product_id from Product where product_name = 'adidas Lux Clima Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Men''s Fashion'), 'Men''s Fashion',(select product_id from Product where product_name = 'adidas Lux Clima Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Women''s Fashion'), 'Women''s Fashion',(select product_id from Product where product_name = 'adidas NMD_r2 Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Men''s Fashion'), 'Men''s Fashion',(select product_id from Product where product_name = 'adidas NMD_r2 Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Women''s Fashion'), 'Women''s Fashion',(select product_id from Product where product_name = 'adidas FLB_Runner Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Men''s Fashion'), 'Men''s Fashion',(select product_id from Product where product_name = 'adidas FLB_Runner Shoes')),
	((select category_id from Subcategory where subcategory_name = 'Toys'), 'Toys',(select product_id from Product where product_name = 'Grim Reapers Scythe')),
	((select category_id from Subcategory where subcategory_name = 'Toys'), 'Toys',(select product_id from Product where product_name = 'Long Blade Sword')),
	((select category_id from Subcategory where subcategory_name = 'Toys'), 'Toys',(select product_id from Product where product_name = 'Battle axe')),
	((select category_id from Subcategory where subcategory_name = 'Toys'), 'Toys',(select product_id from Product where product_name = 'Knife')),
	((select category_id from Subcategory where subcategory_name = 'Toys'), 'Toys',(select product_id from Product where product_name = 'Skeleton Double Axe'));


-- Table: Shipment 

INSERT INTO Shipment(addr, ship_date, "method",	courier) VALUES	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'vkthanh@gmail.com')), '2019-02-03', 'Standard', 'Ship'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'hdkhang1504@gmail.com')), '2019-12-14', 'Standard', 'Van'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'vkthanh@gmail.com') limit 1 offset 1), '2019-03-27', 'Express', 'Truck'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'thhtri@gmail.com')), '2020-02-07', 'Standard', 'Ship'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'cdxkiet@gmail.com') limit 1), '2020-01-03', 'Standard', 'Van'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'cdxkiet@gmail.com') limit 1), '2019-08-26', 'Express', 'Truck'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nttrung@gmail.com')), '2019-10-09', 'Standard', 'Truck'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'nttrung@gmail.com') limit 1), '2009-03-18', 'Standard', 'Ship'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nvhphuc@gmail.com')), '2012-07-07', 'Standard', 'Ship'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'ndmtdat@gmail.com')), '2013-04-02', 'Standard', 'Ship'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'tdluan@gmail.com') limit 1), '2001-06-15', 'Express', 'Ship'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nvlong@gmail.com')), '2004-05-05', 'Standard', 'Ship');

-- Table: Payment

INSERT INTO Payment(billing_addr, paid_date, card_number, card_holder_name, card_expr_date, discount) VALUES ((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'vkthanh@gmail.com')), '2019-01-28', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com')), '0'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'hdkhang1504@gmail.com')), '2019-12-02', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'hdkhang1504@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'hdkhang1504@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'hdkhang1504@gmail.com')), '10'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'vkthanh@gmail.com') limit 1 offset 1), '2019-03-25', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com')), '0'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'thhtri@gmail.com')), '2020-02-07', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'thhtri@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'thhtri@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'thhtri@gmail.com')), '0'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'cdxkiet@gmail.com') limit 1), '2019-12-28', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com')), '5'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'cdxkiet@gmail.com') limit 1), '2019-08-15', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com')), '5'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nttrung@gmail.com')), '2019-09-30', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com')), '0'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'nttrung@gmail.com') limit 1), '2009-03-01', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com')), '0'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nvhphuc@gmail.com')), '2012-06-26', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvhphuc@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvhphuc@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvhphuc@gmail.com')), '0'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'ndmtdat@gmail.com')), '2013-03-25', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'ndmtdat@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'ndmtdat@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'ndmtdat@gmail.com')), '0'),
	((select optional_addr from Buyer_Optional_Addr where account_id in (select account_id from "Member" where email = 'tdluan@gmail.com') limit 1), '2001-06-04', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'tdluan@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'tdluan@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'tdluan@gmail.com')), '0'),
	((select default_addr from Buyer where account_id in (select account_id from "Member" where email = 'nvlong@gmail.com')), '2004-05-02', (select card_number from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com')), (select card_holder_name from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com')), (select card_expr_date from Buyer_Card where account_id in (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com')), '0');

-- Table: Order

INSERT INTO "Order" (account_id, total_price, order_date, shipping_id, payment_id) VALUES ((select account_id from buyer natural join "Member" where email = 'vkthanh@gmail.com'), '29.99', '2019-01-28', '1', '1'),
	((select account_id from buyer natural join "Member" where email = 'hdkhang1504@gmail.com'), '120.98', '2019-12-02', '2', '2'),
	((select account_id from buyer natural join "Member" where email = 'vkthanh@gmail.com'), '379.00', '2019-03-25', '3', '3'),
	((select account_id from buyer natural join "Member" where email = 'thhtri@gmail.com'), '480.00', '2020-02-07', '4', '4'),
	((select account_id from buyer natural join "Member" where email = 'cdxkiet@gmail.com'), '65.72', '2019-12-28', '5', '5'),
	((select account_id from buyer natural join "Member" where email = 'cdxkiet@gmail.com'), '279.8', '2019-08-15', '6', '6'),
	((select account_id from buyer natural join "Member" where email = 'nttrung@gmail.com'), '197.97', '2019-09-30', '7', '7'),
	((select account_id from buyer natural join "Member" where email = 'nttrung@gmail.com'), '24.44', '2009-03-01', '8', '8'),
	((select account_id from buyer natural join "Member" where email = 'nvhphuc@gmail.com'), '149.99', '2012-06-26', '9', '9'),
	((select account_id from buyer natural join "Member" where email = 'ndmtdat@gmail.com'), '55.8', '2013-03-25', '10', '10'),
	((select account_id from buyer natural join "Member" where email = 'tdluan@gmail.com'), '13.00', '2001-06-04', '11', '11'),
	((select account_id from buyer natural join "Member" where email = 'nvlong@gmail.com'), '149.0', '2004-05-02', '12', '12');


-- Table: Incldes

INSERT INTO Includes (product_id, order_id, quantity) VALUES ((select product_id from Product where product_name = 'Skechers Womens DLites'), '1', '1'),
	((select product_id from Product where product_name = 'adidas Run Knit Shoes'), '2', '1'),
	((select product_id from Product where product_name = 'Battle axe'), '2', '2'),
	((select product_id from Product where product_name = 'adidas FLB_Runner Shoes'), '3', '1'),
	((select product_id from Product where product_name = 'adidas NMD_r2 Shoes'), '3', '1'),
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes'), '4', '4'),
	((select product_id from Product where product_name = 'adidas Run Knit Shoes'), '5', '1'),
	((select product_id from Product where product_name = 'Knife'), '5', '1'),
	((select product_id from Product where product_name = 'Skeleton Double Axe'), '5', '2'),
	((select product_id from Product where product_name = 'Long Blade Sword'), '6', '20'),
	((select product_id from Product where product_name = 'adidas Tennis Hu Shoes'), '7', '1'),
	((select product_id from Product where product_name = 'Skechers Womens DLites'), '7', '1'),
	((select product_id from Product where product_name = 'Long Blade Sword'), '7', '2'),
	((select product_id from Product where product_name = 'Knife'), '8', '2'),
	((select product_id from Product where product_name = 'Skeleton Double Axe'), '8', '2'),
	((select product_id from Product where product_name = 'Grim Reapers Scythe'), '8', '2'),
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes'), '9', '1'),
	((select product_id from Product where product_name = 'Skechers Womens DLites'), '9', '1'),
	((select product_id from Product where product_name = 'Skeleton Double Axe'), '10', '15'),
	((select product_id from Product where product_name = 'Grim Reapers Scythe'), '11', '2'),
	((select product_id from Product where product_name = 'adidas FLB_Runner Shoes'), '12', '1');


--table: Refunds
INSERT INTO Refunds(order_id, product_id, account_id) 
    (select order_id, product_id, account_id from "Order" natural join Includes);

--table: Question
INSERT INTO Question(content, question_rate, account_id, product_id) VALUES
    ('Are these slip resistant...I dont see that listed in the product details?', 0,
        (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), (select product_id from Product where product_name = 'adidas Run Knit Shoes')),
    ('I am looking at the chart but i don not see an e. i see 2e and 3e, so what is an e? is e = wide?', 0,
        (select account_id from "Member" where email = 'vkthanh@gmail.com'), (select product_id from Product where product_name = 'adidas NMD_r2 Shoes')),
    ('Is it a safety shoes ?? has a metal in sole ???', 0,
        (select account_id from "Member" where email = 'cdxkiet@gmail.com'), (select product_id from Product where product_name = 'adidas Tennis Hu Shoes')),
    ('I have a pair of these shoes and want to replace them with the same but am not sure of the width. where is the width marked in the shoe?', 0,
        (select account_id from "Member" where email = 'thhtri@gmail.com'), (select product_id from Product where product_name = 'adidas FLB_Runner Shoes')),
    ('I want 8.5 w shoes #77032 eh. what is the correct ordering information?', 0,
        (select account_id from "Member" where email = 'ldatai@gmail.com'), (select product_id from Product where product_name = 'adidas FLB_Runner Shoes')),
    ('I am a machine operator, i stand all day on my feet with little movement, when i come home, my foot arches and toes are sore, will this fix that?', 0,
        (select account_id from "Member" where email = 'ndmtdat@gmail.com'), (select product_id from Product where product_name = 'adidas Run Knit Shoes')),
    ('Are the advertisement tags permanently on the shoe? Referring to the writing on the tongue and the base of the laces.', 0,
        (select account_id from "Member" where email = 'nttrung@gmail.com'), (select product_id from Product where product_name = 'Skechers Womens DLites')),
    ('What is the weight?', 0,
        (select account_id from "Member" where email = 'tdluan@gmail.com'), (select product_id from Product where product_name = 'adidas Lux Clima Shoes')),
    ('How would this hold up against a watermelon?', 0,
        (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), (select product_id from Product where product_name = 'Skeleton Double Axe')),
    ('could you use it to cut wood', 0,
        (select account_id from "Member" where email = 'vkthanh@gmail.com'), (select product_id from Product where product_name = 'Long Blade Sword')),
    ('How much can it handle? Like a tree? Or a bone', 0,
        (select account_id from "Member" where email = 'cdxkiet@gmail.com'), (select product_id from Product where product_name = 'Grim Reapers Scythe')),
    ('Is the blade steel suitable for engraving ?', 0,
        (select account_id from "Member" where email = 'thhtri@gmail.com'), (select product_id from Product where product_name = 'Skeleton Double Axe')),
    ('can it be used for sparring with other polyprolyene weapons?', 0,
        (select account_id from "Member" where email = 'ledatai@gmail.com'), (select product_id from Product where product_name = 'Battle axe')),
    ('Is it really only 3.5 lbs? Isnt that a little light for a 2 ft weapon?', 0,
        (select account_id from "Member" where email = 'ndmtdat@gmail.com'), (select product_id from Product where product_name = 'Knife')),
    ('Is this supposed to be bent on the long piece leading up to the actual axe? I think I received mine and its damaged.', 0,
        (select account_id from "Member" where email = 'nttrung@gmail.com'), (select product_id from Product where product_name = 'Long Blade Sword')),
    ('Is this battle ready? Will it not break if needed to defend oneself?', 0,
        (select account_id from "Member" where email = 'tdluan@gmail.com'), (select product_id from Product where product_name = 'Skeleton Double Axe')),
    ('What Age Is This For?', 0,
        (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), (select product_id from Product where product_name = 'Grim Reapers Scythe')),
    ('How sharp is it', 0,
        (select account_id from "Member" where email = 'vkthanh@gmail.com'), (select product_id from Product where product_name = 'Skeleton Double Axe')),
    ('could you cut down saplings with it?', 0,
        (select account_id from "Member" where email = 'cdxkiet@gmail.com'), (select product_id from Product where product_name = 'Knife'));
    
--Table: Answer:
INSERT INTO Answer(content, question_id, account_id) VALUES
    ('Yes. I am a mgr at a fast food restaurant and MUST have slip and oil resistant - and these are good ones. Also they are very comfortable 10+ hrs on feet.',
        '1', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('A D-width is considered a medium for men and a wide for women. It measures between 3 and 5 inches across the bottom of the ball of the foot, depending on your shoe size.',
        '2', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('No, they are comfortable work shoes for walking and standing but are NOT for protection and have no Metal sole. If you need that I would go with a good steel toe boot.',
        '3', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('It’s not heavy. No steel toe in it. Regular shoes weight.',
        '8', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('Hello, the width of the shoes is marked on the sole. It is in the arch area with a circle around it.',
        '4', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('Look to see if the shoes are available in your size. If they are not, you might have to order a different pair of shoes.',
        '5', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('I use these shoes along with Dr Scholls inserts (the good ones that are a bit more expensive than most others) and this has kept the arches on my feet from becoming sore or strained.',
        '6', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('The tag on the laces can be removed however the tag on the tongue of the shoe is printed on and cannot be removed.',
        '7', (select account_id from "Member" where email = 'nvhphuc@gmail.com')),
    ('Depends on the training and discipline the watermelon possesses.',
        '9', (select account_id from "Member" where email = 'nvlong@gmail.com')),
    ('1. No, its a display piece. 2. Why would you take a gorgeous axe like this to cut wood with?? I mean, seriously....',
        '10', (select account_id from "Member" where email = 'nvlong@gmail.com')),
    ('Mine is quite sharp and has some weight to it........I would not like to be on the receiving end......',
        '11', (select account_id from "Member" where email = 'nvlong@gmail.com')),
    ('Should be fine for engraving. Actually thats a great idea...i just might get mine done.',
        '12', (select account_id from "Member" where email = 'nvlong@gmail.com')),
    ('I would highly not recommend sparring with this weapon. When you say polyprolyene I assume you are talking about a full plastic or foam piece.',
        '13', (select account_id from "Member" where email = 'nvlong@gmail.com')),
    ('Its not a weapon , you can hang it on your wall , hit something with it and it will most likely break',
        '14', (select account_id from "Member" where email = 'nvlong@gmail.com')),
    ('I got mine without any bending - straight as an axe is supposed to be...',
        '15', (select account_id from "Member" where email = 'nvlong@gmail.com')),
    ('This is not battle ready. But a real weapon for defend',
        '16', (select account_id from "Member" where email = 'nvlong@gmail.com'));
    

--Table: Vote
INSERT INTO Votes(question_id, account_id, isUpVote) VALUES
    ('1', (select account_id from "Member" where email = 'nvlong@gmail.com'), TRUE),
    ('1', (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), TRUE),
    ('1', (select account_id from "Member" where email = 'vkthanh@gmail.com'), TRUE),
    ('2', (select account_id from "Member" where email = 'nvlong@gmail.com'), TRUE),
    ('2', (select account_id from "Member" where email = 'ndmtdat@gmail.com'), TRUE),
    ('2', (select account_id from "Member" where email = 'nttrung@gmail.com'), TRUE),
    ('2', (select account_id from "Member" where email = 'cdxkiet@gmail.com'), TRUE),
    ('2', (select account_id from "Member" where email = 'thhtri@gmail.com'), TRUE),
    ('2', (select account_id from "Member" where email = 'ldatai@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'nvhphuc@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'ndmtdat@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'ldatai@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'tdluan@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'nttrung@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'thhtri@gmail.com'), TRUE),
    ('3', (select account_id from "Member" where email = 'cdxkiet@gmail.com'), TRUE),
    ('4', (select account_id from "Member" where email = 'cdxkiet@gmail.com'), TRUE),
    ('5', (select account_id from "Member" where email = 'tdluan@gmail.com'), TRUE),
    ('5', (select account_id from "Member" where email = 'nvhphuc@gmail.com'), TRUE),
    ('5', (select account_id from "Member" where email = 'cdxkiet@gmail.com'), TRUE),
    ('6', (select account_id from "Member" where email = 'nttrung@gmail.com'), TRUE),
    ('6', (select account_id from "Member" where email = 'ndmtdat@gmail.com'), TRUE),
    ('6', (select account_id from "Member" where email = 'tdluan@gmail.com'), TRUE),
    ('6', (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), TRUE),
    ('7', (select account_id from "Member" where email = 'ldatai@gmail.com'), TRUE),
    ('8', (select account_id from "Member" where email = 'cdxkiet@gmail.com'), TRUE),
    ('9', (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), TRUE),
    ('11', (select account_id from "Member" where email = 'vkthanh@gmail.com'), TRUE),
    ('12', (select account_id from "Member" where email = 'tdluan@gmail.com'), TRUE),
    ('13', (select account_id from "Member" where email = 'nvhphuc@gmail.com'), TRUE),
    ('14', (select account_id from "Member" where email = 'nvlong@gmail.com'), TRUE),
    ('15', (select account_id from "Member" where email = 'thhtri@gmail.com'), TRUE),
    ('16', (select account_id from "Member" where email = 'thhtri@gmail.com'), TRUE),
    ('17', (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), TRUE);
    

--Table: Review
INSERT INTO Review(cmt, rating, account_id, product_id) VALUES
    ('I got these shoes for work. I used them for about ten weeks with an average of 25 hours a week. They fell apart rather quickly. If you are looking for a quality shoe for work this is not it.',
        1, (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), (select product_id from Product where product_name = 'adidas Run Knit Shoes')),
    ('Shoe fits comfortably, very cheaply made though. After 5 weeks, the outside of the both shoes blew out.',
        1, (select account_id from "Member" where email = 'vkthanh@gmail.com'), (select product_id from Product where product_name = 'adidas FLB_Runner Shoes')),
    ('I have tried many work shoes with no success in finding comfort. Before purchasing this shoe, I went to the outlet in the mall to try on the shoe. It seemed comfy and the width was too wide for my feet. So I decided to order via Amazon the Medium that I also tried at the outlet, it arrived very fast as always...thanks Amazon. I bent the shoe for some time to break in the stiffness.',
        3, (select account_id from "Member" where email = 'cdxkiet@gmail.com'), (select product_id from Product where product_name = 'adidas NMD_r2 Shoes')),
    ('This shoe is the pinnacle of technology for slip resistant shoes.
If Michael Jordan and LeBron James were both in the restaurant industry. Then LeBron wore these shoes, he would actually be better than Michael Jordan.',
        5, (select account_id from "Member" where email = 'thhtri@gmail.com'), (select product_id from Product where product_name = 'Skechers Womens DLites')),
    ('A great value for a reasonably comfortable, very durable pair of shoes!',
        4, (select account_id from "Member" where email = 'nttrung@gmail.com'), (select product_id from Product where product_name = 'adidas FLB_Runner Shoes')),
    ('3.0 out of 5 starsDecent work shoe but get the Keystone instead if you can',
        3, (select account_id from "Member" where email = 'ndmtdat@gmail.com'), (select product_id from Product where product_name = 'adidas Lux Clima Shoes')),
    ('I bought these shoes for my husband in April. He said that they are comfortable to wear, which is important and he is a handyman for a rental company, doing repairs on summer beach houses.',
        2, (select account_id from "Member" where email = 'hdkhang1504@gmail.com'), (select product_id from Product where product_name = 'adidas NMD_r2 Shoes')),
    ('5.0 out of 5 starsGREAT SHOE FOR OLD WORKING FEET',
        5, (select account_id from "Member" where email = 'tdluan@gmail.com'), (select product_id from Product where product_name = 'adidas Run Knit Shoes')),
    ('Great value piece for your wall.',
        5, (select account_id from "Member" where email = 'ldatai@gmail.com'), (select product_id from Product where product_name = 'Long Blade Sword')),
    ('Just what we were looking for to go with our family crest. Very well made and heavy. No doubt in my mind these could be used in real combat if necessary.These are not plastic toys. If your looking for a beautiful axe This is the real deal.',
        5, (select account_id from "Member" where email = 'thhtri@gmail.com'), (select product_id from Product where product_name = 'Skeleton Double Axe')),
    ('Exceeded all the expectations',
        3, (select account_id from "Member" where email = 'nvhphuc@gmail.com'), (select product_id from Product where product_name = 'Battle axe')),
    ('Very nice display piece.',
        4, (select account_id from "Member" where email = 'cdxkiet@gmail.com'), (select product_id from Product where product_name = 'Battle axe'));


-- Table: Product_picture

INSERT INTO Product_picture (product_id, picture) VALUES ((select product_id from Product where product_name = 'adidas Run Knit Shoes' limit 1), 'adidas_rks_1.jpeg'),
	((select product_id from Product where product_name = 'adidas Run Knit Shoes' limit 1), 'adidas_rks_2.jpeg'),
	((select product_id from Product where product_name = 'adidas Run Knit Shoes' limit 1), 'adidas_rks_3.jpeg'),	
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes' limit 1), 'adidas_lcs_1.jpeg'),
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes' limit 1), 'adidas_lcs_2.jpeg'),
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes' limit 1), 'adidas_lcs_3.jpeg'),
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes' limit 1), 'adidas_lcs_4.jpeg'),
	((select product_id from Product where product_name = 'adidas Lux Clima Shoes' limit 1), 'adidas_lcs_5.jpeg'),
	((select product_id from Product where product_name = 'adidas NMD_r2 Shoes' limit 1), 'adidas_r2_1.png'),
	((select product_id from Product where product_name = 'adidas NMD_r2 Shoes' limit 1), 'adidas_r2_2.png'),
	((select product_id from Product where product_name = 'adidas NMD_r2 Shoes' limit 1), 'adidas_r2_3.png'),
	((select product_id from Product where product_name = 'adidas FLB_Runner Shoes' limit 1), 'adidas_flbrs_2.png'),
	((select product_id from Product where product_name = 'adidas FLB_Runner Shoes' limit 1), 'adidas_flbrs_1.jpg'),
	((select product_id from Product where product_name = 'Grim Reapers Scythe' limit 1), 'scy1.jpg'),
	((select product_id from Product where product_name = 'Grim Reapers Scythe' limit 1), 'scy3.png'),
	((select product_id from Product where product_name = 'Long Blade Sword' limit 1), 'lbs1.jpeg'),
	((select product_id from Product where product_name = 'Long Blade Sword' limit 1), 'lbs2.png'),
	((select product_id from Product where product_name = 'Long Blade Sword' limit 1), 'long_battle_1.jpg'),
	((select product_id from Product where product_name = 'Long Blade Sword' limit 1), 'long_battle_2.png'),
	((select product_id from Product where product_name = 'Battle axe' limit 1), 'axe.png'),
	((select product_id from Product where product_name = 'Knife' limit 1), 'knife_toy1.jpg'),
	((select product_id from Product where product_name = 'Skeleton Double Axe' limit 1), 'ske_double_axe.png'),
	((select product_id from Product where product_name = 'Skeleton Double Axe' limit 1), 'skele_double_axe.jpg'),
	((select product_id from Product where product_name = 'adidas Tennis Hu Shoes' limit 1), 'ad_thshoes.png');

-- Table: List

INSERT INTO List(account_id, privacy, list_type) VALUES ((select account_id from "Member" where email = 'hdkhang1504@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'vkthanh@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'thhtri@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'cdxkiet@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'ldatai@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'ndmtdat@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'nttrung@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'tdluan@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'nvlong@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'nvhphuc@gmail.com'), 'true', '1'),
	((select account_id from "Member" where email = 'nvhphuc@gmail.com'), 'false', '2'),
	((select account_id from "Member" where email = 'cdxkiet@gmail.com'), 'false', '3'),
	((select account_id from "Member" where email = 'hdkhang1504@gmail.com'), 'true', '2'),
	((select account_id from "Member" where email = 'ndmtdat@gmail.com'), 'true', '3'),
	((select account_id from "Member" where email = 'nvlong@gmail.com'), 'false', '2'),
	((select account_id from "Member" where email = 'vkthanh@gmail.com'), 'false', '3');


-- Table: ConsistOf

INSERT INTO ConsistOf (product_id, account_id, list_name) VALUES ((select product_id from Product where product_name = 'adidas Run Knit Shoes' limit 1), (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com'), (select list_name from List where account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'Skeleton Double Axe' limit 1), (select account_id from Buyer natural join "Member" where email = 'nvhphuc@gmail.com'), (select list_name from List where list_type = '2' AND account_id in (select account_id from Buyer natural join "Member" where email = 'nvhphuc@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'adidas NMD_r2 Shoes' limit 1), (select account_id from Buyer natural join "Member" where email = 'ldatai@gmail.com'), (select list_name from List where account_id in (select account_id from Buyer natural join "Member" where email = 'ldatai@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'Long Blade Sword' limit 1), (select account_id from Buyer natural join "Member" where email = 'thhtri@gmail.com'), (select list_name from List where account_id in (select account_id from Buyer natural join "Member" where email = 'thhtri@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'adidas Run Knit Shoes' limit 1), (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com'), (select list_name from List where list_type = '2'  AND account_id in (select account_id from Buyer natural join "Member" where email = 'nvlong@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'Long Blade Sword' limit 1), (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com'), (select list_name from List where account_id in (select account_id from Buyer natural join "Member" where email = 'cdxkiet@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'Skeleton Double Axe' limit 1), (select account_id from Buyer natural join "Member" where email = 'hdkhang1504@gmail.com'), (select list_name from List where list_type = '2'  AND account_id in (select account_id from Buyer natural join "Member" where email = 'hdkhang1504@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'adidas NMD_r2 Shoes' limit 1), (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com'), (select list_name from List where list_type = '3'  AND account_id in (select account_id from Buyer natural join "Member" where email = 'vkthanh@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'Long Blade Sword' limit 1), (select account_id from Buyer natural join "Member" where email = 'tdluan@gmail.com'), (select list_name from List where account_id in (select account_id from Buyer natural join "Member" where email = 'tdluan@gmail.com') limit 1)),
	((select product_id from Product where product_name = 'Grim Reapers Scythe' limit 1), (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com'), (select list_name from List where account_id in (select account_id from Buyer natural join "Member" where email = 'nttrung@gmail.com') limit 1));
