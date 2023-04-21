


-- ЗАДАНИЕ 1 - Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными.

DROP DATABASE IF EXISTS dz2_bd_sales; 
CREATE DATABASE dz2_bd_sales;

USE dz2_bd_sales;

CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    count_product INT DEFAULT 0
);

INSERT INTO sales (order_date, count_product)
VALUES
	(20220101, 156),
    (20220102, 180),
    (20220103, 21),
    (20220104, 124),
    (20220105, 341);

SELECT * FROM sales;

-- TRUNCATE sales;

-- ЗАДАНИЕ 2: Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : 
		/*	меньше 100  -    Маленький заказ
			от 100 до 300 - Средний заказ
			больше 300  -     Большой заказ*/
            
SELECT id AS 'id заказа',
CASE
	WHEN count_product < 100 THEN "Маленький заказ"
    WHEN count_product >= 100 AND count_product <= 300 THEN "Средний заказ"
    ELSE "Большой заказ" 
END AS "Тип Зааказа"
FROM sales;		


-- ЗАДАНИЕ 3 Создайте таблицу “orders”, заполните ее значениями. 
			/*Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
				OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED -  «Order is cancelled»*/
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(5),  -- вроде как эти данные должны добавляться из другой таблицы
    amount DECIMAL(10,2) DEFAULT 0,
    order_status VARCHAR(25)
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
	('e03', 15.00, 'OPEN'),
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');

SELECT * FROM orders;

SELECT * ,
CASE
	WHEN order_status = 'OPEN' THEN "Order is in open state"
    WHEN order_status = 'CLOSED' THEN "Order is closed"
    WHEN order_status = 'CANCELLED' THEN "Order is cancelled"
END AS "full_order_status:"
FROM orders;	