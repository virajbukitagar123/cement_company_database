delete from bill; 
delete from cement; 
delete from cement_orders; 
delete from company; 
delete from competitors; 
delete from competitors_details;
delete from dealers;
delete from dumps;
delete from employees;
delete from non_traders;
delete from orders;
delete from production;
delete from rakes;
delete from storage;
delete from transfer_details;

INSERT into company values('ZUA01','Bengaluru','Jamshed D Cooper','Zuari Cement');

INSERT into cement values('PPC_Grade',385,50,'pozzolanic material which increase the strength of concrete','ZUA01');
INSERT into cement values('43_Grade',375,50,'mostly preferred for block work,wall plastering works','ZUA01');
INSERT into cement values('53_Grade',380,50,'for certain specialized works, such as prestressed concrete','ZUA01');
INSERT into cement values('Primo',390,50,'it is a mixture of 43 and 53 grade cement and can be used in both the places as the other cements','ZUA01');

INSERT INTO employees values('Z8050','Rajesh','Nayak',250000,9845621237,NULL,'rajeshnayak@zcltd.com',NULL,'ZUA01');
INSERT INTO employees values('Z8051','Gopinath','Vasudevan',200000,9875691237,9844561237,'gopinathv@zcltd.com','Z8050','ZUA01');
INSERT INTO employees values('Z8052','Manikandan','Sanikop',200000,9875694567,9833561237,'msanikop@zcltd.com','Z8050','ZUA01');
INSERT INTO employees values('Z8053','Praveen','Shetty',140000,9812341237,NULL,'praveens@zcltd.com','Z8052','ZUA01');
INSERT INTO employees values('Z8054','Chidanand','Bukitagar',180000,9844041320,NULL,'bchidanand@zcltd.com','Z8052','ZUA01');
INSERT INTO employees values('Z8055','Alur','Parthsarthy',100000,9844041456,NULL,'aparthasarthi@zcltd.com','Z8053','ZUA01');
INSERT INTO employees values('Z8056','Chandramouli','Shetty',130000,8277333411,9591149940,'cshetty@zcltd.com','Z8053','ZUA01');
INSERT INTO employees values('Z8057','Satish','Kalsa',160000,9834334994,NULL,'skalsa@zcltd.com','Z8052','ZUA01');
INSERT INTO employees values('Z8058','Shankar','Gangadhar',100000,9845722375,8723456127,'sganghadar@zcltd.com','Z8052','ZUA01');
INSERT INTO employees values('Z8061','Suresh','Ramachandran',85000,9775691237,9844561237,'sureshr@zcltd.com','Z8053','ZUA01');
INSERT INTO employees values('Z8062','Mahadev','Rao',55000,9875699997,9888812373,'mahadevr@zcltd.com','Z8053','ZUA01');
INSERT INTO employees values('Z8063','Prakash','Pattanshetty',50000,9765691237,9844561237,'ppattanshetty@zcltd.com','Z8054','ZUA01');
INSERT INTO employees values('Z8065','Roopa','Desai',50000,9875691234,9844561237,'rgdesai@zcltd.com','Z8055','ZUA01');
INSERT INTO employees values('Z8066','Jyothi','Kalsanavvar',65000,9875698888,NULL,'jyothik@zcltd.com','Z8056','ZUA01');
INSERT INTO employees values('Z8067','Girish','Patil',60000,9875645671,9844561237,'girishp@zcltd.com','Z8056','ZUA01');
INSERT INTO employees values('Z8068','Mohammed','Farooq',50000,8875691237,NULL,'mfarooq@zcltd.com','Z8057','ZUA01');
INSERT INTO employees values('Z8069','Lucky','Singh',40000,9675678137,NULL,'luckysingh@zcltd.com','Z8057','ZUA01');
INSERT INTO employees values('Z8070','Shashank','Jain',30000,9877791237,9844567894,'sjain@zcltd.com','Z8058','ZUA01');

