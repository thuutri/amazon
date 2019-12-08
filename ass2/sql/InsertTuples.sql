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


-- Table: Buyer
INSERT INTO Buyer(membership_stt, default_addr, account_id) VALUES
    (10, 'Thu Duc district, HCM city', (select account_id from "Member" where "name" = 'Hoang Dinh Khang')),
    (11, 'District 1, HCM city', (select account_id from "Member" where "name" = 'Le Duc Anh Tai')),
    (12, 'District 2, HCM city', (select account_id from "Member" where "name" = 'Vo Khac Thanh')),
    (13, 'District 3, HCM city', (select account_id from "Member" where "name" = 'Nguyen Duong Minh Tam Dat')),
    (14, 'District 4, HCM city', (select account_id from "Member" where "name" = 'Nguyen Trong Trung')),
    (15, 'District 5, HCM city', (select account_id from "Member" where "name" = 'Tran Huu Tri')),
    (17, 'District 6, HCM city', (select account_id from "Member" where "name" = 'Tran Duc Luan')),
    (18, 'District 7, HCM city', (select account_id from "Member" where "name" = 'Nguyen Vu Hoang Phuc')),
    (19, 'District 8, HCM city', (select account_id from "Member" where "name" = 'Cap Dang Xuan Kiet')),
    (20, 'District 9, HCM city', (select account_id from "Member" where "name" = 'Nguyen Viet Long'));
    

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
    

--Table: Buyer_card
INSERT INTO Buyer_Card(card_number, card_expr_date, card_holder_name, account_id) VALUES
    ('1323136587554621', '2023-05-05', 'Hoang Dinh Khang', (select account_id from "Member" where "name" = 'Hoang Dinh Khang')),
    ('4513565165641365', '2021-06-06', 'Nguyen Duong Minh Tam Dat', (select account_id from "Member" where "name"='Nguyen Duong Minh Tam Dat')),
    ('4384606549841655', '2021-07-07', 'Tran Duc Luan', (select account_id from "Member" where "name"='Tran Duc Luan')),
    ('6216216132216516', '2021-08-08', 'Cap Dang Xuan Kiet', (select account_id from "Member" where "name"='Cap Dang Xuan Kiet')),
    ('8983516411351651', '2021-09-09', 'Le Duc Anh Tai', (select account_id from "Member" where "name"='Le Duc Anh Tai')),
    ('7945651656132513', '2021-10-10', 'Vo Khac Thanh', (select account_id from "Member" where "name"='Vo Khac Thanh')),
    ('0130612065056460', '2021-11-11', 'Nguyen Trong Trung', (select account_id from "Member" where "name"='Nguyen Trong Trung')),
    ('0313065650216052', '2021-12-12', 'Nguyen Viet Long', (select account_id from "Member" where "name"='Nguyen Viet Long')),
    ('1314603460610283', '2021-01-01', 'Tran Huu Tri', (select account_id from "Member" where "name"='Tran Huu Tri')),
    ('4812056413206546', '2021-02-02', 'Nguyen Vu Hoang Phuc', (select account_id from "Member" where "name"='Nguyen Vu Hoang Phuc'));
    

