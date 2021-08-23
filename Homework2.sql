=======Q1======

DROP TABLE IF EXISTS public.authors;
DROP TABLE IF EXISTS public.books;

CREATE TABLE IF NOT EXISTS
authors(
name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
birth_year DATE NOT NULL,
country VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS
books(
name VARCHAR NOT NULL,
category VARCHAR(50) NOT NULL,
cover VARCHAR NOT NULL,
author VARCHAR(50) NOT NULL,
created_at TIMESTAMPTZ DEFAULT NOW(),
updated_at TIMESTAMPTZ DEFAULT NOW(),
published_at TIMESTAMPTZ DEFAULT NOW()
);

=======Q2======

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('Agatha','Christie','1970-01-01','Germany');

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('Paulo','Coelho','1970-01-01','Germany');

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('Ken','Follett','1970-01-01','Germany');

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('John','Greesham','1970-01-01','Germany');

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('Stephen','King','1970-01-01','Germany');

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('Haruki','Murakami','1970-01-01','Germany');

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('Dan','Brown','1970-01-01','Germany');

INSERT INTO authors(name,last_name,birth_year,country) VALUES ('James','Patterson','1970-01-01','Germany');

=======Q3=======


INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','Dan Brown');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','Dan Brown');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','Dan Brown');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','Agatha Christie');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','Agatha Christie');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','Agatha Christie');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','James Patterson');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','Paulo Coelho');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','Paulo Coelho');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','Paulo Coelho');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','Ken Follett');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','Ken Follett');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','Ken Follett');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','John Grisham');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','John Grisham');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','John Grisham');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','Stephen King');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','Stephen King');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','Stephen King');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','Haruki Murakami');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','Haruki Murakami');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book1','Fiction','cover.png','Haruki Murakami');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book2','Fiction','cover.png','James Patterson');

INSERT INTO books(name,category,cover,author) 
VALUES ('Book3','Fiction','cover.png','James Patterson');

=========Q4===========


UPDATE public.books SET cover='new.png' WHERE book_id=3;

UPDATE public.authors SET birth_year='1980-01-01' WHERE author_id=3;

========Q5============

SELECT DISTINCT category FROM public.books;

SELECT * FROM public.books where category='Fiction';

SELECT * FROM public.books WHERE name='%a-z%',