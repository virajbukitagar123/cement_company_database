--1)Find the Type wise quantity of each cement in Bengaluru Dump --simple
select type,quantity from storage where area='Bengaluru';

--2)To know the status of the order given the order no ZUO10 --simple
select order_no,status from orders where order_no='ZUO10';

--3)Find the all the Dealers Orders including Type and Quantity each order from Manglore area --simple
select o.order_no ,d.dealers_name,c.type,c.quantity from dealers as d,dumps as du,orders as o ,cement_orders as c where du.area = 'Mangalore' and d.area = du.area and d.GST_NO = o.dealer_GST_NO and o.order_no = c.order_no;

--4)Selct all the rakes and it's area from batch _id --simple
select r.transfer_id,r.area from rakes as r,production as p where p.batch_id='ZUB05' and p.transfer_id=r.transfer_id;

--5)Find the total quantity 43_grade in a company given the company_id --simple
select type,sum(quantity) from storage as s,dumps as d where type='43_Grade' and d.company_id = 'ZUA01' and d.area = s.area group by type;

--6)Find all the competing companies in the Bengaluru region.
select distinct company_name from competitors where area = 'Bengaluru';

--7)Find the list of supervisors and count of employees under him.

--8)Find the list of project duration of the Non-traders who take cement from a particular dump.
select developers_name,project_duration from non_traders where area='Bengaluru'; 

--9)Find all the order_nos and status of the non-traders given company id.
select order_no,status from company,non_traders,orders where non_traders.company_id = 'ZUA01' and non_traders.gst_no = orders.non_traders_gst_no;

--10)Find all the orders which the company doesn't gives discount. (Get to know the non-frequent buyers.)
select bill.order_no from bill,orders where orders.company_id = 'ZUA01' and bill.order_no = orders.order_no and bill.discount = 0;

--11) To find the average credit amount of all the dealers across all the areas.
select area , avg(credit_amount) from dealers group by area;



--1)Find the total quantity of the cement present type wise by a company --complex
select type,sum(quantity) from storage as s,dumps as d where type in (select type from cement) and d.company_id = 'ZUA01' and d.area = s.area group by type;

--2)Find the total price of the given bill --complex

--3)Find the list of Dealers whom we have given discount (Get to know frequent buyers)
 select shop_name from dealers where gst_no in (select orders.dealer_gst_no from orders,bill where bill.order_no = orders.order_no and bill.discount > 0);

--4)Find the rake whose mode of freight is Truck and has maximum PPC quatity and area of it.
select transfer_id,area,quantity from (select rakes.transfer_id,area,quantity from rakes,transfer_details where type='PPC_Grade' and mode_of_freight = 'Truck' and rakes.transfer_id = transfer_details.transfer_id) AS foo having quantity=max(quantity);
999

--5)Find the list of orders which are not yet delivered ****
 (select order_no from orders where status = 'Loading')Union(select order_no from orders where status = 'Dispatched');
--or
select order_no from orders where order_no not in(select order_no from bill);

--6)Find the list of competitors who don't trade PPC_Grade cement.
select distinct company_name from competitors as c where NOT EXISTS(select type from competitors_details where competitors_details.company_name = c.company_name and type = 'PPC_Grade');

--7)Find all the competitors who have price of a particular cement type less than our company. (Helps to keep track of competition). *****
select distinct company_name from competitors_details as c where c.type = '43_Grade' and c.sales_price < (select price from cement where cement.type = '43_Grade');

--8)Find all the transfer ids and areas from the rakes which have the dispatch id prior to a date.
select transfer_id from rakes,dumps where dumps.area = rakes.area and cast( date_of_dispatch as varchar ) like '2019-01-__';

--9)Find the total quatity sales of the company in the month of february type-wise
select type ,sum(quantity) from cement_orders where order_no in (select order_no from orders where order_no in (select order_no from bill where company_id='ZUA01') and date_of_delivery < '2019-03-01' and date_of_delivery > '2019-01-31') group by type;


--10)Find the total sales of employee type-wise ****
select type,sum(quantity) from cement_orders where order_no in (select order_no from orders where dealer_gst_no in (select gst_no from dealers where emp_id = 'Z8062') union select order_no from orders where non_traders_gst_no in(select gst_no from non_traders where emp_id = 'Z8062')) group by type;

--11)Find the max of the salary and the person's name who are direct decenddent of the main_supervisor
select first_name,last_name,max(salary) from employees where emp_id in (select emp_id from employees where supervisor_id = (select emp_id from employees where supervisor_id is null)) group by first_name,last_name;



