--LAB_4
--(DELETE,TRUNCATE,DROP)

---PART A---
SELECT * FROM DEPOSIT_DETAIL

--1.Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT >= 4000;

--2.Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME= 'CHANDI';

--3.Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO = 105;

--4.Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL;

--5.Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL;

---PART B---
