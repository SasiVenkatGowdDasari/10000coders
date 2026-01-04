-- show databases;
-- create database school;
use school;

-- creating Dept Table :- 
create table dept(Dno int primary key,Dname varchar(30),location varchar(50));

-- Inserting Values to Dept Table :-
insert into dept values(10,"Accounting","New York"),(20,"Research","Dallas"),(30,"Sales","Chicago"),(40,"Operations","Boston");

-- creating emp Table :- 
CREATE TABLE EMP (EMPNO INT PRIMARY KEY,ENAME VARCHAR(50),JOB VARCHAR(50),MGR INT,HIREDATE DATE,SAL DECIMAL(10, 2),COMM DECIMAL(10, 2),DEPTNO INT);

-- Alter / changing the constraint in emp table
alter table emp add constraint dept_key foreign key (deptno) references dept(dno);

-- Insert into table emp :-
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10),
(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20),
(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),
(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20),
(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);