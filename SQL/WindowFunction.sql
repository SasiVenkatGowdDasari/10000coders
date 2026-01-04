use school;
select * from emp;

-- 1. Rank employees by salary in their department ?
select ename,sal,dense_rank() over(order by sal desc) from emp;

-- 2. Calculate cumulative salary in each department ?
select ename,deptno,sal,sum(sal) over(partition by deptno order by hiredate) from emp;

-- 3. Show average salary per department for each employee ?
select ename,deptno,sal,avg(sal) over(partition by deptno order by hiredate) from emp;

-- 4. Show highest salary in each department ?
select deptno,max(sal) as avg_sal from emp  group by deptno;

-- 5. Row number of employees based on hire date ?
select *,row_number() over(order by hiredate) as "number" from emp;