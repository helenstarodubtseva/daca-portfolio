-- W3 SAMM 1: CUSTOMERS linnanimede kontroll enne puhastamist
-- Võrdleme originaaltabelit ja eelmisel nädalal puhastatud testtabelit.
-- See päring ei muuda andmeid.

SELECT
    'customers' AS tabel,
    COUNT(*) AS ridu,
    COUNT(DISTINCT city) AS linnakirjaviise
FROM customers

UNION ALL

SELECT
    'customers_test' AS tabel,
    COUNT(*) AS ridu,
    COUNT(DISTINCT city) AS linnakirjaviise
FROM customers_test;


-- W3 SAMM 1: CUSTOMERS linnanimede kontroll enne puhastamist
-- Loendame, mitu kliendikirjet vajab linnanime ühtlustamist.
-- See päring ainult kontrollib ega muuda andmeid.

SELECT
    COUNT(*) AS parandamist_vajavad_linnakirjed
FROM customers
WHERE city IS NOT NULL
  AND city <> INITCAP(TRIM(city));


-- W3 SAMM 2: CUSTOMERS linnanimede puhastamine
-- Eemaldame linnanimede algusest ja lõpust liigsed tühikud.
-- Ühtlustame suur- ja väiketähed.
-- Muudame ainult neid kirjeid, mille linnanimi vajab parandamist.
-- Algandmed on säilitatud customers_backup_original tabelis.

UPDATE customers
SET city = INITCAP(TRIM(city))
WHERE city IS NOT NULL
  AND city <> INITCAP(TRIM(city));


-- W3 SAMM 3: CUSTOMERS puhastamise järelkontroll
-- Kontrollime klientide arvu, linnanimede kirjaviise
-- ja seda, kas mõni linnanimi vajab veel parandamist.
-- See päring ei muuda andmeid.

SELECT
    COUNT(*) AS klientide_arv,
    COUNT(DISTINCT city) AS erinevaid_linnanimesid,
    COUNT(*) FILTER (
        WHERE city IS NOT NULL
          AND city <> INITCAP(TRIM(city))
    ) AS parandamist_vajavad_linnakirjed
FROM customers;



-- Õpetaja koolitöö

SELECT invoice_id, total_price, sales.customer_id as S_cid, customers.customer_id as C_cid
FROM sales, customers
WHERE sales.customer_id = customers.customer_id   -- sidumistingimus
AND total_price >= 500                            -- filtreerimistingimus
LIMIT 10
