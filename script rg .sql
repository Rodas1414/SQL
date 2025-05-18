#Rodas Gebreyohannes

-- 1. List all books in a specific genre
SELECT * FROM Books WHERE Genre = 'Fantasy';

-- 2. Find members who have borrowed a specific book
SELECT M.Name FROM Members M
JOIN Borrowed_Books BB ON M.Member_id = BB.Member_Id
WHERE BB.Book_Id = 1;

-- 3. Get the number of books borrowed by each member
SELECT M.Name, COUNT(BB.Borrow_id) AS 'Number of Books Borrowed'
FROM Members M
JOIN Borrowed_Books BB ON M.Member_id = BB.Member_Id
GROUP BY M.Name;

-- 4. Find books that have never been borrowed
SELECT * FROM Books WHERE Book_id NOT IN (SELECT Book_Id FROM Borrowed_Books);

-- 5. List books available for borrowing
SELECT * FROM Books WHERE Available_Copies > 0;