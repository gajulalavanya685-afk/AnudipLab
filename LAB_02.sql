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
11 rows in set (0.01 sec)

mysql> use ecommerces;
Database changed

mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| customer             |
| customers            |
| employee             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
6 rows in set (0.01 sec)

mysql> create table BankAccount(account_id int(10) not null primary key,account_holder_name varchar(50)not null,account_balance int(10)not null);
Query OK, 0 rows affected, 2 warnings (0.06 sec)

mysql> desc BankAccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | int         | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50) | NO   |     | NULL    |       |
| account_balance     | int         | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into BankAccount values(101,'Laxminarayana Gajula',99000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into BankAccount values(102,'Rahul sharma',70000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into BankAccount values(103,'priya mishra',95000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into BankAccount values(104,'amit kumar',25000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into BankAccount values(105,'vikram singh',45000);
Query OK, 1 row affected (0.01 sec)

mysql> select*from BankAccount;
+------------+----------------------+-----------------+
| account_id | account_holder_name  | account_balance |
+------------+----------------------+-----------------+
|        101 | Laxminarayana Gajula |           99000 |
|        102 | Rahul sharma         |           70000 |
|        103 | priya mishra         |           95000 |
|        104 | amit kumar           |           25000 |
|        105 | vikram singh         |           45000 |
+------------+----------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount;
+----------------------+-----------------+
| account_holder_name  | account_balance |
+----------------------+-----------------+
| Laxminarayana Gajula |           99000 |
| Rahul sharma         |           70000 |
| priya mishra         |           95000 |
| amit kumar           |           25000 |
| vikram singh         |           45000 |
+----------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount where account_balance > 30000;
+----------------------+-----------------+
| account_holder_name  | account_balance |
+----------------------+-----------------+
| Laxminarayana Gajula |           99000 |
| Rahul sharma         |           70000 |
| priya mishra         |           95000 |
| vikram singh         |           45000 |
+----------------------+-----------------+
4 rows in set (0.00 sec)

mysql> update BankAccount set account_balance=100000 where account_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from BankAccount;
+------------+----------------------+-----------------+
| account_id | account_holder_name  | account_balance |
+------------+----------------------+-----------------+
|        101 | Laxminarayana Gajula |          100000 |
|        102 | Rahul sharma         |           70000 |
|        103 | priya mishra         |           95000 |
|        104 | amit kumar           |           25000 |
|        105 | vikram singh         |           45000 |
+------------+----------------------+-----------------+
5 rows in set (0.00 sec)
