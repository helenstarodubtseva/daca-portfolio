-- SELECT: Näitab sales tabelist esimesed 5 rida
SELECT * FROM sales LIMIT 5;

-- SELECT: Näitab esimese 10 müügi kliendi ID-d ja müügisummat
SELECT customer_id, total_price FROM sales LIMIT 10;

-- WHERE: Näitab müüke, mille summa on üle 100
SELECT * FROM sales WHERE total_price > 100;

-- WHERE + AND: Näitab üle 100 euro müüke ja mis on Tallinnas
SELECT * FROM sales WHERE total_price > 100 AND store_location = 'Tallinn';

-- ORDER BY: Näitab müüke kõige kallimast alates (ORDER BY total_price DESC = järjesta müügisumma järgi suuremast väiksemani. LIMIT 10 = näita neist ainult 10 esimest.)
SELECT * FROM sales ORDER BY total_price DESC LIMIT 10;

-- ORDER BY: Näitab 10 kõige varasemat müüki (ASC = järjestab vanemast kuupäevast uuemani) sale_date = müügi kuupäev ASC = järjestab vanemast uuemani LIMIT 10 = näitab ainult esimest 10 tulemust
SELECT * FROM sales ORDER BY sale_date ASC LIMIT 10;

-- WHERE + ORDER BY + LIMIT: Näitab 5 kõige suuremat müüki Tartus (WHERE → ainult Tartu müügid ORDER BY ... DESC → suurema summaga müügid ettepoole LIMIT 5 → näita ainult 5 esimest)
SELECT * FROM sales WHERE store_location = 'Tartu' ORDER BY total_price DESC LIMIT 5;


-- COUNT: Loendab, mitu müügirida sales tabelis kokku on (COUNT(*) = loenda kõik read ehk küsime: „Mitu müügirida sales tabelis kokku on?)
SELECT COUNT(*) FROM sales;

-- COUNT + DISTINCT: Loendab, mitu erinevat arvenumbrit tegelikult on (DISTINCT tähendab siin lihtsustatult „ära loe sama arvenumbrit mitu korda). COUNT = loenda DISTINCT invoice_id = loenda iga erinev arvenumber ainult ühe korra FROM sales = sales tabelist
SELECT COUNT(DISTINCT invoice_id) FROM sales;
-- TULEMUS: 15 234 rida - 10 118 erinevat arvet = 5 116 duplikaati

-- MAX: Leiab kõige suurema müügisumma (MAX = leia kõige suurem väärtus total_price = müügisumma FROM sales = sales tabelist)
SELECT MAX(total_price) FROM sales;
-- TULEMUS: Kõige suurem müügisumma on 2170,40 €

-- NULL: Otsib müüke, kus kliendi ID puudub (WHERE customer_id IS NULL = näita ainult neid müüke, kus kliendi ID puudub. LIMIT 10 = näita neist maksimaalselt 10 rida. Ehk: „Näita kuni 10 müüki, kus kliendi ID on puudu.)
SELECT * FROM sales WHERE customer_id IS NULL LIMIT 10;

-- COUNT + NULL: Loendab, mitmel müügil puudub kliendi ID (COUNT(*) = loeb kõik müügiread COUNT(customer_id) = loeb read, kus kliendi ID on olemas nende vahe = read, kus kliendi ID puudub ehk on NULL Ehk küsime: „Mitmel müügil puudub kliendi ID?)
SELECT COUNT(*) - COUNT(customer_id) AS null_count FROM sales;
-- TULEMUS: 1487 müügil puudub kliendi ID

-- MIN: Leiab kõige väiksema müügisumma (MIN = leia kõige väiksem väärtus total_price = müügisumma FROM sales = sales tabelist Ehk küsime: „Mis on kõige väiksem müügisumma?)
SELECT MIN(total_price) FROM sales;
-- TULEMUS: Kõige väiksem müügisumma on -1405,32 € (negatiivne väärtus, põhjus vajab kontrollimist)