INSERT into dumps values('Bengaluru','Arekere,Bannerghatta Road',3000,'Z8070','ZUA01');
INSERT into dumps values('Bellari','Shanbagh Circle,College Road',2000,'Z8069','ZUA01');
INSERT into dumps values('Davangere','Jambunath Cross, JP Nagar',2400,'Z8061','ZUA01');
INSERT into dumps values('Goa','Banaulim Road,Panaji',1600,'Z8067','ZUA01');
INSERT into dumps values('Shivamoga','Gandhi Circle,Shikaripur',2200,'Z8062','ZUA01');
INSERT into dumps values('Mangalore','Expert College Road',1000,'Z8065','ZUA01');
INSERT into dumps values('Hubli','Chennama Road',3000,'Z8068','ZUA01');
INSERT into dumps values('Madekeri','Kushal Cross',950,'Z8063','ZUA01');
INSERT into dumps values('Hospet','MP Prakash Nagar',2700,'Z8066','ZUA01');

INSERT into competitors values('Ultratech Cement','Bengaluru','ZUA01');
INSERT into competitors values('Ultratech Cement','Davangere','ZUA01');
INSERT into competitors values('Ultratech Cement','Hubli','ZUA01');
INSERT into competitors values('Aditya Birla Cement','Madekeri','ZUA01');
INSERT into competitors values('Aditya Birla Cement','Bellari','ZUA01');
INSERT into competitors values('Aditya Birla Cement','Goa','ZUA01');
INSERT into competitors values('Saraswati Cement','Davangere','ZUA01');
INSERT into competitors values('Ambuja Cement','Shivamoga','ZUA01');
INSERT into competitors values('Ambuja Cement','Bengaluru','ZUA01');
INSERT into competitors values('Ambuja Cement','Mangalore','ZUA01');
INSERT into competitors values('JSW Cement','Hubli','ZUA01');
INSERT into competitors values('JSW Cement','Bellari','ZUA01');
INSERT into competitors values('JSW Cement','Bengaluru','ZUA01');
INSERT into competitors values('Bangar Cement','Goa','ZUA01');
INSERT into competitors values('Bangar Cement','Bengaluru','ZUA01');

INSERT into competitors_details values('PPC_Grade','Bengaluru',390,50,'Ultratech Cement');
INSERT into competitors_details values('43_Grade','Bengaluru',375,50,'Ultratech Cement');
INSERT into competitors_details values('53_Grade','Bengaluru',380,50,'Ultratech Cement');
INSERT into competitors_details values('43_Grade','Davangere',390,50,'Ultratech Cement');
INSERT into competitors_details values('53_Grade','Davangere',380,50,'Ultratech Cement');
INSERT into competitors_details values('53_Grade','Hubli',380,50,'Ultratech Cement');

--INSERT into competitors_details values('PPC_Grade','Madekeri',385,50,'Aditya Birla Cement');
INSERT into competitors_details values('43_Grade','Madekeri',370,50,'Aditya Birla Cement');
INSERT into competitors_details values('53_Grade','Madekeri',380,50,'Aditya Birla Cement');
INSERT into competitors_details values('43_Grade','Bellari',370,50,'Aditya Birla Cement');
INSERT into competitors_details values('53_Grade','Bellari',380,50,'Aditya Birla Cement');
INSERT into competitors_details values('43_Grade','Goa',370,50,'Aditya Birla Cement');
--INSERT into competitors_details values('PPC_Grade','Goa',385,50,'Aditya Birla Cement');

INSERT into competitors_details values('PPC_Grade','Davangere',390,50,'Saraswati Cement');
INSERT into competitors_details values('43_Grade','Davangere',375,50,'Saraswati Cement');

INSERT into competitors_details values('43_Grade','Shivamoga',380,50,'Ambuja Cement');
INSERT into competitors_details values('53_Grade','Shivamoga',380,50,'Ambuja Cement');
INSERT into competitors_details values('43_Grade','Bengaluru',380,50,'Ambuja Cement');
INSERT into competitors_details values('53_Grade','Bengaluru',380,50,'Ambuja Cement');
--INSERT into competitors_details values('PPC_Grade','Bengaluru',390,50,'Ambuja Cement');
INSERT into competitors_details values('43_Grade','Mangalore',380,50,'Ambuja Cement');
INSERT into competitors_details values('53_Grade','Mangalore',380,50,'Ambuja Cement');

