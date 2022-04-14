CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  productName VARCHAR(30) NOT NULL,
  manufacturer VARCHAR(20) NOT NULL,
  productCount INT DEFAULT 0,
  price NUMERIC NOT NULL,
  isDiscounted BOOLEAN);

INSERT INTO products (productName, manufacturer, productCount, price, isDiscounted)
VALUES('iPhone X', 'Apple', 3, 76000, false),
      ('iPhone 8', 'Apple', 2, 71000, true),
      ('iPhone 7', 'Apple', 5, 42000, true),
      ('Galaxy S9', 'Samsung', 2, 46000, false),
      ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
      ('Desire 12', 'HTC', 5, 28000, true),
      ('Nokia 9', 'HMD Global', 6, 38000, true);

SELECT * FROM products WHERE manufacturer NOT IN ('HTC');
SELECT * FROM products WHERE manufacturer = 'Apple' AND price >= 71000;
SELECT * FROM products WHERE price >= 46000;
SELECT * FROM products ORDER BY price DESC LIMIT 2;
SELECT * FROM products WHERE isDiscounted = true;
SELECT * FROM products WHERE isDiscounted = false;
SELECT * FROM products WHERE price = (SELECT min(price)FROM products);
SELECT * FROM products ORDER BY price DESC;
SELECT  sum (price) FROM products;
SELECT manufacturer, count(productCount) from products group by manufacturer having count(productCount) <= 2;



