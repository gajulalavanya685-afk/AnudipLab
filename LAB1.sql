/*
Create Database StudentManagementSystem

1.Create Table student

with attribute :● StudentID (Primary Key)
●Name
●Age
●Address

2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback

Add 5 Records in table
*/

mysql> create database StudentManagementsystem1;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementsystem1;
Database changed

mysql> create table student(student_ID varchar(10) not null primary key,name varchar(50),age int(10),address varchar(50));
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_ID | varchar(10) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
| address    | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student values('s101','Lavanya',20,'padmanagar bhiwandi');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values('s102','Laya',21,'kamatghar');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values('s103','deepika',19,'ganesh talkies');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values('s104','srikanth',17,'thane');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values('s105','kavitha',24,'mumbai');
Query OK, 1 row affected (0.02 sec)

mysql> select*from student;
+------------+----------+------+---------------------+
| student_ID | name     | age  | address             |
+------------+----------+------+---------------------+
| s101       | Lavanya  |   20 | padmanagar bhiwandi |
| s102       | Laya     |   21 | kamatghar           |
| s103       | deepika  |   19 | ganesh talkies      |
| s104       | srikanth |   17 | thane               |
| s105       | kavitha  |   24 | mumbai              |
+------------+----------+------+---------------------+
5 rows in set (0.00 sec)

mysql> create table feedback(feedback_id varchar(10) not null primary key,student_ID varchar(10),date datetime not null,Instructor_Name varchar(20),feedback varchar(50) not null,foreign key(student_ID) references student(student_ID));
Query OK, 0 rows affected (0.06 sec)

mysql> desc feedback;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_ID      | varchar(10) | YES  | MUL | NULL    |       |
| date            | datetime    | NO   |     | NULL    |       |
| Instructor_Name | varchar(20) | YES  |     | NULL    |       |
| feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table feedback1(feedback_id varchar(10) not null primary key,student_ID varchar(10) not null,date datetime not null,Instructor_Name varchar(20) not null,feedback varchar(50) not null,foreign key(student_ID) references student(student_ID));
Query OK, 0 rows affected (0.04 sec)

mysql> desc feedback1;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_ID      | varchar(10) | NO   | MUL | NULL    |       |
| date            | datetime    | NO   |     | NULL    |       |
| Instructor_Name | varchar(20) | NO   |     | NULL    |       |
| feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into feedback values('f101','s101','2026-05-03','Srilaxmi Gajula','session is good');
Query OK, 1 row affected (0.02 sec)

mysql> insert into feedback values('f102','s102','2026-05-05','Gautam Vanam','session was excellent');
Query OK, 1 row affected (0.03 sec)

mysql> insert into feedback values('f103','s103','2026-05-07','dusa laxmi','session is nice');
Query OK, 1 row affected (0.03 sec)

mysql> insert into feedback values('f104','s104','2026-05-10','laxminarayana Gajul','session is informative');
Query OK, 1 row affected (0.01 sec)

mysql> insert into feedback values('f105','s105','2026-05-12','ujwal kullkarni','session is good');
Query OK, 1 row affected (0.01 sec)

mysql> select*from feedback;
+-------------+------------+---------------------+---------------------+------------------------+
| feedback_id | student_ID | date                | Instructor_Name     | feedback               |
+-------------+------------+---------------------+---------------------+------------------------+
| f101        | s101       | 2026-05-03 00:00:00 | Srilaxmi Gajula     | session is good        |
| f102        | s102       | 2026-05-05 00:00:00 | Gautam Vanam        | session was excellent  |
| f103        | s103       | 2026-05-07 00:00:00 | dusa laxmi          | session is nice        |
| f104        | s104       | 2026-05-10 00:00:00 | laxminarayana Gajul | session is informative |
| f105        | s105       | 2026-05-12 00:00:00 | ujwal kullkarni     | session is good        |
+-------------+------------+---------------------+---------------------+------------------------+
5 rows in set (0.00 sec)
