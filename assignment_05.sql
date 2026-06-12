/*
SQL joins
*/
use joins;
Database changed

mysql> create table department1(dep_id int not null primary key,depart_name varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into department1 values(1,'HR');
Query OK, 1 row affected (0.02 sec)

mysql> insert into department1 values(2,'IT');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department1 values(3,'Finance');
Query OK, 1 row affected (0.02 sec)

mysql> insert into department1 values(4,'Marketing');
Query OK, 1 row affected (0.02 sec)

mysql> select*from department1;
+--------+-------------+
| dep_id | depart_name |
+--------+-------------+
|      1 | HR          |
|      2 | IT          |
|      3 | Finance     |
|      4 | Marketing   |
+--------+-------------+
4 rows in set (0.00 sec)

mysql> create table emp2(empy_id int not null primary key,empy_name varchar(50) not null,dep_id int,foreign key(dep_id)references department1(dep_id));
Query OK, 0 rows affected (0.05 sec)

mysql> desc emp2;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| empy_id   | int         | NO   | PRI | NULL    |       |
| empy_name | varchar(50) | NO   |     | NULL    |       |
| dep_id    | int         | YES  | MUL | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into emp2 values(1,'rohan',1
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp2 values(2,'mohan',2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp2 values(3,'riya',1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp2 values(4,'Miya',NULL);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp2 values(5,'Priya',4);
Query OK, 1 row affected (0.01 sec)

mysql> select*from emp2;
+---------+-----------+--------+
| empy_id | empy_name | dep_id |
+---------+-----------+--------+
|       1 | rohan     |      1 |
|       2 | mohan     |      2 |
|       3 | riya      |      1 |
|       4 | Miya      |   NULL |
|       5 | Priya     |      4 |
+---------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select*from department1;
+--------+-------------+
| dep_id | depart_name |
+--------+-------------+
|      1 | HR          |
|      2 | IT          |
|      3 | Finance     |
|      4 | Marketing   |
+--------+-------------+
4 rows in set (0.01 sec)

mysql> select empy_name,depart_name from emp2 inner join department1 on emp2.dep_id=department1.dep_id;
+-----------+-------------+
| empy_name | depart_name |
+-----------+-------------+
| rohan     | HR          |
| riya      | HR          |
| mohan     | IT          |
| Priya     | Marketing   |
+-----------+-------------+
4 rows in set (0.00 sec)

mysql> select empy_name,depart_name from emp2 left join department1 on emp2.dep_id=department1.dep_id;
+-----------+-------------+
| empy_name | depart_name |
+-----------+-------------+
| rohan     | HR          |
| mohan     | IT          |
| riya      | HR          |
| Miya      | NULL        |
| Priya     | Marketing   |
+-----------+-------------+
5 rows in set (0.00 sec)

mysql> select*from emp2;
+---------+-----------+--------+
| empy_id | empy_name | dep_id |
+---------+-----------+--------+
|       1 | rohan     |      1 |
|       2 | mohan     |      2 |
|       3 | riya      |      1 |
|       4 | Miya      |   NULL |
|       5 | Priya     |      4 |
+---------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select*from department1;
+--------+-------------+
| dep_id | depart_name |
+--------+-------------+
|      1 | HR          |
|      2 | IT          |
|      3 | Finance     |
|      4 | Marketing   |
+--------+-------------+
4 rows in set (0.00 sec)

mysql> select empy_name,depart_name from emp2 left join department1 on emp2.dep_id=department1.dep_id;
+-----------+-------------+
| empy_name | depart_name |
+-----------+-------------+
| rohan     | HR          |
| mohan     | IT          |
| riya      | HR          |
| Miya      | NULL        |
| Priya     | Marketing   |
+-----------+-------------+
5 rows in set (0.01 sec)

mysql> select empy_name,depart_name from emp2 right join department1 on emp2.dep_id=department1.dep_id;
+-----------+-------------+
| empy_name | depart_name |
+-----------+-------------+
| rohan     | HR          |
| riya      | HR          |
| mohan     | IT          |
| NULL      | Finance     |
| Priya     | Marketing   |
+-----------+-------------+
5 rows in set (0.00 sec)

mysql> select empy_name,depart_name from emp2 cross join department1;
+-----------+-------------+
| empy_name | depart_name |
+-----------+-------------+
| rohan     | Marketing   |
| rohan     | Finance     |
| rohan     | IT          |
| rohan     | HR          |
| mohan     | Marketing   |
| mohan     | Finance     |
| mohan     | IT          |
| mohan     | HR          |
| riya      | Marketing   |
| riya      | Finance     |
| riya      | IT          |
| riya      | HR          |
| Miya      | Marketing   |
| Miya      | Finance     |
| Miya      | IT          |
| Miya      | HR          |
| Priya     | Marketing   |
| Priya     | Finance     |
| Priya     | IT          |
| Priya     | HR          |
+-----------+-------------+
20 rows in set (0.00 sec)
