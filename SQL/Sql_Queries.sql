show databases;
use school;
select * from emp;

-- 21. WAQTD THE DETAILS OF EMPLOYESS ALONG WITH HALF TERM SALARY WHO EARNIG SAL GREATER THAN 5000 AND NAME STARTS WITH VOWELS ?
select *,sal/2 as "Half Term Salary" from emp where sal>5000 and left(lower(ename),1) in ('a','i','o','u');
-- or 		
select *,sal/2 as "Half Term Salary" from emp where sal>5000 and lower(substring(ename,1,1)) in ('a','i','o','u');

-- 22. WAQTD DETAILS OF EMPLOYESS WHO ARE NOT WORKING AS A MANAGER AND HAVING SAL IN BETWEEN 1000-2000 ?
select * from emp where job != "Manager" and sal between 1000 and 2000;

-- 23.WAQTD NAME OF EMPLOYEES WHO IS WORKING AS A CLERKS OR PRESIDENT ?
select ename from emp where job in ('clerk','president');

-- 24.WAQTD LIST OF EMPLOYEES WHOSE SALARY RANGE BETWEEN 0-1400 ?
select ename,sal from emp where sal between 0 and 1400;

-- 25.WAQTD NAMES OF EMPLOYEES WHO'S WORKING IN DEPT 10 AND HAVING SECOND LETTER AS 'M' ?
select ename from emp where DEPTNO=10 and ename like '_A%';
-- or
select ename from emp where DEPTNO=10 and lower(substring(ENAME,2,1))='m';

-- 26.WAQTD THE MAXIMUM SALARY OF DEPT 30 AND 20 ?
select max(sal) from emp where DEPTNO in (20,30);
-- or
select deptno,max(sal) from emp where DEPTNO in (20,30) group by DEPTNO limit 1;

-- 27.WAQTD NAME OF THE EMPLOYEE WHO'S GETTING SALARY LESS THAN SMITH ?
select ename from emp where sal < (select sal from emp where ename='smith');

-- 28.WAQTD MINIMUM SALARIES GIVEN TO AN EMPLOYEE WORKING IN EACH DEPT ?
select DEPTNO,min(sal) from emp group by DEPTNO;

-- 29.LIST ALL THE DEPT NAME THAT ARE HAVING ATLEAST 3 EMPLOYEES BUT NOT MORE THAN 5 EMPLOYEES IN IT ?
select deptno,count(*) from emp group by DEPTNO having count(*) between 3 and 5;

-- 30.WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPARTMENT EXCEPT SALESMAN?
select DEPTNO,count(*) from emp where job!='salesman' group by DEPTNO;

-- 31.WAQTD DETAILS OF EMPLOYEES WHO ARE GETTING THE REPEATED SALARY?
select * from emp where sal in (select sal from emp group by sal having count(*)>1);

-- 32.WAQTD NUMBER OF EMPLOYESS WHO ARE HAVING SAME NAME ?
select ename,count(ename) as count from emp group by ename having count(ename)>1;

-- 33.WAQTD AVG SALARY NEEDED TO PAY ALL THE EMPLOYEES IN EACH DEPT EXCLUDING THE EMPLOYEES OF DEPT 10 ?
select deptno,avg(sal) from emp where DEPTNO!=10 group by DEPTNO;

-- 34.WAQTD NAME AND TOTAL SALARY OF THE EMPLOYEES IF THE EMPLOYEES ARE EARNING MORE THAN 2500 ?
select ename,sal*12 from emp where sal >2500;

-- 35. Find job roles with average salary between 30,000 and 60,000.
select job,avg(sal) from emp group by job having avg(sal) between 30000 and 60000;

-- 36. List employees by department number in ascending order, and within each department by salary descending. 
select * from emp order by DEPTNO ,sal desc;

-- 37. Show all employees ordered alphabetically by job title, then by name. 
select * from emp order by job,ename;

-- 38. Retrieve employees earning more than 30,000 and sort them by salary in descending order. 
select * from emp where sal > 30000 order by sal desc;

-- 39. List employees from department 10, sorted by hire date (oldest first). 
select * from emp where DEPTNO=10 order by HIREDATE;

-- 40. Display employee names and job titles ordered by job in descending order and salary ascending.
select ename, job from emp order by job desc,sal;