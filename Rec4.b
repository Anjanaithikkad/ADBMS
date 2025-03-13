b) OPTIMIZING DATABASE:  (GROUP BY, AGGREGATE FUNCTIONS)
1.    List product name, price except soap on price order. 

ysql> select pname,price from Product where pname!='soap' order by price;
+----------+--------+
| pname    | price  |
+----------+--------+
| pencil   |  10.20 |
| pen      |  30.60 |
| sugar    | 102.00 |
| Bedsheet | 183.60 |
+----------+--------+
4 rows in set (0.00 sec)



2.    Find minimum, maximum and average price of products. 


mysql> select min(price) as min_price,max(price) as max_price, avg(price) as avg_price from Product;
+-----------+-----------+-----------+
| min_price | max_price | avg_price |
+-----------+-----------+-----------+
|     10.20 |    183.60 | 77.520000 |
+-----------+-----------+-----------+
1 row in set (0.00 sec)



3.    Find number of customers in each city. 


mysql> select city,count(*) as num_cust from Customer group by city;
+------------+----------+
| city       | num_cust |
+------------+----------+
| clt        |        2 |
| ernankulam |        1 |
| calicut    |        1 |
| knr        |        1 |
+------------+----------+
4 rows in set (0.00 sec)


4.    Find number of customers in each city, only include city with more than 3 customers.



mysql> select city, count(*) as cust_num from Customer group by city having count(*)>3;
+------+----------+
| city | cust_num |
+------+----------+
| clt  |        4 |
+------+----------+
1 row in set (0.00 sec)



5. Show data as displayed ‘who, where’ Eg: ‘customer1 lives in ekm’


mysql> select concat(cname ,' lives in ',city) as cust_info from Customer;
+-------------------------+
| cust_info               |
+-------------------------+
| ABC lives in clt        |
| DEF lives in ernankulam |
| HIJ lives in calicut    |
| KLM lives in knr        |
| THG lives in clt        |
| YUH lives in clt        |
| kHG lives in clt        |
+-------------------------+
7 rows in set (0.00 sec)

