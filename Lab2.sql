--4
SELECT ACTINO , CNAME , AMOUNT FROM DEPOSIT

--5
SELECT LOANNO , AMOUNT FROM BORROW

--6
SELECT *FROM BORROW WHERE BNAME = '  ANDHERI'

--7
SELECT *FROM DEPOSIT WHERE ACTINO = 106

--8
SELECT *FROM BORROW WHERE AMOUNT > 5000

--9
SELECT *FROM DEPOSIT WHERE ADATE > '1996-12-1'

--10
SELECT *FROM DEPOSIT ACTINO < 105