-- DUPLIKAADID: Otsib arvenumbreid, mis esinevad rohkem kui ühe korra (GROUP BY invoice_id = paneb sama arvenumbriga read kokku gruppi HAVING COUNT(*) > 1 = näitab ainult neid arvenumbreid, mida esineb rohkem kui üks kord. Ehk: „Näita mulle arvenumbrid, mis korduvad, ja mitu korda igaüks esineb.)
SELECT invoice_id, COUNT(*) AS mitu_korda FROM sales GROUP BY invoice_id HAVING COUNT(*) > 1;
-- TULEMUS: Leidsin korduvaid invoice_id väärtusi; mõned esinevad 2, 3 või 4 korda

-- DUPLIKAADID + COUNT: Loendab, mitu erinevat arvenumbrit esineb rohkem kui ühe korra
SELECT COUNT(*) AS korduvate_arvete_arv FROM ( SELECT invoice_id FROM sales GROUP BY invoice_id HAVING COUNT(*) > 1) AS korduvad;
-- TULEMUS: 4013 erinevat arvenumbrit esineb rohkem kui ühe korra

-- KAHTLASED MÜÜGID: Otsib müüke, mille summa on 0 või negatiivne <= 0 tähendab „väiksem kui 0 VÕI võrdne 0-ga“. Seega küsime: „Mitu müüki on summaga 0 või miinuses?
SELECT COUNT(*) AS null_voi_negatiivsed FROM sales WHERE total_price <= 0;
-- TULEMUS: Leidsin 305 müüki, mille summa on 0 või negatiivne

-- ORDER BY + LIMIT: Näitab 10 kõige väiksema summaga müüki ORDER BY total_price ASC = järjestab müügisummad kõige väiksemast kõige suuremani. LIMIT 10 = näitab neist ainult 10 esimest.
SELECT * FROM sales ORDER BY total_price ASC LIMIT 10;
-- TULEMUS: 10 kõige väiksema müügi hulgas on negatiivsed summad; väikseim on -1405,32 €


-- ===== TOOMAS KASKI UURIMISRAPORT =====

-- 1. Sales tabelis on kokku 15 234 müügirida.
-- 2. Erinevaid arvenumbreid (invoice_id) on 10 118.
-- 3. Duplikaatseid ehk üleliigseid müügiridu on 5 116.
-- 4. 4013 erinevat arvenumbrit esineb rohkem kui ühe korra.
-- 5. 1487 müügil puudub kliendi ID (customer_id on NULL).
-- 6. Kõige suurem müügisumma on 2170,40 €.
-- 7. Kõige väiksem müügisumma on -1405,32 €.
-- 8. Kokku on 305 müüki, mille summa on 0 või negatiivne.
-- 9. Negatiivsete müügisummade põhjus vajab kontrollimist; ainult andmete põhjal ei saa põhjust kindlalt öelda.

-- DISTINCT: Näitab kõiki erinevaid müügikanaleid 
SELECT DISTINCT channel FROM sales;

-- Kontroll küs 10 lk 27 COUNT + DISTINCT: Loendab pood-kanali tellimused ja unikaalsed kliendid
SELECT  COUNT(*) AS tellimuste_arv,  COUNT(DISTINCT customer_id) AS unikaalsete_klientide_arv FROM sales WHERE channel = 'pood';
--Tulemus pood kanal: tellimusi: 10 030 unikaalseid kliente: 2 287

-- BETWEEN: Näitab müüke, mille summa on 100–200 eurot (BETWEEN 100 AND 200 tähendab praegu lihtsalt: 100 ja 200 vahel)
SELECT * FROM sales WHERE total_price BETWEEN 100 AND 200;

-- IN: Näitab müüke, mis toimusid Tallinnas või Tartus (IN ('Tallinn', 'Tartu') = Tallinn VÕI Tartu)
SELECT * FROM sales WHERE store_location IN ('Tallinn', 'Tartu');

-- LIKE: Näitab kliente, kelle perekonnanimi algab T-tähega (T% tähendab: algab T-ga ja pärast T-d võib tulla ükskõik milline tekst.)
SELECT * FROM customers WHERE last_name LIKE 'T%';

