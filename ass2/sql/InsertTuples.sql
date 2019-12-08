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
    