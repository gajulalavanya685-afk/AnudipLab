mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| ecommerces               |
| ecommerece               |
| information_schema       |
| mysql                    |
| performance_schema       |
| sakila                   |
| student                  |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| studentmanagementsystemm |
| sys                      |
| world                    |
+--------------------------+
12 rows in set (0.00 sec)

mysql> use ecommerces;
Database changed

mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| bankaccount          |
| customer             |
| customers            |
| emp_detail           |
| employee             |
| employees            |
| order_details        |
| orders               |
| orders1              |
| orderss              |
| product              |
+----------------------+
11 rows in set (0.00 sec)

mysql> desc employees;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select*from employees;
+-------------+--------------------+--------+
| employee_id | name               | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           2 | priya mishra       |  25000 |
|           3 | Anjali sharma      |  30000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  35000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> select*from employees where salary>35000;
+-------------+------------------+--------+
| employee_id | name             | salary |
+-------------+------------------+--------+
|           1 | kavitha gajula   |  90000 |
|           4 | vijay devarkonda |  50000 |
+-------------+------------------+--------+
2 rows in set (0.00 sec)

mysql> select*from employees order by salary ;
+-------------+--------------------+--------+
| employee_id | name               | salary |
+-------------+--------------------+--------+
|           2 | priya mishra       |  25000 |
|           3 | Anjali sharma      |  30000 |
|           5 | gauthami bhimarthi |  35000 |
|           4 | vijay devarkonda   |  50000 |
|           1 | kavitha gajula     |  90000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> select*from employees order by salary desc;
+-------------+--------------------+--------+
| employee_id | name               | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  35000 |
|           3 | Anjali sharma      |  30000 |
|           2 | priya mishra       |  25000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| bankaccount          |
| customer             |
| customers            |
| emp_detail           |
| employee             |
| employees            |
| order_details        |
| orders               |
| orders1              |
| orderss              |
| product              |
+----------------------+
11 rows in set (0.01 sec)

mysql> desc orders1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id         | int         | NO   | PRI | NULL    |       |
| department | varchar(50) | NO   |     | NULL    |       |
| amount     | double      | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> select*from orders1;
+----+------------+--------+
| id | department | amount |
+----+------------+--------+
|  1 | HR         |   3000 |
|  2 | HR         |   2000 |
|  3 | IT         |   1500 |
+----+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |       290000 |
| IT         |       190000 |
+------------+--------------+
2 rows in set (0.02 sec)

mysql> select department, avg(amount) as total_average from orders group by department;
+------------+--------------------+
| department | total_average      |
+------------+--------------------+
| HR         |              58000 |
| IT         | 63333.333333333336 |
+------------+--------------------+
2 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department having sum(amount)>1500;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |       290000 |
| IT         |       190000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, avg(amount) as total_average from orders1 group by department;
+------------+---------------+
| department | total_average |
+------------+---------------+
| HR         |          2500 |
| IT         |          1500 |
+------------+---------------+
2 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders1 group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |         5000 |
| IT         |         1500 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders1 group by department having sum(amount)>1500;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |         5000 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> select*from employees;
+-------------+--------------------+--------+
| employee_id | name               | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           2 | priya mishra       |  25000 |
|           3 | Anjali sharma      |  30000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  35000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employees add department varchar(50)not null ;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into employees values(101,'kavitha',9000,'HR');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employees values(102,'mayaa',8500,'HR');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employees values(103,'Layaa',8000,'IT');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employees values(104,'diya',8000,'IT');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employees values(105,'riya',6000,'finance');
Query OK, 1 row affected (0.02 sec)

mysql> select*from employees;
+-------------+--------------------+--------+------------+
| employee_id | name               | salary | department |
+-------------+--------------------+--------+------------+
|           1 | kavitha gajula     |  90000 |            |
|           2 | priya mishra       |  25000 |            |
|           3 | Anjali sharma      |  30000 |            |
|           4 | vijay devarkonda   |  50000 |            |
|           5 | gauthami bhimarthi |  35000 |            |
|         101 | kavitha            |   9000 | HR         |
|         102 | mayaa              |   8500 | HR         |
|         103 | Layaa              |   8000 | IT         |
|         104 | diya               |   8000 | IT         |
|         105 | riya               |   6000 | finance    |
+-------------+--------------------+--------+------------+
10 rows in set (0.00 sec)

mysql> select department ,count(*) as total_employee from employees group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
|            |              5 |
| HR         |              2 |
| IT         |              2 |
| finance    |              1 |
+------------+----------------+
4 rows in set (0.02 sec)

mysql> select department ,sum(salary) as total_salary from employees group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
|            |       230000 |
| HR         |        17500 |
| IT         |        16000 |
| finance    |         6000 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department ,avg(salary) as total_average from employees group by department;
+------------+---------------+
| department | total_average |
+------------+---------------+
|            |         46000 |
| HR         |          8750 |
| IT         |          8000 |
| finance    |          6000 |
+------------+---------------+
4 rows in set (0.00 sec)

mysql> select department ,count(*)as total from employees group by department having count(*)>1;
+------------+-------+
| department | total |
+------------+-------+
|            |     5 |
| HR         |     2 |
| IT         |     2 |
+------------+-------+
3 rows in set (0.02 sec)

mysql> select department ,count(*)as total from employees group by department having count(*)<=1;
+------------+-------+
| department | total |
+------------+-------+
| finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)

mysql> select department ,count(*)as total from employees group by department having count(*)<=2;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
| finance    |     1 |
+------------+-------+
3 rows in set (0.00 sec)
