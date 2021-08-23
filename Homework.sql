========Question 1===========

INSERT INTO public.students(name,last_name, country, age)
VALUES ('Lea','Hagovska', 'Germany', '15');

INSERT INTO public.students(name,last_name, country, age)
VALUES ('Luna','Selene', 'Germany', '15');

INSERT INTO public.students(name,last_name, country, age)
VALUES ('Magdalena','Sochon', 'Germany', '15');

INSERT INTO public.students(name,last_name, country, age)
VALUES ('Max','Lawrie', 'Germany', '15');

INSERT INTO public.students(name,last_name, country, age)
VALUES ('Mohammed','Shah', 'Germany', '15');

=========Question 2==========

SELECT * FROM public.students where name='Pavan';

UPDATE public.students SET country='Ireland', age='25' WHERE name='Pavan';


==========Question 3=========

SELECT * FROM public.students WHERE country='Germany';

SELECT * FROM public.students WHERE country='Thailand' OR country='Brazil';

SELECT * FROM public.students WHERE name='Tom%';

SELECT name FROM public.students WHERE age>23;

SELECT name FROM public.students WHERE age>=22 AND age<=30;

SELECT * FROM public.students ORDER BY age ASC;

SELECT COUNT(name) FROM public.students WHERE age>25;

===========Question 4===========

DELETE FROM public.students WHERE age<18 RETURNING *;

