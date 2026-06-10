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
6 rows in set (0.04 sec)

mysql> select*from employee_details;
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

mysql> select*from employee_details limit 3;
+-------------+----------------+--------+
| employee_id | name           | salary |
+-------------+----------------+--------+
|           1 | kavitha gajula |  90000 |
|           2 | priya mishra   |  25000 |
|           3 | Anjali sharma  |  30000 |
+-------------+----------------+--------+
3 rows in set (0.00 sec)

mysql> select * from employee_details order by salary;
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

mysql> select * from employee_details order by name;
+-------------+--------------------+--------+
| employee_id | name               | salary |
+-------------+--------------------+--------+
|           3 | Anjali sharma      |  30000 |
|           5 | gauthami bhimarthi |  35000 |
|           1 | kavitha gajula     |  90000 |
|           2 | priya mishra       |  25000 |
|           4 | vijay devarkonda   |  50000 |
+-------------+--------------------+--------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by salary desc;
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

mysql> select * from employee_details order by salary desc limit 2;
+-------------+------------------+--------+
| employee_id | name             | salary |
+-------------+------------------+--------+
|           1 | kavitha gajula   |  90000 |
|           4 | vijay devarkonda |  50000 |
+-------------+------------------+--------+
2 rows in set (0.00 sec)

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
6 rows in set (0.00 sec)

mysql> select*from customers;
+-------------+----------+----------------+--------------------------+------------+---------------------+----------+
| customer_id | name     | city           | email                    | phone_no   | address             | pin_code |
+-------------+----------+----------------+--------------------------+------------+---------------------+----------+
| c101        | laya     | bhiwandi       | gajulalaya2011@gmail.com | 9272486939 | padmanagar bhiwandi |   421305 |
| c102        | lavanya  | thane          | laya20@gmail.com         | 1234567899 | thane west          |   421302 |
| c103        | chitti   | mumbai         | chitt14@gmail.com        | 1234534899 | marine drive        |   421301 |
| c104        | gauthami | kamtghar       | gautami@gmail.com        | 1244335566 | shivram nagar       |   234123 |
| c105        | kavitha  | ganesh talkies | kavitha15@gmail.com      | 1122776655 | near ganesh mandir  |   234567 |
| c106        | kulkarni | anjurpada      | kulkarni@gmail.com       | 9876543213 | anjurpada bwd       |   345678 |
+-------------+----------+----------------+--------------------------+------------+---------------------+----------+
6 rows in set (0.01 sec)

mysql> select*from customer;
+-------------+----------+----------------+---------------------+------------+--------------------+----------+
| customer_id | name     | city           | email               | phone_no   | address            | pin_code |
+-------------+----------+----------------+---------------------+------------+--------------------+----------+
| c104        | gauthami | kamtghar       | gautami@gmail.com   | 1244335566 | shivram nagar      |   234123 |
| c105        | kavitha  | ganesh talkies | kavitha15@gmail.com | 1122776655 | near ganesh mandir |   234567 |
| c106        | kulkarni | anjurpada      | kulkarni@gmail.com  | 9876543213 | anjurpada bwd      |   345678 |
+-------------+----------+----------------+---------------------+------------+--------------------+----------+
3 rows in set (0.00 sec)

mysql> select*from employee;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      1 | laya    |  90000 |
|      2 | sri     |  80000 |
|      3 | lavanya |  25000 |
|      4 | maya    |  25000 |
|      5 | riya    |  23000 |
+--------+---------+--------+
5 rows in set (0.00 sec)

mysql> select distinct salary from employee;
+--------+
| salary |
+--------+
|  90000 |
|  80000 |
|  25000 |
|  23000 |
+--------+
4 rows in set (0.00 sec)

mysql> select*from employee_details;
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

