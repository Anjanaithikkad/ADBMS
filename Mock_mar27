1. Create a database named CompanyDB


mysql> create database CompanyDB;
Query OK, 1 row affected (0.01 sec)

mysql> use CompanyDB;
Database changed


2. Create two tables:
    Employees (EmpID, Name, Department, Salary )
    
     create table Employ(empid int primary key,ename varchar(10),edept varchar(10),salary int);
Query OK, 0 rows affected (0.02 sec)




    Departments (DeptID, DeptName, Location)
    
    
    mysql> create table Department(dept_id int primary key,d_name varchar(10),loc varchar(10));
Query OK, 0 rows affected (0.02 sec)





3. Insert at least  5 records into the  table employees and  3 records into the department table.


insert into Employ values(01,'Nihala','HR',10000),(02,'frina','MD',11000),(03,'Jahana','Manager',8000),(04,'Anjana','Owner',56000),(05,'Anonymous','clerk',5000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> insert into Department values(101,'MD','klntd'),(102,'HR','Ktngl'),(103,'Manager','Kdvly');
Query OK, 3 rows affected (0.00 sec)


4. Write SQL queries to:

a) Select employees whose names start with ‘A’ using LIKE.

mysql> select * from Employ where ename like 'A%';
+-------+-----------+-------+--------+
| empid | ename     | edept | salary |
+-------+-----------+-------+--------+
|     4 | Anjana    | Owner |  56000 |
|     5 | Anonymous | clerk |   5000 |
+-------+-----------+-------+--------+
2 rows in set (0.00 sec)




b) Display the total number of employees in each department using GROUP BY.


mysql> select edept,count(*) as tot_emp from Employ group by edept;
+---------+---------+
| edept   | tot_emp |
+---------+---------+
| HR      |       1 |
| MD      |       1 |
| Manager |       1 |
| Owner   |       1 |
| clerk   |       1 |
+---------+---------+
5 rows in set (0.00 sec)


c) Retrieve all employee details sorted by salary in descending order using ORDER BY.

mysql> select * from Employ order by salary desc;
+-------+-----------+---------+--------+
| empid | ename     | edept   | salary |
+-------+-----------+---------+--------+
|     4 | Anjana    | Owner   |  56000 |
|     2 | frina     | MD      |  11000 |
|     1 | Nihala    | HR      |  10000 |
|     3 | Jahana    | Manager |   8000 |
|     5 | Anonymous | clerk   |   5000 |
+-------+-----------+---------+--------+
5 rows in set (0.00 sec)





d) Fetch employee names, their departments, and department locations using JOIN.


+--------+---------+-------+
| ename  | edept   | loc   |
+--------+---------+-------+
| Nihala | HR      | Ktngl |
| frina  | MD      | klntd |
| Jahana | Manager | Kdvly |
+--------+---------+-------+
3 rows in set (0.00 sec)




e) Find employees earning more than the average salary using a SUBQUERY.



mysql> select * from Employ where salary > (select avg(salary) from Employ);
+-------+--------+-------+--------+
| empid | ename  | edept | salary |
+-------+--------+-------+--------+
|     4 | Anjana | Owner |  56000 |
+-------+--------+-------+--------+
1 row in set (0.00 sec)



f) Create a VIEW to display employees earning more than 55,000.





mysql> create view v1 as select * from Employ where salary > 55000;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from v1;
+-------+--------+-------+--------+
| empid | ename  | edept | salary |
+-------+--------+-------+--------+
|     4 | Anjana | Owner |  56000 |
+-------+--------+-------+--------+
1 row in set (0.00 sec)
