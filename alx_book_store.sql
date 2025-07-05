CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE table Authors (
	author_id INT,
	author_name VARCHAR(215),
	PRIMARY KEY (author_id)
);

CREATE table Books (
	book_id INT,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE,
	publication_date DATE,
	PRIMARY KEY (book_id),
	FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


CREATE table Customers (
	customer_id INT,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT,
	PRIMARY KEY (customer_id)
);

CREATE table Orders (
	order_id INT,
	customer_id INT,
	order_date DATE,
	PRIMARY KEY (order_id)
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE table Order_Details (
	orderdetailid INT,
	order_id INT,
	book_id INT,
	quantity DOUBLE,
	PRIMARY KEY (orderdetailid)
	FOREIGN KEY (order_id) REFERENCES Orders (order_id),
	FOREIGN KEY (book_id) REFERENCES Books (book_id)
);
