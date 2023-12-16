

create table Restaurant(
	res_id varchar(4) primary key,
	res_name varchar(100),
	res_email varchar(50),
	res_contactnum numeric(10,0),
	res_username varchar(50),
	res_password varchar(50),
	latitude varchar(40),
	longitude varchar(40),
	res_street varchar(20),
	res_city varchar(20),
	res_state varchar(20),
	res_zipcode numeric(6)
);
INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R1','Spicy Venue','spicy@gmail.com',9876544321,'spicy','1234',987,678,'Jubli hills','Hyderabad','Telangana',500075);
INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R2','Makau','makau@gmail.com',9876545678,'makau','1234',987,678,'Jubli hills','Hyderabad','Telangana',500075);
INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R3','Telangana Spice','telangana@gmail.com',8907654321,'telangana','1234',268,168,'Jubli hills','Hyderabad','Telangana',500075);
INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R4','Sainma','sainma@gmail.com',7894561230,'sainma','1234',456,589,'Kompally','Hyderabad','Telangana',500055);
INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R6','1940 Military hotel','1940@gmail.com',8545478919,'military','1234',345,126,'Kondapur','Hyderabad','Telangana',500055);
INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R7','WOW Momos','wowmoms@gmail.com',8745478919,'momos','1234',345,126,'Hitech_city','Hyderabad','Telangana',500055);
INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R8','Varalaxmi Tiffins','varalaxmi@gmail.com',8888578919,'varalaxmi','1234',345,126,'DLF street','Hyderabad','Telangana',500055);
 INSERT INTO Restaurant (res_id ,res_name,res_email ,res_contactnum ,res_username ,res_password ,latitude ,longitude ,res_street ,res_city,res_state,res_zipcode )
VALUES ('R9','Milan Dhaba','Milan@gmail.com',7725578919,'Milan','1234',345,126,'Kukatpally','Hyderabad','Telangana',500055);


create table Customer(
	cus_id varchar(4) primary key,
	cus_firstname char(50),
	cus_lastname char(50),
	cus_email varchar(50),
	cus_contactnum numeric(10,0),
	cus_username varchar(50),
	cus_password varchar(50),
	cus_premium_member char(3),
	latitude varchar(40),
	longitude varchar(40),
	cus_street varchar(20),
	cus_city varchar(20),
	cus_state varchar(20),
	cus_zipcode numeric(6)	
);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C1','Kezia','Lankapalli','kezia@gmail.com',9876544321,'kezia','1234','yes',273,634,'Jubli hills','Hyderabad','Telangana',500075);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C2','Saketh','Reddy','saketh@gmail.com',7894561230,'saketh','1234','yes',367,675,'Jubli hills','Hyderabad','Telangana',500075);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C3','Rudra','Lenkala','rudra@gmail.com',8765412307,'rudra','1234','no',175,345,'Kompally','Hyderabad','Telangana',500055);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C4','Miriya','Jones','miriya@gmail.com',9871234560,'miriya','1234','yes',387,625,'Banjara hills','Hyderabad','Telangana',500065);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C5','Ashritha','A','ashritha@gmail.com',7890123456,'ashritha','1234','no',387,695,'Jubli hills','Hyderabad','Telangana',500055);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C6','Asta','A','asta@gmail.com',7887823456,'asta','1234','no',377,655,'kondapur','Hyderabad','Telangana',500055);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C7','Roy','R','roy@gmail.com',8854123456,'Roy','1234','no',377,655,'Hitech City','Hyderabad','Telangana',500055);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C8','Andy','A','andy@gmail.com',9521123456,'andy','1234','no',757,895,'Manikonda','Hyderabad','Telangana',500055);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C9','Uday','U','Uday@gmail.com',8543223456,'uday','1234','no',857,295,'Gachibowli','Hyderabad','Telangana',500055);
INSERT INTO Customer (cus_id ,cus_firstname, cus_lastname,cus_email ,cus_contactnum ,cus_username ,cus_password ,cus_premium_member,latitude ,longitude ,cus_street ,cus_city,cus_state,cus_zipcode )
VALUES ('C10','Yashu','Y','yashu@gmail.com',8978423456,'yashu','1234','no',365,675,'Khajaguda','Hyderabad','Telangana',500055);



create table Cuisine(
	menu_item_id varchar(4) primary key,
	menu_item_desc char(50),
	cuisine_name char(20),
	cuisine_group varchar(20)
);
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M1','Chicken Biryani','Indian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M2','Vegetable Biryani','Indian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M3','Pepper Chicken','Indian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M4','Chicken Lollipop','Indian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M5','Paneer 65','Indian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M6','Pad Thai','Asian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M7','Hakka Noddles','Asian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M8','Dumplings','Asian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M9','Momos','Asian','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M10','Crispy chicken Burger','American','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M11','Fries','American','Group1');
INSERT INTO Cuisine (menu_item_id,menu_item_desc ,cuisine_name ,cuisine_group)
VALUES ('M12','Veg Pizza','American','Group1');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M13', 'Margherita Pizza', 'Italian', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M14', 'Salmon Sashimi', 'Japanese', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M15', 'Guacamole', 'Mexican', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M16', 'Masala Dosa', 'South Indian', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M17', 'BBQ Ribs', 'American', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M18', 'Chicken Alfredo Pasta', 'Italian', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M19', 'Sushi Platter', 'Japanese', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M20', 'Enchiladas', 'Mexican', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M21', 'Idli Sambar', 'South Indian', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M22', 'Cheeseburger', 'American', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M23', 'Lasagna', 'Italian', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M24', 'Tempura', 'Japanese', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M25', 'Tacos', 'Mexican', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M26', 'Dhokla', 'South Indian', 'Group2');
INSERT INTO Cuisine (menu_item_id, menu_item_desc, cuisine_name, cuisine_group)
VALUES('M27', 'Caesar Salad', 'American', 'Group2');

