--Crowdfunding Table Schema 

DROP TABLE if exists category ;
CREATE TABLE category(
	category_id VARCHAR(40) PRIMARY KEY,
	category VARCHAR(40) NOT NULL
); 


DROP TABLE if exists subcateogry;
CREATE TABLE subcategory(
	subcategory_id VARCHAR(40) PRIMARY KEY,
	subcategory VARCHAR(40) NOT NULL
);


DROP TABLE if exists contacts;
CREATE TABLE contacts(
	contact_id int PRIMARY KEY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	email VARCHAR(60) NOT NULL
);


DROP TABLE if exists campaign;
CREATE TABLE campaign(
	cf_id int PRIMARY KEY,
	contact_id int NOT NULL,
	company_name VARCHAR(40) NOT NULL,
	description VARCHAR (400) NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR (40) NOT NULL,
	backers_count int NOT NULL,
	country VARCHAR (40) NOT NULL,
	currency VARCHAR (40) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NULL,
	category_id VARCHAR (40) NOT NULL,
	subcategory_id VARCHAR (40) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id)
);