INSERT into competitors_details values('43_Grade','Hubli',390,50,'JSW Cement');
INSERT into competitors_details values('53_Grade','Hubli',385,50,'JSW Cement');
INSERT into competitors_details values('PPC_Grade','Hubli',390,50,'JSW Cement');
INSERT into competitors_details values('43_Grade','Bellari',390,50,'JSW Cement');
INSERT into competitors_details values('53_Grade','Bellari',385,50,'JSW Cement');
INSERT into competitors_details values('53_Grade','Bengaluru',385,50,'JSW Cement');
INSERT into competitors_details values('43_Grade','Bengaluru',390,50,'JSW Cement');
INSERT into competitors_details values('PPC_Grade','Bengaluru',390,50,'JSW Cement');

INSERT into competitors_details values('43_Grade','Goa',395,50,'Bangar Cement');
INSERT into competitors_details values('53_Grade','Goa',405,50,'Bangar Cement');
INSERT into competitors_details values('PPC_Grade','Goa',410,50,'Bangar Cement');
INSERT into competitors_details values('43_Grade','Bengaluru',375,50,'Bangar Cement');
INSERT into competitors_details values('53_Grade','Bengaluru',390,50,'Bangar Cement');
INSERT into competitors_details values('PPC_Grade','Bengaluru',385,50,'Bangar Cement');


INSERT into dealers values('29AAAAASSS1Z1','Laxmi Enterprises','Rajashekar Rao',080266457,9845612378,0,50,'Bengaluru','Z8070','ZUA01');
INSERT into dealers values('29BAAAASST1Z1','Emco Traders','Milind Nath',0818255487,9745611348,45000,66,'Shivamoga','Z8062','ZUA01');
INSERT into dealers values('29CAAAASSS1Z1','Ganesh Enterprises','Rajashekar Rao',8192266458,9845612378,86000,50,'Davangere','Z8061','ZUA01');
INSERT into dealers values('29DAAAASSS1Z1','Swastik Traders','Suresh Bukitagar',08352266447,9845612378,0,50,'Mangalore','Z8065','ZUA01');
INSERT into dealers values('29EAAAASSS1Z1','Maximill Steels','Clark K',080232457,9845612378,0,50,'Bengaluru','Z8070','ZUA01');
INSERT into dealers values('29FAAAASSS1Z1','Saraswati Enterprises','Mahendra B',0831247857,9845612378,75000,50,'Bellari','Z8069','ZUA01');
INSERT into dealers values('29GAAAASSS1Z1','JSWB Traders','Chandramouli Desai',08392229757,9845612378,100000,50,'Bellari','Z8069','ZUA01');
INSERT into dealers values('29HAAAASSS1Z1','Stark Enterprises','Anthony Stark',080261357,9845612378,0,250,'Goa','Z8067','ZUA01');
INSERT into dealers values('29IAAAASSS1Z1','Marvel Traders','Carol Danvers',080581457,9845612378,65363,128,'Madekeri','Z8063','ZUA01');
INSERT into dealers values('29JAAAASSS1Z1','Harish Enterprises','Harish H.B',080581657,9845645678,78945,72,'Hubli','Z8068','ZUA01');


