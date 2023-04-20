/*
Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
Заполните БД данными

Выведите название, производителя и цену для товаров, количество которых превышает 2

Выведите весь ассортимент товаров марки “Samsung”
*/
-- ЗАДАНИЕ 1 Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными
CREATE DATABASE IF NOT EXISTS dz1_bd_phone;
USE dz1_bd_phone;

CREATE TABLE IF NOT EXISTS phones
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(45), 
    Manufacturer VARCHAR(45),
    ProductCount VARCHAR(45),
    Price INT(45)
);

INSERT phones (ProductName,Manufacturer,ProductCount,Price)
VALUES 
	("Iphone X","Apple", 3, 76000), 
    ("Iphone 8","Apple", 2, 51000),
    ("Galaxy S9","Samsung", 2, 56000),
    ("Galaxy S8","Samsung", 1, 41000),
    ("P20 Pro","Huawei", 5, 36000);


-- ЗАДАНИЕ 2 Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT ProductName, Manufacturer, Price  
FROM phones
WHERE ProductCount > 2;
    
    
-- ЗАДАНИЕ 3 Выведите весь ассортимент товаров марки “Samsung”
SELECT *
FROM phones
WHERE Manufacturer = "Samsung";

-- ЗАДАНИЕ 4 Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**
SELECT *
FROM phones
WHERE Price * ProductCount < 145000 AND Price * ProductCount > 100000;

/* 4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
	4.1. Товары, в которых есть упоминание "Iphone"
	4.2. "Galaxy"
	4.3.  Товары, в которых есть ЦИФРЫ
	4.4.  Товары, в которых есть ЦИФРА "8"  */
    
SELECT *
FROM phones
WHERE ProductName LIKE "%Iphone%";

SELECT *
FROM phones
WHERE ProductName RLIKE '[0-9]';

SELECT *
FROM phones
WHERE ProductName LIKE "%Galaxy%";


SELECT *
FROM phones
WHERE ProductName LIKE "%8%";







