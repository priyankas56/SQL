USE customer;
CREATE TABLE orders(id int,order_name varchar(20),cost int,order_id bigint primary key,created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30));


insert into orders values(1,'pizza',400,201,now(),'priya',now(),'kiran');
insert into orders values(2,'burger',150,202,now(),'yash',now(),'chran');
insert into orders values(3,'juice',100,203,now(),'varsh',now(),'nayan');
insert into orders values(4,'kfc',450,204,now(),'shamanth',now(),'surya');
insert into orders values(5,'samosa',50,205,now(),'viswa',now(),'vijith');
USE customer;
CREATE TABLE payment(id int,price bigint,payment_id int primary key,p_order_id bigint,payment_status varchar(30),created_at timestamp,created_by varchar(40),modified_at timestamp,modified_by varchar(30),foreign key(p_order_id)references orders(order_id));

insert into payment values(1,2000,300,201,'success',now(),'mohan',now(),'varsha');
insert into payment values(2,2001,301,202,'success',now(),'deepa',now(),'latha');
insert into payment values(3,2002,302,203,'success',now(),'sush',now(),'hash');
insert into payment values(4,2003,303,204,'success',now(),'vidya',now(),'madan');
insert into payment values(5,2004,304,205,'success',now(),'sushanth',now(),'deepak');
USE customer;
CREATE TABLE restorent(id int,r_name varchar(30),r_id int primary key,r_loc varchar(30),r_order_id bigint,ratings int,r_payment_id int,created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(40),foreign key(r_order_id)references orders(order_id),foreign key(r_payment_id)references payment(payment_id));
insert into restorent values(1,'veg restorent',500,'rr nagar',201,5,300,now(),'mahan',now(),'hasha');
insert into restorent values(2,'nonveg restorent',501,'vijay nagar',202,8,301,now(),'sudha',now(),'siddu');
insert into restorent values(3,'raman restorent',502,'hampi nagar',203,5,302,now(),'shana',now(),'nayak');
insert into restorent values(4,'benno restorent',503,'layout',204,9,303,now(),'raman',now(),'hshiva');
insert into restorent values(5,'fivestar restorent',504,'rr nagar',201,10,304,now(),'surya',now(),'laksmi');
USE customer;
CREATE TABLE delivery(id int,person_name varchar(30),mode_of_payment enum('online','offline'),d_Restorent_id int,delivery_id int primary key,d_order_id bigint,created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30),foreign key(d_restorent_id)references restorent(r_id),foreign key(d_order_id)references orders(order_id));

insert into delivery values(1,'varsh','online',500,800,201,now(),'nayana',now(),'kavya');
insert into delivery values(2,'swetha','offline',501,801,202,now(),'simon',now(),'sanju');
insert into delivery values(3,'varsh','online',502,802,203,now(),'patil',now(),'divya');
insert into delivery values(4,'varsh','online',503,803,204,now(),'dee',now(),'patel');
insert into delivery values(5,'varsh','online',504,804,205,now(),'jai',now(),'shanker');