INSERT INTO non_traders values('29AAAAASSA1Z1','Global Constructions',5,7456234595,220,'Bengaluru','Z8070','ZUA01');
INSERT INTO non_traders values('29AAAAASSB1Z1','Prestige Group',10,8656234595,250,'Bengaluru','Z8070','ZUA01');
INSERT INTO non_traders values('29AAAAASSC1Z1','Bhadra Buildings',7,7454445959,133,'Madekeri','Z8063','ZUA01');
INSERT INTO non_traders values('29AAAAASSD1Z1','Majestic Developers',8,9856234595,189,'Davangere','Z8061','ZUA01');
INSERT INTO non_traders values('29AAAAASSE1Z1','Ganesh Builders',6,7444434595,157,'Mangalore','Z8065','ZUA01');
INSERT INTO non_traders values('29AAAAASSF1Z1','KK Development',12,8277334595,140,'Hubli','Z8068','ZUA01');
INSERT INTO non_traders values('29AAAAASSG1Z1','JK Constructions',2,8456894595,122,'Hospet','Z8066','ZUA01');
INSERT INTO non_traders values('29AAAAASSH1Z1','Birla Constructions',14,9656234595,80,'Bellari','Z8069','ZUA01');
INSERT INTO non_traders values('29AAAAASSI1Z1','Wonder Company',9,7456234789,100,'Goa','Z8067','ZUA01');
INSERT INTO non_traders values('29AAAAASSJ1Z1','VVL Builders',3,8456234595,200,'Shivamoga','Z8062','ZUA01');

INSERT INTO orders values('ZUO1','2019-01-27','2019-01-25','2019-01-24','ZUA01','29EAAAASSS1Z1',NULL,'Delivered');
INSERT INTO orders values('ZUO2','2019-01-31','2019-01-31','2019-01-30','ZUA01',NULL,'29AAAAASSC1Z1','Delivered');
INSERT INTO orders values('ZUO3','2019-02-02','2019-02-01','2019-02-01','ZUA01','29DAAAASSS1Z1',NULL,'Delivered');
INSERT INTO orders values('ZUO4','2019-02-05','2019-02-01','2019-02-01','ZUA01','29EAAAASSS1Z1',NULL,'Delivered');
INSERT INTO orders values('ZUO5','2019-02-15','2019-02-12','2019-02-11','ZUA01','29JAAAASSS1Z1',NULL,'Delivered');
INSERT INTO orders values('ZUO6','2019-02-14','2019-02-13','2019-02-11','ZUA01','29DAAAASSS1Z1',NULL,'Delivered');
INSERT INTO orders values('ZUO7',NULL,'2019-03-21','2019-03-20','ZUA01','29BAAAASST1Z1',NULL,'Dispatched');
INSERT INTO orders values('ZUO8',NULL,'2019-03-20','2019-02-19','ZUA01','29GAAAASSS1Z1',NULL,'Dispatched');
INSERT INTO orders values('ZUO9',NULL,NULL,'2019-02-21','ZUA01',NULL,'29AAAAASSE1Z1','Loading');
INSERT INTO orders values('ZUO10',NULL,NULL,'2019-02-21','ZUA01',NULL,'29AAAAASSA1Z1','Loading');

INSERT into bill values('ZUBi1',50000,10,0,'ZUO1');
INSERT into bill values('ZUBi2',60000,10,5,'ZUO2');
INSERT into bill values('ZUBi3',70000,15,0,'ZUO3');
INSERT into bill values('ZUBi4',80000,15,15,'ZUO4');
INSERT into bill values('ZUBi5',90000,20,20,'ZUO5');
INSERT into bill values('ZUBi6',100000,20,0,'ZUO6');


INSERT into cement_orders values('ZUO1',50,'PPC_Grade');
INSERT into cement_orders values('ZUO1',30,'43_Grade');
INSERT into cement_orders values('ZUO2',25,'PPC_Grade');
INSERT into cement_orders values('ZUO2',30,'43_Grade');
INSERT into cement_orders values('ZUO2',50,'53_Grade');
INSERT into cement_orders values('ZUO3',45,'PPC_Grade');
INSERT into cement_orders values('ZUO3',50,'Primo');
INSERT into cement_orders values('ZUO3',30,'43_Grade');
INSERT into cement_orders values('ZUO4',70,'43_Grade');
INSERT into cement_orders values('ZUO4',40,'53_Grade');
INSERT into cement_orders values('ZUO5',60,'PPC_Grade');
INSERT into cement_orders values('ZUO5',30,'43_Grade');
INSERT into cement_orders values('ZUO5',50,'Primo');
INSERT into cement_orders values('ZUO6',75,'43_Grade');
INSERT into cement_orders values('ZUO6',50,'PPC_Grade');
INSERT into cement_orders values('ZUO6',40,'53_Grade');
INSERT into cement_orders values('ZUO7',50,'Primo');
INSERT into cement_orders values('ZUO7',30,'53_Grade');
INSERT into cement_orders values('ZUO8',60,'PPC_Grade');
INSERT into cement_orders values('ZUO8',100,'53_Grade');
INSERT into cement_orders values('ZUO9',0,'Primo');
INSERT into cement_orders values('ZUO9',0,'53_Grade');
INSERT into cement_orders values('ZUO10',0,'PPC_Grade');
INSERT into cement_orders values('ZUO10',120,'53_Grade');
INSERT into cement_orders values('ZUO10',0,'Primo');
INSERT into cement_orders values('ZUO10',30,'43_Grade');


