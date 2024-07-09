CREATE TABLE CRICKET(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT);

INSERT INTO CRICKET VALUES
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M. S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30)

SELECT * FROM CRICKET

--1.Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET;
SELECT * FROM WORLDCUP

--2.Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=0;

--3.Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=2;

---PART B---
CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT);

INSERT INTO EMPLOYEE VALUES
('Jay Patel','Rajkot',30),
('Rahul Dave','Baroda',35),
('Jeet Pate','Surat',31),
('Vijay Raval','Rajkot',30)

SELECT * FROM EMPLOYEE

--1.Create table Employee_detail from Employee with all the columns and data.
SELECT * INTO Employee_detail FROM EMPLOYEE

--2.Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO  Employee_data FROM EMPLOYEE

--3.Create table Employee_info from Employee with no Data
SELECT * INTO Employee_info FROM EMPLOYEE WHERE 0=1


---PART C---

--1.Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE CITY = 'RAJKOT'

--2.Insert the Data into Employee_info from Employee whose age is more than 32
INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE AGE>32

--UPDATE---

---PART A---
--1.Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE AMOUNT=3000

--2.Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW SET BNAME='C.G. ROAD' WHERE CNAME='ANIL';

--3.Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000,ACOUNTNO=111 WHERE CNAME='SANDIP'

--4.Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=7000 WHERE CNAME='KRANTI'

--5.Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME='ANDHERI' WHERE BNAME='ANDHERI WEST';

--6.Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT SET BNAME='NEHRU PALACE' WHERE CNAME='NEHUL';

--7.Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE ACOUNTNO BETWEEN 103 AND 107

--8.Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT SET ADATE='1-4-95' WHERE CNAME='ANIL'

--9.Update the amount of MINU to 10000. (Use Deposit Table)

--10.Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