create table Menu(
	menu_item_id varchar(4),
	res_id varchar(4),
	menu_item_rating numeric(2,1),
	menu_item_price numeric(5,2),
	primary key (menu_item_id,res_id),
	FOREIGN KEY (menu_item_id)
        REFERENCES Cuisine (menu_item_id),
	FOREIGN KEY (res_id)
        REFERENCES Restaurant (res_id)
	
);

INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M1','R1',4.5,390);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M2','R1',4.6,350);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M3','R1',4.3,300);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M4','R1',4.4,450);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M5','R1',4.5,400);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M6','R2',3.8,350);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M7','R2',4.5,390);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M8','R2',4.5,390);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M9','R2',4.5,390);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M10','R2',4.5,390);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M11','R2',4.5,390);
INSERT INTO Menu (	menu_item_id,res_id ,menu_item_rating ,menu_item_price )
VALUES ('M12','R2',4.5,390);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M13', 'R4', 4.3, 380);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M14', 'R4', 4.1, 350);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M15', 'R4', 4.5, 390);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M16', 'R4', 4.2, 420);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M17', 'R1', 4.6, 450);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M18', 'R2', 4.8, 480);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M19', 'R3', 4.5, 460);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M20', 'R4', 4.7, 470);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M21', 'R7', 4.4, 440);
INSERT INTO Menu (menu_item_id, res_id, menu_item_rating, menu_item_price)
VALUES ('M22', 'R8', 4.3, 420);


create table Orders(
	order_id varchar(4),
	menu_item_id varchar(4),
	cus_id varchar(4),
	res_id varchar(4),
	menu_item_qty int,
	primary key(order_id,menu_item_id),
	FOREIGN KEY (menu_item_id,res_id)
        REFERENCES Menu (menu_item_id,res_id),
	FOREIGN KEY (cus_id)
        REFERENCES Customer (cus_id),
	FOREIGN KEY (res_id)
        REFERENCES Restaurant (res_id)
);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O1','M2','C5','R1',1);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O2','M2','C3','R1',1);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty  )
VALUES ('O2','M4','C3','R1',2);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O3','M2','C1','R1',3);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O4','M7','C5','R2',1);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O4','M9','C5','R2',1);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O4','M12','C5','R2',1);

INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O5','M6','C2','R2',1);
INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O5','M7','C2','R2',1);

INSERT INTO Orders (order_id,menu_item_id,cus_id ,res_id ,menu_item_qty )
VALUES ('O6','M7','C1','R2',1);

create table Delivery_Person(
	dp_id varchar(4) primary key,
	dp_firstname char(50),
	dp_lastname char(50),
	dp_email varchar(50),
	dp_contactnum numeric(10,0),
	dp_username varchar(50),
	dp_password varchar(50)	
);

INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES ('D1','Moith','Kumar','mohitha@gmail.com',5678902431,'mohith','1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES ('D2','Shinde','Shetty','shinde@gmail.com',8796453210,'shetty','1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES ('D3','Piyush','Patel','piyush@gmail.com',8097564321,'patel','1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES ('D4','Joshi','Doshi','joshi@gmail.com',9870635412,'joshi','1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES ('D5','Anubhav','Shankar','anubhav@gmail.com',7809354261,'anubhav','1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES('D6', 'Aisha', 'Patil', 'aisha@gmail.com', 7654321098, 'aisha', '1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES('D7', 'Kunal', 'Joshi', 'kunal@gmail.com', 8765432109, 'kunal', '1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES('D8', 'Mira', 'Shah', 'mira@gmail.com', 9876543210, 'mira', '1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES('D9', 'Rajat', 'Gandhi', 'rajat@gmail.com', 8765432101, 'rajat', '1234');
INSERT INTO Delivery_Person (dp_id ,dp_firstname ,dp_lastname ,dp_email ,dp_contactnum ,dp_username ,dp_password )
VALUES('D10', 'Tanya', 'Kapoor', 'tanya@gmail.com', 7654321092, 'tanya', '1234');

create table Invoice(
	Invoice_id varchar(4) primary key,
	order_id varchar(4),
	dp_id varchar(4),
	payment_type char(10),
	invoice_amount numeric(10,2),
	discount_percent int,
	order_date datetime,
	FOREIGN KEY (dp_id)
        REFERENCES Delivery_Person (dp_id)

);

INSERT INTO Invoice (	Invoice_id ,order_id ,dp_id ,payment_type, invoice_amount ,discount_percent ,order_date  )
VALUES ('I1','O1','D1','Credit',1690,20,'2022-12-01 09:13:00');
INSERT INTO Invoice (	Invoice_id ,order_id ,dp_id ,payment_type, invoice_amount ,discount_percent ,order_date  )
VALUES ('I2','O2','D2','Cash',1250,20,'2022-11-29 10:15:00');
INSERT INTO Invoice (	Invoice_id ,order_id ,dp_id ,payment_type, invoice_amount ,discount_percent ,order_date  )
VALUES ('I3','O3','D3','Debit',1050,20,'2022-12-01 11:30:00');
INSERT INTO Invoice (	Invoice_id ,order_id ,dp_id ,payment_type, invoice_amount ,discount_percent ,order_date  )
VALUES ('I4','O4','D4','Cash',1170,20,'2022-12-01 11:30:00');
INSERT INTO Invoice (	Invoice_id ,order_id ,dp_id ,payment_type, invoice_amount ,discount_percent ,order_date  )
VALUES ('I5','O5','D4','Cash',740,20,'2022-12-02 11:45:00');
INSERT INTO Invoice (	Invoice_id ,order_id ,dp_id ,payment_type, invoice_amount ,discount_percent ,order_date  )
VALUES ('I6','O6','D1','Credit',390,20,'2022-12-02 11:49:00');

INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I7', 'O7', 'D2', 'Credit', 920, 15, '2023-06-15 14:30:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I8', 'O8', 'D3', 'Cash', 800, 10, '2023-05-20 12:45:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I9', 'O9', 'D4', 'Debit', 1350, 25, '2023-04-18 09:20:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I10', 'O10', 'D1', 'Credit', 670, 15, '2023-03-25 11:10:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I11', 'O11', 'D2', 'Cash', 1100, 20, '2023-02-10 15:15:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I12', 'O12', 'D3', 'Debit', 950, 10, '2023-01-05 16:40:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I13', 'O13', 'D4', 'Credit', 820, 15, '2023-07-08 13:20:00');

INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I14', 'O14', 'D1', 'Cash', 980, 10, '2023-08-12 14:45:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I15', 'O15', 'D2', 'Debit', 1200, 20, '2023-09-05 09:30:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I16', 'O16', 'D3', 'Credit', 750, 15, '2023-10-18 11:15:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I17', 'O17', 'D4', 'Cash', 890, 10, '2023-11-23 15:30:00');
INSERT INTO Invoice (Invoice_id, order_id, dp_id, payment_type, invoice_amount, discount_percent, order_date)
VALUES ('I18', 'O18', 'D1', 'Debit', 1100, 25, '2023-12-10 16:20:00');

create table Deals(
	week_day char(15),
	premium_membership char(3),
	discount_percent numeric(5,2),
	primary key (week_day,premium_membership)
);

INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Monday','yes',20);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Tuesday','yes',20);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Wednesday','yes',20);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Thursday','yes',20);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Friday','yes',20);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Saturday','yes',20);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Sunday','yes',20);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Monday','no',10);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Tuesday','no',10);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Wednesday','no',10);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Thursday','no',10);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Friday','no',10);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Saturday','no',10);
INSERT INTO Deals (week_day ,premium_membership ,discount_percent )
VALUES ('Sunday','no',10);

create table Rating(
	order_id varchar(4),
	menu_item_id varchar(4),
	restaurant_rating numeric(3,2),
	delivery_person_rating numeric(3,2),
	menu_item_rating numeric(3,2),
	primary key(order_id,menu_item_id)
	
);


INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O1','M1',4.5,4.9,4.3);
INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O1','M4',4.5,4.9,4.1);
INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O1','M3',4.5,4.9,4.5);
INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O2','M2',4.2,4.1,4.2);
INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O2','M4',4.2,4.1,4.8);

INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O4','M7',4,4.3,3.9);
INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O4','M9',4,4.3,4);
INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O4','M12',4,4.3,5);

INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O5','M6',4.5,4.2,5);
INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O5','M7',4.5,4.2,4);

INSERT INTO Rating (	order_id,menu_item_id,restaurant_rating ,delivery_person_rating ,menu_item_rating)
VALUES ('O6','M7',4.5,4.2,4);

INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O3', 'M2', 4.8, 4.4, 4.7);
INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O3', 'M7', 4.5, 4.3, 4.6);
INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O3', 'M9', 4.6, 4.5, 4.8);
INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O5', 'M9', 4.2, 4.1, 4.3);
INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O5', 'M12', 4.5, 4.2, 4.7);
INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O6', 'M1', 4.4, 4.3, 4.2);
INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O6', 'M4', 4.6, 4.5, 4.4);
INSERT INTO Rating (order_id, menu_item_id, restaurant_rating, delivery_person_rating, menu_item_rating)
VALUES ('O6', 'M6', 4.3, 4.1, 4.6);


    