INSERT INTO rakes values('ZUT01','2019-01-01','2019-01-03','Bengaluru','Train','ZUA01');
INSERT INTO rakes values('ZUT02','2019-01-15','2019-01-16','Bengaluru','Truck','ZUA01');
INSERT INTO rakes values('ZUT03','2019-01-20','2019-01-22','Bellari','Train','ZUA01');
INSERT INTO rakes values('ZUT04','2019-01-27','2019-01-29','Davangere','Train','ZUA01');
INSERT INTO rakes values('ZUT05','2019-02-03','2019-02-05','Shivamoga','Truck','ZUA01');
INSERT INTO rakes values('ZUT06','2019-02-07','2019-02-08','Goa','Train','ZUA01');
INSERT INTO rakes values('ZUT07','2019-02-16','2019-02-17','Mangalore','Truck','ZUA01');
INSERT INTO rakes values('ZUT08','2019-02-23','2019-02-26','Hubli','Train','ZUA01');
INSERT INTO rakes values('ZUT09','2019-02-25','2019-02-27','Madekeri','Truck','ZUA01');
INSERT INTO rakes values('ZUT10','2019-03-02','2019-03-04','Hospet','Train','ZUA01');

INSERT INTO production values('ZUB01',250,'2019-01-01','43_Grade','ZUT01','ZUA01');
INSERT INTO production values('ZUB02',300,'2019-01-13','PPC_Grade','ZUT02','ZUA01');
INSERT INTO production values('ZUB03',275,'2019-01-17','53_Grade','ZUT03','ZUA01');
INSERT INTO production values('ZUB04',240,'2019-01-25','43_Grade','ZUT04','ZUA01');
INSERT INTO production values('ZUB05',315,'2019-02-01','Primo','ZUT05','ZUA01');
INSERT INTO production values('ZUB06',280,'2019-02-05','53_Grade','ZUT06','ZUA01');
INSERT INTO production values('ZUB07',300,'2019-02-15','43_Grade','ZUT07','ZUA01');
INSERT INTO production values('ZUB08',260,'2019-02-23','PPC_Grade','ZUT08','ZUA01');
INSERT INTO production values('ZUB09',250,'2019-02-24','53_Grade','ZUT09','ZUA01');
INSERT INTO production values('ZUB10',295,'2019-03-01','Primo','ZUT09','ZUA01');
INSERT INTO production values('ZUB11',295,'2019-03-01','43_Grade','ZUT10','ZUA01');

