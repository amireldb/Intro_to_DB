create table Authors (
author_id int Primary Key,
author_name VARCHAR(215)
);
create table Books (book_id int Primary Key,
title VARCHAR(130),
author_id int ,
price DOUBLE,
publication_date DATE,
Foreign Key (author_id) REFERENCES  Authors(author_id)
);

create table Customers (
customer_id int Primary Key,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);
create table Orders(
order_id int Primary Key,
customer_id int ,
order_date DATE ,
Foreign Key (customer_id) REFERENCES  Customers(customer_id)
);
create table Order_Details (
orderdetailid int Primary Key,
order_id int ,
book_id int ,
quantity DOUBLE,
Foreign Key (order_id) REFERENCES  Orders(order_id),
Foreign Key (book_id) REFERENCES  Books(book_id)
);
