-- SQL harjutused – Nädal 1

-- 1. Näita kogu tabelit
SELECT *
FROM test_sales;

-- 2. Näita ainult toote nime ja hinda
SELECT product_name, price
FROM test_sales;

-- 3. Näita tooteid, mille hind on alla 80
SELECT *
FROM test_sales
WHERE price < 80;

-- 4. Näita toote nime ja hinda, kui hind on üle 60
SELECT product_name, price
FROM test_sales
WHERE price > 60;

-- 5. Näita tooteid kallimast odavamani
SELECT product_name, price
FROM test_sales
ORDER BY price DESC;

-- 6. Näita tooteid odavamast kallimani
SELECT product_name, price
FROM test_sales
ORDER BY price ASC;

-- 7. Näita kahte kõige kallimat toodet
SELECT product_name, price
FROM test_sales
ORDER BY price DESC
LIMIT 2;
