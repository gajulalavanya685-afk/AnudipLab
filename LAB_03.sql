/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Ordermysql> show databases;
*/
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
11 rows in set (0.03 sec)

mysql> create database student;
Query OK, 1 row affected (0.01 sec)

mysql> use student;
Database changed

mysql> create table student(stud_id int(10) not null,FirstName varchar(50) not null,LastName varchar(50)not null,Age int(10) not null,Phoneno int(20) not null,Address varchar(50));
Query OK, 0 rows affected, 3 warnings (0.05 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   |     | NULL    |       |
| FirstName | varchar(50) | NO   |     | NULL    |       |
| LastName  | varchar(50) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Phoneno   | int         | NO   |     | NULL    |       |
| Address   | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into student values(1,'Lavanya','Gajula',20,1234567743,'padmanagar bhiwandi');
Query OK, 1 row affected (0.03 sec)

mysql> insert into student values(2,'priya','sharma',24,334567573,'kamatghar bhiwandi');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values(3,'rahul','gupta',27,334567534,'Thane west');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values(4,'sanjay','mishra',25,904567534,'mumbai');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values(5,'chitti','koduri',25,812367534,'mumbra');
Query OK, 1 row affected (0.02 sec)

mysql> select*from student;
+---------+-----------+----------+-----+------------+---------------------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address             |
+---------+-----------+----------+-----+------------+---------------------+
|       1 | Lavanya   | Gajula   |  20 | 1234567743 | padmanagar bhiwandi |
|       2 | priya     | sharma   |  24 |  334567573 | kamatghar bhiwandi  |
|       3 | rahul     | gupta    |  27 |  334567534 | Thane west          |
|       4 | sanjay    | mishra   |  25 |  904567534 | mumbai              |
|       5 | chitti    | koduri   |  25 |  812367534 | mumbra              |
+---------+-----------+----------+-----+------------+---------------------+
5 rows in set (0.00 sec)

mysql> select*from student order by LastName;
+---------+-----------+----------+-----+------------+---------------------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address             |
+---------+-----------+----------+-----+------------+---------------------+
|       1 | Lavanya   | Gajula   |  20 | 1234567743 | padmanagar bhiwandi |
|       3 | rahul     | gupta    |  27 |  334567534 | Thane west          |
|       5 | chitti    | koduri   |  25 |  812367534 | mumbra              |
|       4 | sanjay    | mishra   |  25 |  904567534 | mumbai              |
|       2 | priya     | sharma   |  24 |  334567573 | kamatghar bhiwandi  |
+---------+-----------+----------+-----+------------+---------------------+
5 rows in set (0.00 sec)
