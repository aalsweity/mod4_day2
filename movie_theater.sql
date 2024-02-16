
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	phone_number VARCHAR(100)
);

CREATE TABLE movie (
  movie_id SERIAL PRIMARY KEY,
  movie_title VARCHAR,
  genre VARCHAR,
  rating VARCHAR,
  time_length INTEGER
);

create table ticket (
	ticket_id SERIAL primary key,
	customer_id INTEGER,
	movie_id INTEGER,
  	date TIMESTAMP,
  	FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
  	FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE concessions (
  customer_id SERIAL,
  inventory_id VARCHAR,
  quantity INTEGER
);
