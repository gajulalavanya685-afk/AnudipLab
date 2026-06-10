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
| studentmanagementsystem  |
| studentmanagementsystem1 |
| studentmanagementsystemm |
| sys                      |
| world                    |
+--------------------------+
11 rows in set (0.00 sec)

mysql> use ecommerces;
Database changed

mysql> create table employee2(employee_id int(10)not null primary key,employee_name varchar(50)not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> desc employee2;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| salary        | double      | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee2 values(1,'kavitha gajula',90000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee2 values(2,'priya mishra',25000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee2 values(3,'Anjali sharma',30000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee2 values(4,'vijay devarkonda',50000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee2 values(5,'gauthami bhimarthi',35000);
Query OK, 1 row affected (0.02 sec)

mysql> select*from employee2;
+-------------+--------------------+--------+
| employee_id | employee_name      | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           2 | priya mishra       |  25000 |
|           3 | Anjali sharma      |  30000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  35000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> update employee2 set salary=60000 where employee_id=5;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from employee2;
+-------------+--------------------+--------+
| employee_id | employee_name      | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           2 | priya mishra       |  25000 |
|           3 | Anjali sharma      |  30000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  60000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> update employee2 set employee_name='salman khan' where employee_id=2;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from employee2;
+-------------+--------------------+--------+
| employee_id | employee_name      | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           2 | salman khan        |  25000 |
|           3 | Anjali sharma      |  30000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  60000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee2 where employee_id=2;
Query OK, 1 row affected (0.03 sec)

mysql> delete from employee2;
Query OK, 4 rows affected (0.02 sec)

mysql> select*from employee2;
Empty set (0.00 sec)

mysql> desc employee2;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| salary        | double      | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee2 values(1,'kavitha gajula',90000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee2 values(2,'priya mishra',25000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee2 values(3,'Anjali sharma',30000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee2 values(4,'vijay devarkonda',50000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee2 values(5,'gauthami bhimarthi',35000);
Query OK, 1 row affected (0.02 sec)

mysql> select*from employee2;
+-------------+--------------------+--------+
| employee_id | employee_name      | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           2 | priya mishra       |  25000 |
|           3 | Anjali sharma      |  30000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  35000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee2;
Query OK, 0 rows affected (0.04 sec)

mysql> select*from employee2;
Empty set (0.01 sec)

mysql> desc employee2;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| salary        | double      | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee2;
Query OK, 0 rows affected (0.04 sec)

mysql> create table employee2(employee_id int(10)not null primary key,employee_name varchar(50)not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> insert into employee2 values(1,'kavitha gajula',90000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee2 values(2,'priya mishra',25000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee2 values(3,'Anjali sharma',30000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee2 values(4,'vijay devarkonda',50000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee2 values(5,'gauthami bhimarthi',35000);
Query OK, 1 row affected (0.01 sec)

mysql> select*from employee2;
+-------------+--------------------+--------+
| employee_id | employee_name      | salary |
+-------------+--------------------+--------+
|           1 | kavitha gajula     |  90000 |
|           2 | priya mishra       |  25000 |
|           3 | Anjali sharma      |  30000 |
|           4 | vijay devarkonda   |  50000 |
|           5 | gauthami bhimarthi |  35000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee2 add email varchar(50)not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee2;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| salary        | double      | NO   |     | NULL    |       |
| email         | varchar(50) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table employee2 modify employee_name varchar(100)not null;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee2;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
| email         | varchar(50)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table employee2 drop column email;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee2;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> alter table employee2 rename column employee_name to name;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee2;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee2 rename to employee_details;
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee_details;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   |     | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> alter table employee_details add constraint primary key(employee_id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
