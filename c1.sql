DROP DATABASE cement_database;
CREATE DATABASE cement_database;
\c cement_database


create table cement
(
	type varchar(10) primary key ,
	price int NOT NULL,
	quantity_per_bag int NOT NULL,
	specific_usage varchar(100),
	company_id varchar(15)
);

create table cement_orders
(
	order_no varchar(15) ,
	quantity int NOT NULL,
	type varchar(10),
	primary key(order_no,type)
	
);
create table company
(
	company_id varchar(15) primary key ,
	location varchar(100) NOT NULL,
	CEO char(30) NOT NULL,
	company_name char(30) NOT NULL
);
create table competitors
(
	company_name char(20),
	area varchar(30) NOT NULL,
	company_id varchar(15),
	primary key(company_name,area)	
);

create table competitors_details
(
	type varchar(10),
	area varchar(30) NOT NULL,
	sales_price int,
	quantity int,
	company_name char(20) NOT NULL,
	primary key(company_name,area,type)
);

create table dealers
(
	GST_NO varchar(15) primary key ,
	shop_name char(30) NOT NULL,
	dealers_name char(30) NOT NULL,
	office_no bigint check(office_no<=9999999999),
	personal_no bigint NOT NULL check(personal_no<=9999999999),
	credit_amount int,
	average_sales_per_month int,
	area varchar(30) NOT NULL,
	emp_id varchar(15) NOT NULL,
	company_id varchar(15)
);

create table dumps
(
	area varchar(30) primary key ,
	address varchar(50) NOT NULL,
	capacity int NOT NULL,
	emp_id varchar(15) NOT NULL,
	company_id varchar(15)
);

create table employees
(
	emp_id varchar(15) primary key ,
	first_name char(30) NOT NULL,
	last_name char(30) NOT NULL,
	salary int NOT NULL,
	phone_no_1 bigint check(phone_no_1<=9999999999),
	phone_no_2 bigint check(phone_no_2<=9999999999),
	email_id varchar(30) NOT NULL,
	supervisor_id varchar(15),
	company_id varchar(15) NOT NULL
);

create table non_traders
(
	GST_NO varchar(15) primary key ,
	developers_name char(30) NOT NULL,
	project_duration int NOT NULL,
	personal_no bigint check(personal_no<=9999999999),
	average_sales_per_month int,
	area varchar(30) NOT NULL,
	emp_id varchar(15) NOT NULL,
	company_id varchar(15)
);
create table orders
(
	order_no varchar(15) primary key ,
	date_of_delivery date,
	date_of_dispatch date,
	date_of_order date NOT NULL,
	company_id varchar(15) NOT NULL,
	dealer_GST_NO varchar(15),
	non_traders_GST_NO varchar(15),
	status char(15) NOT NULL
);
create table bill
(
	bill_no varchar(15),
	transport_charges int NOT NULL,
	tax int NOT NULL,
	discount int,
	order_no varchar(15) references orders(order_no),
	primary key(order_no,bill_no)
);
create table production
(
	batch_id varchar(15) primary key ,
	quantity int NOT NULL,
	date_of_production date NOT NULL,
	type varchar(10) NOT NULL,
	transfer_id varchar(15) NOT NULL,
	company_id varchar(15)
);

create table rakes
(
	transfer_id varchar(15) primary key ,
	date_of_arrival date NOT NULL,
	date_of_dispatch date NOT NULL,
	area varchar(30) NOT NULL,
	mode_of_freight varchar(20) NOT NULL,
	company_id varchar(15)
);

create table storage
(
	area varchar(30),
	type varchar(10),
	quantity int NOT NULL,
	primary key(area,type)
);
create table transfer_details
(
	type varchar(10),
	transfer_id varchar(15),
	quantity int,
	primary key(type,transfer_id)
);

\d

alter table cement_orders add foreign key(order_no) references orders(order_no) on delete cascade;
alter table cement_orders add foreign key(type) references cement(type);

alter table competitors add foreign key(company_id) references company(company_id) on delete restrict;

alter table competitors_details add foreign key(area,company_name) references competitors(area,company_name) on delete cascade;
alter table competitors_details add foreign key(type) references cement(type) on delete cascade;

alter table dealers add foreign key(area) references dumps(area) on delete cascade;
alter table dealers add foreign key(emp_id) references employees(emp_id) on delete set null;
alter table dealers add foreign key(company_id) references company(company_id) on delete restrict;

alter table dumps add foreign key(emp_id) references employees(emp_id) on delete set null;
alter table dumps add foreign key(company_id) references company(company_id) on delete restrict;

alter table employees add foreign key(company_id) references company(company_id) on delete restrict;
alter table employees add foreign key(supervisor_id) references employees(emp_id) on delete cascade;

alter table non_traders add foreign key(area) references dumps(area) on delete cascade;
alter table non_traders add foreign key(emp_id) references employees(emp_id) on delete set null;
alter table non_traders add foreign key(company_id) references company(company_id) on delete restrict;

alter table orders add foreign key(company_id) references company(company_id) on delete restrict;
alter table orders add foreign key(dealer_GST_NO) references dealers(GST_NO) on delete cascade;
alter table orders add foreign key(non_traders_GST_NO) references non_traders(GST_NO) on delete cascade;

alter table production add foreign key(transfer_id) references rakes(transfer_id) on delete cascade;
alter table production add foreign key(type) references cement(type) on delete cascade;
alter table production add foreign key(company_id) references company(company_id) on delete restrict;

alter table rakes add foreign key(area) references dumps(area) on delete cascade;
alter table rakes add foreign key(company_id) references company(company_id) on delete restrict;

alter table storage add foreign key(area) references dumps(area) on delete cascade;
alter table storage add foreign key(type) references cement(type);

alter table transfer_details add foreign key(transfer_id) references rakes(transfer_id) on delete cascade;
alter table transfer_details add foreign key(type) references cement(type);

\d bill
\d cement
\d cement_orders
\d company
\d competitors
\d competitors_details
\d dealers
\d dumps
\d employees
\d non_traders
\d orders
\d production
\d rakes
\d storage
\d transfer_details