INSERT INTO storage values('Bengaluru','43_Grade',700);
INSERT INTO storage values('Bengaluru','53_Grade',500);
INSERT INTO storage values('Bengaluru','PPC_Grade',500);
INSERT INTO storage values('Bengaluru','Primo',600);
INSERT INTO storage values('Bellari','43_Grade',300);
INSERT INTO storage values('Bellari','53_Grade',200);
INSERT INTO storage values('Bellari','PPC_Grade',700);
INSERT INTO storage values('Bellari','Primo',500);
INSERT INTO storage values('Davangere','43_Grade',400);
INSERT INTO storage values('Davangere','53_Grade',650);
INSERT INTO storage values('Davangere','PPC_Grade',400);
INSERT INTO storage values('Davangere','Primo',700);
INSERT INTO storage values('Shivamoga','43_Grade',450);
INSERT INTO storage values('Shivamoga','53_Grade',550);
INSERT INTO storage values('Shivamoga','PPC_Grade',400);
INSERT INTO storage values('Shivamoga','Primo',600);
INSERT INTO storage values('Goa','43_Grade',300);
INSERT INTO storage values('Goa','53_Grade',400);
INSERT INTO storage values('Goa','PPC_Grade',500);
INSERT INTO storage values('Goa','Primo',200);
INSERT INTO storage values('Mangalore','43_Grade',200);
INSERT INTO storage values('Mangalore','53_Grade',300);
INSERT INTO storage values('Mangalore','PPC_Grade',250);
INSERT INTO storage values('Mangalore','Primo',200);
INSERT INTO storage values('Hubli','43_Grade',500);
INSERT INTO storage values('Hubli','53_Grade',650);
INSERT INTO storage values('Hubli','PPC_Grade',300);
INSERT INTO storage values('Hubli','Primo',400);
INSERT INTO storage values('Madekeri','43_Grade',200);
INSERT INTO storage values('Madekeri','53_Grade',300);
INSERT INTO storage values('Madekeri','PPC_Grade',250);
INSERT INTO storage values('Madekeri','Primo',200);
INSERT INTO storage values('Hospet','43_Grade',500);
INSERT INTO storage values('Hospet','53_Grade',420);
INSERT INTO storage values('Hospet','PPC_Grade',600);
INSERT INTO storage values('Hospet','Primo',700);

INSERT INTO transfer_details values('43_Grade','ZUT01',50);
INSERT INTO transfer_details values('53_Grade','ZUT01',70);
INSERT INTO transfer_details values('PPC_Grade','ZUT01',50);
INSERT INTO transfer_details values('Primo','ZUT01',80);
INSERT INTO transfer_details values('43_Grade','ZUT02',120);
INSERT INTO transfer_details values('53_Grade','ZUT02',70);
INSERT INTO transfer_details values('PPC_Grade','ZUT02',110);
INSERT INTO transfer_details values('43_Grade','ZUT03',65);
INSERT INTO transfer_details values('PPC_Grade','ZUT03',90);
INSERT INTO transfer_details values('Primo','ZUT03',120);
INSERT INTO transfer_details values('43_Grade','ZUT04',60);
INSERT INTO transfer_details values('53_Grade','ZUT04',40);
INSERT INTO transfer_details values('PPC_Grade','ZUT04',50);
INSERT INTO transfer_details values('Primo','ZUT04',70);
INSERT INTO transfer_details values('43_Grade','ZUT05',70);
INSERT INTO transfer_details values('53_Grade','ZUT05',65);
INSERT INTO transfer_details values('PPC_Grade','ZUT05',100);
INSERT INTO transfer_details values('Primo','ZUT05',80);
INSERT INTO transfer_details values('43_Grade','ZUT06',80);
INSERT INTO transfer_details values('53_Grade','ZUT06',70);
INSERT INTO transfer_details values('PPC_Grade','ZUT06',65);
INSERT INTO transfer_details values('Primo','ZUT06',65);
INSERT INTO transfer_details values('43_Grade','ZUT07',200);
INSERT INTO transfer_details values('Primo','ZUT07',100);
INSERT INTO transfer_details values('43_Grade','ZUT08',50);
INSERT INTO transfer_details values('53_Grade','ZUT08',60);
INSERT INTO transfer_details values('PPC_Grade','ZUT08',70);
INSERT INTO transfer_details values('Primo','ZUT08',80);
INSERT INTO transfer_details values('43_Grade','ZUT09',70);
INSERT INTO transfer_details values('53_Grade','ZUT09',130);
INSERT INTO transfer_details values('PPC_Grade','ZUT09',50);
INSERT INTO transfer_details values('43_Grade','ZUT10',100);
INSERT INTO transfer_details values('53_Grade','ZUT10',95);
INSERT INTO transfer_details values('PPC_Grade','ZUT10',50);
INSERT INTO transfer_details values('Primo','ZUT10',50);






