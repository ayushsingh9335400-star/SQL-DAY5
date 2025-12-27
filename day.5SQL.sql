CREATE TABLE users1(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(20) UNIQUE,
  age INTEGER,
  city VARCHAR(50) 
);

SELECT * FROM users1;

INSERT INTO users1(username,email,age,city)
 VALUES ('Annu','annu@gmail.com','23','noida'),
        ('abhi','abhi@gn')

1.--to rename thr username column to full_name--
ALTER TABLE users1
RENAME column username TO full_name;


SELECT * FROM users1 ORDER BY user_id ASC;

2.--to change the age column data type form INT to SMALLINT--
ALTER TABLE users1
ALTER COLUMn age TYPE smallint;

3.--to add a NOT NULL constraints to city column--
ALTER TABLE users1
ALTER COLUMN city SET NOT NULL;

4.--adding check constraints to age column--
ALTER TABLE users1
ADD CONSTRAINT age CHECK(age>=18);

5.--insert new data in table--
INSERT INTO users1 (full_name,email,age,city)
VALUES('aman','aman@hgmail.com',32,'bihar');

6.--change a table name--
ALTER TABLE users1
RENAME TO customers



