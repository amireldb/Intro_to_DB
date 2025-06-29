CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Authors (
author_id int PRIMARY KEY,
author_name VARCHAR(215)
);
CREATE TABLE Books (book_id int PRIMARY KEY,
title VARCHAR(130),
author_id int ,
price DOUBLE,
publication_date DATE,
Foreign Key (author_id) REFERENCES  Authors(author_id)
);

CREATE TABLE Customers (
customer_id int PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);
CREATE TABLE Orders(
order_id int PRIMARY KEY,
customer_id int ,
order_date DATE ,
Foreign Key (customer_id) REFERENCES  Customers(customer_id)
);
CREATE TABLE Order_Details (
orderdetailid int PRIMARY KEY,
order_id int ,
book_id int ,
quantity DOUBLE,
Foreign Key (order_id) REFERENCES  Orders(order_id),
Foreign Key (book_id) REFERENCES  Books(book_id)
);
