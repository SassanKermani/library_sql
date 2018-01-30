-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;

-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;

-- Get all authors born in the 20th centruy or later
SELECT * FROM authors WHERE birth_year >= 1900;

-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'United States of America';

-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;

-- Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1989;

-- Get just the title of all books.
SELECT title FROM books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been 
SELECT publication_date from books WHERE title = 'A Dance with Dragons'; -- man it has been a loong time


-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title LIKE '%the%';

-- Add yourself as an author
INSERT INTO authors
VALUES (9, 'Sassan Kermani', 'Iran', 1996);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books 
VALUES ( 69,'ONE TIME I DID A THING', 2016, 9);
VALUES ( 70,'TWO TIMES I DID A THING', 2017, 9);

-- Update one of your books to have a new title
UPDATE books 
SET title ='the editors got pissed had to change my books name'
WHERE author_id = 9;

-- Delete your books
DELETE FROM books 			--you were not satisfied with me killing my first born you make me kill both my books.
WHERE author_id = 9;

-- Delete your author entry
delete from authors 					--I used to be an established author
 WHERE name = 'Sassan Kermani';