-- OR: Näitab müüke, mis toimusid Tallinnas VÕI Tartus (See teeb sisuliselt sama, mida meie IN ('Tallinn', 'Tartu'), aga siin harjutame eraldi OR = VÕI.)
SELECT * FROM sales WHERE store_location = 'Tallinn'  OR store_location = 'Tartu';

-- BETWEEN + AND: Näitab 2024. aasta I kvartali müüke summaga üle 100 €
SELECT * FROM sales WHERE sale_date BETWEEN '2024-01-01' AND '2024-03-31'  AND total_price > 100;


-- PRODUCTS: Loendab tooted, erinevad kategooriad ja puuduvad hinnad
SELECT  COUNT(*) AS toodete_arv,  COUNT(DISTINCT category) AS kategooriaid,  COUNT(*) - COUNT(retail_price) AS puuduvaid_hindu FROM products;
-- TULEMUS: 362 toodet, 5 erinevat kategooriat ja 0 puuduvat müügihinda

-- CUSTOMERS: Loendab kliendid, unikaalsed e-mailid ja duplikaatsed e-mailid
SELECT  COUNT(*) AS kliente_kokku,  COUNT(DISTINCT email) AS unikaalseid_emaile,  COUNT(*) - COUNT(DISTINCT email) AS duplikaatseid FROM customers;
-- TULEMUS: 3150 klienti, 2640 unikaalset e-maili, vahe 510

-- NULL: Loendab kliendid, kelle e-mail puudub
SELECT COUNT(*) AS puuduvad_emailid FROM customers WHERE email IS NULL;
-- TULEMUS: 380 kliendil puudub e-mail

-- DUPLIKAADID: Näitab e-mailid, mis esinevad rohkem kui ühe korra
SELECT email, COUNT(*) AS mitu_korda FROM customers WHERE email IS NOT NULL GROUP BY email HAVING COUNT(*) > 1;
-- COUNT: Loendab, mitu erinevat e-mailiaadressi esineb rohkem kui ühe korra
SELECT COUNT(*) AS korduvate_emailide_arv FROM (  SELECT email  FROM customers  WHERE email IS NOT NULL  GROUP BY email  HAVING COUNT(*) > 1) AS korduvad;
-- TULEMUS: 128 erinevat e-mailiaadressi esineb rohkem kui ühe korra


-- SALES ÜLDPILT: Loendab read, kliendiga tellimused, puuduvad kliendid ja unikaalsed kliendid
SELECT COUNT(*) AS ridade_arv,  COUNT(customer_id) AS klientidega,  COUNT(*) - COUNT(customer_id) AS puudub_klient,  COUNT(DISTINCT customer_id) AS unikaalseid_kliente FROM sales;
-- TULEMUS: 15 234 rida, 13 747 kliendiga tellimust, 1 487 puuduvat klienti ja 2 558 unikaalset klienti

-- TOOMASE TELLIMUSED: Näitab kliendi ID, kuupäeva ja summa, uuemad müügid enne
SELECT customer_id, sale_date, total_price FROM sales ORDER BY sale_date DESC LIMIT 20;

-- KAHTLASED READ: Näitab müüke, kus summa on 0 või negatiivne VÕI kliendi ID puudub
SELECT * FROM sales WHERE total_price <= 0  OR customer_id IS NULL;

-- 2B: Näitab üle 200 € tellimusi, mis on tehtud 2024. aastal
SELECT sale_id, customer_id, total_price, sale_date FROM sales WHERE total_price > 200 AND sale_date >= '2024-01-01' AND sale_date < '2025-01-01' ORDER BY total_price DESC;

-- 2A PÄRING 1: Näitab 10 suurimat üle 500 € tellimust
SELECT sale_id, customer_id, total_price FROM sales WHERE total_price > 500 ORDER BY total_price DESC LIMIT 10;

-- 2A PÄRING 2: Näitab 2024. aasta esimese kvartali müüke
SELECT sale_id, sale_date, total_price FROM sales WHERE sale_date BETWEEN '2024-01-01' AND '2024-03-31' ORDER BY sale_date;

SELECT sale_id, customer_id, total_price FROM sales WHERE customer_id IS NULL;