mysql> select*from employee_details where employee_id between 1 and 4;
+-------------+------------------+--------+
| employee_id | name             | salary |
+-------------+------------------+--------+
|           1 | kavitha gajula   |  90000 |
|           2 | priya mishra     |  25000 |
|           3 | Anjali sharma    |  30000 |
|           4 | vijay devarkonda |  50000 |
+-------------+------------------+--------+
4 rows in set (0.00 sec)

mysql> select*from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       20 |       30000 | cash         | 2026-04-02 00:00:00 | shipping     |
|      102 | c102        | p102       |       20 |       30000 | gpay         | 2026-05-01 00:00:00 | shipping     |
|      103 | c103        | p103       |       10 |       40000 | phone_pay    | 2026-05-03 00:00:00 | delivered    |
|      104 | c105        | p104       |       25 |       25000 | phone_pay    | 2026-05-05 00:00:00 | delivered    |
|      105 | c104        | p105       |       25 |       15000 | cash         | 2026-05-05 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select*from employee_details where employee_id between '2026-04-01' and '2026-05-03';
Empty set, 2 warnings (0.00 sec)

mysql> select*from order_details where order_date between '2026-04-01' and '2026-05-03';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       20 |       30000 | cash         | 2026-04-02 00:00:00 | shipping     |
|      102 | c102        | p102       |       20 |       30000 | gpay         | 2026-05-01 00:00:00 | shipping     |
|      103 | c103        | p103       |       10 |       40000 | phone_pay    | 2026-05-03 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select*from order_details where order_date not between '2026-04-01' and '2026-05-03';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      104 | c105        | p104       |       25 |       25000 | phone_pay    | 2026-05-05 00:00:00 | delivered    |
|      105 | c104        | p105       |       25 |       15000 | cash         | 2026-05-05 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select*from order_details where order_id in (101,103,105);
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       20 |       30000 | cash         | 2026-04-02 00:00:00 | shipping     |
|      103 | c103        | p103       |       10 |       40000 | phone_pay    | 2026-05-03 00:00:00 | delivered    |
|      105 | c104        | p105       |       25 |       15000 | cash         | 2026-05-05 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select*from order_details where order_id not in (101,103,105);
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      102 | c102        | p102       |       20 |       30000 | gpay         | 2026-05-01 00:00:00 | shipping     |
|      104 | c105        | p104       |       25 |       25000 | phone_pay    | 2026-05-05 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select*from order_details where payment_mode is not null;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       20 |       30000 | cash         | 2026-04-02 00:00:00 | shipping     |
|      102 | c102        | p102       |       20 |       30000 | gpay         | 2026-05-01 00:00:00 | shipping     |
|      103 | c103        | p103       |       10 |       40000 | phone_pay    | 2026-05-03 00:00:00 | delivered    |
|      104 | c105        | p104       |       25 |       25000 | phone_pay    | 2026-05-05 00:00:00 | delivered    |
|      105 | c104        | p105       |       25 |       15000 | cash         | 2026-05-05 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select*from order_details where payment_mode is not null;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       20 |       30000 | cash         | 2026-04-02 00:00:00 | shipping     |
|      102 | c102        | p102       |       20 |       30000 | gpay         | 2026-05-01 00:00:00 | shipping     |
|      103 | c103        | p103       |       10 |       40000 | phone_pay    | 2026-05-03 00:00:00 | delivered    |
|      104 | c105        | p104       |       25 |       25000 | phone_pay    | 2026-05-05 00:00:00 | delivered    |
|      105 | c104        | p105       |       25 |       15000 | cash         | 2026-05-05 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select*from order_details where payment_mode='cash' and quantity=20;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       20 |       30000 | cash         | 2026-04-02 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.02 sec)

mysql> select*from order_details where payment_mode='cash' or quantity=20;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       20 |       30000 | cash         | 2026-04-02 00:00:00 | shipping     |
|      102 | c102        | p102       |       20 |       30000 | gpay         | 2026-05-01 00:00:00 | shipping     |
|      105 | c104        | p105       |       25 |       15000 | cash         | 2026-05-05 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)
