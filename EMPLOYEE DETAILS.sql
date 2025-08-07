drop table Employee2;
drop database mec;
create database mec;
create table Employee(EMPLOYEE_ID int primary key ,FIRST_NAME varchar(100),LAST_NAME varchar(100)
,SALARY int, JOINING_DATE varchar(20),DEPARTMENT varchar(100));
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
1,"Venkatesh","S",100000,"08/28/2015","BANKING");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
2,"Ragavi","P",75000,"08/28/2015","BUSINESS");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
3,"Gopinath","C",50000,"03/02/2016","PHARMA");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
4,"Dinesh","G",50000,"03/02/2016","INSURANCE");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
5,"Saibabu","E",40000,"07/08/2017","SOFTWARE");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
6,"Hasan","S",29000,"07/08/2017","MANUFACTURING");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
7,"Divya","P",33000,"7/08/2017","HEALTHCARE");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
8,"Aravindan","R",40000,"7/08/2017","HEALTHCARE");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
9,"Sathish","MD",45000,"03/02/2016","AUTOMOBILE");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
10,"Prasanth","PKP",34000,"03/02/2016","INSURANCE");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
11,"Vijay","R",25684,"03/02/2016","BUSINESS");
insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values(
12,"Sivakumar","K",54789,"03/02/2016","SOFTWARE");
DROP TABLE Incentives;
create table Incentives(Employee_ref_id int,Incentive_Date varchar(20),Incentive_Amount int,foreign key(Employee_ref_id) references Employee(EMPLOYEE_ID));
insert into Incentives(Employee_ref_id,Incentive_Date,Incentive_Amount) values(
1,"02/01/2016",5000);
insert into Incentives(Employee_ref_id,Incentive_Date,Incentive_Amount) values(
2,"02/01/2016",3000);
insert into Incentives(Employee_ref_id,Incentive_Date,Incentive_Amount) values(
3,"01/01/2017",4000);
insert into Incentives(Employee_ref_id,Incentive_Date,Incentive_Amount) values(
4,"02/01/2016",4500);


select * from Employee; -- 1.get all the data....

select FIRST_NAME,LAST_NAME from Employee; -- 2.get first name and last name....

select FIRST_NAME as Employee_Name from Employee; -- 3.GET THE FIRST NAME FROM THE TABLE...

select upper(FIRST_NAME)  from Employee; -- 4.upper case....

select lower(FIRST_NAME) from Employee; -- 5.lower case...

select * from Employee where Department = "Insurance"; -- 6.unique department...

select substring(FIRST_NAME,1,3) from Employee;  -- 7.first 3 character of First_name...

select  RTRIM(FIRST_NAME) from Employee; -- 8.remove whitespace from right side...

select LTRIM(FIRST_NAME) from Employee; -- 9.remove whitespace from left side...

select LENGTH(FIRST_NAME) from Employee;  -- 10.length of the data in the column...

select REPLACE(FIRST_NAME ,'a','$') from Employee;  -- 11.replacing 'a' with '$'...

select concat(FIRST_NAME,'_',LAST_NAME) from Employee;  -- 12.joining two columns to single column.....

select FIRST_NAME,JOINING_DATE from Employee; -- 13.get the first name and date from the table....

select substring(JOINING_DATE,1,2) from Employee;

select substring(JOINING_DATE,4,7) FROM Employee;

select * from Employee order by FIRST_NAME asc; -- 14.select the data in ascending order..

select * from Employee order by FIRST_NAME desc; -- 15.select the data in descending order..

select FIRST_NAME,Salary from Employee order by FIRST_NAME asc , Salary desc; -- 16.first name as ascending and salary as descending...

select * from Employee where FIRST_NAME = "Dinesh"; -- 17.selecting a particular name in database...

select * from Employee where FIRST_NAME like 'S%'; -- 18.first name starts with S....

select * from Employee where FIRST_NAME like 'v%'; -- 19.first name contains letter V....

select * from Employee where FIRST_NAME != "Dinesh"; -- 20.employee name that is not dinesh....

select * from Employee where FIRST_NAME like '%n'; -- 21.name endswith N....

select * from Employee where FIRST_NAME like 'J%'; -- 22.NAME STARTSWITH J....

select * from Employee where Salary >60000; -- 23.Salary is greater than 60000....

select * from Employee where Salary <80000; -- 24.salary is less than 80000.....

select * from Employee where Salary >50000 and Salary < 80000; -- 25.Salary is between 50000 and 80000....

select * from Employee where FIRST_NAME = "Venkatesh" || FIRST_NAME = "Ragavi" ; -- 26.select the data of venkatesh and ragavi...

select Department , sum(Salary) from Employee group by Department; -- 27.get department and salary with respect to department....

select Department , count(FIRST_NAME) , sum(Salary) from Employee group by Department; -- 28.getting no.of employees and sum of salary with respect to Department.....

select Department, avg(Salary) from Employee group by Department; -- 29.getting the average salary of each department....

select Department, min(Salary) from Employee group by Department;  -- 30.getting the minimum salary of each department....

select Department, max(Salary) from Employee group by Department;  -- 31.getting the maximum salary of each Department....

select Department , sum(Salary) from Employee where Salary >80000 group by Department; -- 32.getting the department and salary where salary is greater than 80000....

select FIRST_NAME , Incentive_Amount from Employee em join Incentives ic on em.Employee_id=ic.Employee_ref_id; -- 33.those who have incentive....

select distinct salary from Employee order by salary desc limit 2; -- 34.select top 2 from salary from employee table....

select distinct salary from Employee order by salary desc limit 5; -- 35.select top 5 from salary from employee table....

select distinct salary from Employee order by salary desc limit 1 offset 1; -- 36.select 2nd highest salary from employee table...

select distinct salary from Employee order by salary desc limit 1 offset 3; -- 37.select nth highest salary from employee table....
