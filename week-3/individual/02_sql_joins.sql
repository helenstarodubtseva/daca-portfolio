-- W3_04: Harjutus 1A – INNER JOIN
-- Näitame kliente koos nende müükidega.
-- Järjestame müügid ostusumma järgi, suurim enne.

SELECT
    c.first_name,
    c.last_name,
    c.city,
    s.sale_id,
    s.sale_date,
    s.total_price
FROM sales s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
ORDER BY s.total_price DESC
LIMIT 20;

-- TULEMUS – Harjutus 1A
-- Päring töötas edukalt ja tagastas 20 rida.
-- Kõige suurema ostusummaga müük:
-- Klient: Madis Roots
-- Linn: Valga
-- Müügi ID: 2407
-- Ostusumma: 2170,40 €
-- Tulemused on järjestatud ostusumma järgi kahanevalt.
-- TULEMUS – TOP 20 müügi linnad
-- Tallinn: 10, Tartu: 5, Pärnu: 2
-- Valga: 1, Jõhvi: 1, Narva: 1
-- Kokku: 20 müüki
-- Kõige sagedamini esineb Tallinn (10 müüki).


-- Eemaldame 20 rea piirangu, et näha kõiki sobivaid müüke.
SELECT
    c.first_name,
    c.last_name,
    c.city,
    s.sale_id,
    s.sale_date,
    s.total_price
FROM sales s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
ORDER BY s.total_price DESC;
-- Supabase'i tulemuste vaade kuvab kuni 100 rida.
-- Kõigi sobivate ridade arv kontrollitakse COUNT(*) päringuga.
-- W3: Harjutus 1A – INNER JOIN ridade koguarv
-- Loendame kõik müügid, millel on klienditabelis vaste.
-- See päring ei muuda andmeid.

SELECT COUNT(*) AS kokku_ridu
FROM sales s
INNER JOIN customers c
    ON s.customer_id = c.customer_id;

-- TULEMUS – Harjutus 1A, kõik müügid
-- sales tabelis on pärast puhastamist 10118 rida.
-- INNER JOIN customers tabeliga tagastas 9130 rida.
-- 988 müügirida ei leidnud customers tabelist vastet.
-- Arvutus: 10118 - 9130 = 988.
-- Supabase kuvab tulemuste tabelis vaikimisi kuni 100 rida.
-- Täpne koguarv kontrolliti COUNT(*) päringuga.


-- W3_05: Harjutus 1B – INNER JOIN
-- Ühendame müügid toodetega product_id järgi.
-- Kuvame toote nime, kategooria, koguse ja ühikuhinna.
-- Järjestame koguse järgi kahanevalt ja näitame 15 rida.

SELECT
    p.product_name,
    p.category,
    s.quantity,
    s.unit_price
FROM sales s
INNER JOIN products p
    ON s.product_id = p.product_id
ORDER BY s.quantity DESC
LIMIT 15;

-- TULEMUS – Harjutus 1B
-- INNER JOIN ühendas sales ja products tabelid product_id järgi.
-- Päring tagastas 15 rida.
-- Kõige suurem kuvatud müügikogus oli 5 ühikut.
-- Tulemused on järjestatud koguse järgi kahanevalt.

-- ============================================
-- HARJUTUS 1C – OMA INNER JOIN PÄRING
-- ============================================
-- Küsimus: milliste toodete tellimustes on kõrgeim ühikuhind?
-- Ühendame sales ja products tabelid product_id järgi.
-- Järjestame ühikuhinna järgi kahanevalt.

SELECT
    p.product_name,
    p.category,
    s.sale_id,
    s.quantity,
    s.unit_price
FROM sales s
INNER JOIN products p
    ON s.product_id = p.product_id
ORDER BY s.unit_price DESC
LIMIT 15;

-- ============================================
-- TULEMUS – Harjutus 1C
-- ============================================
-- INNER JOIN ühendas sales ja products tabelid product_id järgi.
-- Päring tagastas 15 kõrgeima ühikuhinnaga müügirida.
-- Kõrgeima ühikuhinnaga toode: Klassikaline seemisnahkne jooksutossud.
-- Kategooria: jalanõusid.
-- Müügi ID: 7116.
-- Kogus: 2 ühikut.
-- Ühikuhind: 512,37 €.
-- Tulemused on järjestatud ühikuhinna järgi kahanevalt.
-- Päring ei muutnud andmeid.

-- ============================================
-- WEEK 3 – INNER JOIN REFLEKSIOON
-- Töövihik, lk 11
-- ============================================

-- 1. Mis oli kõige üllatavam INNER JOIN-i juures?
-- Kõige üllatavam oli see, et INNER JOIN ei näita kõiki
-- müüke, vaid ainult neid, millel on teises tabelis vaste.
-- UrbanStyle'i sales tabelis oli 10118 müüki.
-- INNER JOIN customers tabeliga tagastas 9130 rida.
-- Seega jäi tulemusest välja 988 müügirida.

-- 2. Kuidas INNER JOIN erineb Exceli VLOOKUP-ist?
-- VLOOKUP otsib Excelis ühest tabelist sobiva väärtuse
-- ja toob selle teise tabelisse.
-- INNER JOIN ühendab SQL-is tabelid ühise ID järgi
-- ning võimaldab kuvada mitme tabeli andmeid.
-- INNER JOIN jätab vasteta read tulemusest välja.

-- 3. Mida tahaksid sessioonis 1 mentorilt küsida?
-- Tahaksin küsida, kuidas kontrollida, miks osa
-- müügiridu INNER JOIN-i tulemusest välja jääb.
-- Samuti tahaksin teada, kuidas otsustada,
-- millal kasutada INNER JOIN-i ja millal LEFT JOIN-i.

-- ============================================
-- INNER JOIN OSA LÕPP
-- ============================================

-- ============================================
-- W3_07: HARJUTUS 2A – LEFT JOIN
-- ============================================
-- Leiame kliendid, kes pole kunagi ostnud.
-- LEFT JOIN säilitab kõik kliendid.
-- WHERE s.sale_id IS NULL jätab alles ainult
-- need kliendid, kellel puuduvad müügid.
-- Järjestame kliendid registreerimiskuupäeva järgi,
-- kõige uuemad eespool.

SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS nimi,
    c.email,
    c.city,
    c.registration_date
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
ORDER BY c.registration_date DESC;

-- ============================================
-- HARJUTUS 2A – KADUNUD KLIENTIDE ARV
-- ============================================
-- Loendame kliendid, kellel puudub müük.
-- COUNT annab täpse arvu, mitte ainult 100 kuvatud rida.

SELECT COUNT(*) AS kadunud_kliente
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;

-- ============================================
-- TULEMUS – HARJUTUS 2A
-- ============================================
-- LEFT JOIN + WHERE s.sale_id IS NULL abil
-- leidsime 599 klienti, kellel puuduvad müügid.
-- Tulemus on kontrollitud COUNT(*) päringuga.
-- Päring ei muutnud andmeid.

-- ============================================
-- HARJUTUS 2A – KADUNUD KLIENDID LINNADE KAUPA
-- ============================================
-- Loendame ostudeta kliendid linnade kaupa.
-- Järjestame linnad kadunud klientide arvu järgi.

SELECT
    c.city,
    COUNT(*) AS kadunud_kliente
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY c.city
ORDER BY kadunud_kliente DESC;

-- ============================================
-- TULEMUS – HARJUTUS 2A, LINNADE VÕRDLUS
-- ============================================
-- Kokku leidsime 599 klienti, kes pole kunagi ostnud.
-- Kõige rohkem ostudeta kliente on Tallinnas: 231.
-- Teisel kohal on Tartu: 133 klienti.
-- Kolmandal kohal on Pärnu: 70 klienti.
-- Andmed on kontrollitud LEFT JOIN päringuga.
-- Päring ei muutnud andmeid.

-- ============================================
-- HARJUTUS 2A – KÕIGE VARASEM REGISTREERUMINE
-- ============================================
-- Leiame ostudeta klientide varaseima
-- registreerimiskuupäeva.

SELECT MIN(c.registration_date) AS vanim_registreerumine
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;

-- ============================================
-- TULEMUS – HARJUTUS 2A, REGISTREERIMISKUUPÄEV
-- ============================================
-- Kõige varem registreerunud ostudeta kliendi
-- registreerimiskuupäev on 02.01.2020.
-- Tulemus on kontrollitud MIN() päringuga.
-- Päring ei muutnud andmeid.

-- ============================================
-- HARJUTUS 2A – AKTIIVSETE KLIENTIDE ARV
-- ============================================
-- Loendame kliendid, kellel on vähemalt üks müük.
-- DISTINCT tagab, et iga klient läheb arvesse ühe korra.

SELECT COUNT(DISTINCT c.customer_id) AS aktiivseid_kliente
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id;

-- ============================================
-- TULEMUS – HARJUTUS 2A KOKKUVÕTE
-- ============================================
-- Aktiivseid kliente: 2551.
-- Ostudeta kliente: 599.
-- Kontroll: 2551 + 599 = 3150 klienti.
-- Summa vastab customers tabeli klientide koguarvule.
-- Kõige rohkem ostudeta kliente on Tallinnas: 231.
-- Kõige varasem ostudeta kliendi registreerumine: 02.01.2020.
-- LEFT JOIN ja INNER JOIN tulemused on kontrollitud.
-- Päringud ei muutnud andmeid.

-- ============================================
-- W3_08: HARJUTUS 2B – MÜÜMATA TOOTED
-- ============================================
-- Leiame tooted, mida pole kunagi müüdud.
-- LEFT JOIN säilitab kõik products tabeli tooted.
-- WHERE s.sale_id IS NULL jätab alles müügita tooted.
-- Kuvame toote nime, kategooria ja jaehinna.

SELECT
    p.product_name,
    p.category,
    p.retail_price
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL
ORDER BY p.category, p.product_name;

-- ============================================
-- TULEMUS – HARJUTUS 2B
-- ============================================
-- LEFT JOIN + WHERE s.sale_id IS NULL abil
-- leidsime 12 toodet, mida pole kordagi müüdud.
-- Päring kuvas toodete nimed, kategooriad ja jaehinnad.
-- Tulemused on järjestatud kategooria ja tootenime järgi.
-- Päring ei muutnud andmeid.

-- ============================================
-- W3_09: HARJUTUS 2C – KADUNUD KLIENDID LINNADE KAUPA
-- ============================================
-- Ülesanne: leida ostudeta klientide arv igas linnas.
-- Kasutame LEFT JOIN + WHERE IS NULL mustrit.
-- GROUP BY grupeerib kliendid linnade kaupa.
-- COUNT(*) loendab ostudeta kliendid igas linnas.

SELECT
    c.city,
    COUNT(*) AS kadunud_kliente
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY c.city
ORDER BY kadunud_kliente DESC;

-- ============================================
-- TULEMUS – HARJUTUS 2C
-- ============================================
-- Kokku leidsime 599 ostudeta klienti.
-- Tallinn: 231 klienti.
-- Tartu: 133 klienti.
-- Pärnu: 70 klienti.
-- Kõige rohkem ostudeta kliente on Tallinnas.
-- Tulemused on kontrollitud harjutuses 2A.
-- Kõik kolm töövihiku kontrolltingimust on täidetud.
-- Päring ei muutnud andmeid.

-- ============================================
-- WEEK 3 – LEFT JOIN REFLEKSIOON
-- Töövihik, lk 15
-- ============================================

-- 1. Mis oli kõige üllatavam LEFT JOIN-i juures?
-- Kõige üllatavam oli see, et LEFT JOIN säilitab
-- kõik vasaku tabeli read ka siis, kui paremas
-- tabelis vastet ei ole.
-- LEFT JOIN + WHERE IS NULL abil leidsime
-- 599 ostudeta klienti ja 12 müümata toodet.

-- 2. Millal kasutaksid oma töös LEFT JOIN-i
-- INNER JOIN-i asemel?
-- Kasutaksin LEFT JOIN-i siis, kui tahan näha
-- kõiki kliente või tooteid, ka neid, millel
-- puudub teises tabelis vaste.
-- Näiteks ostudeta klientide ja müümata
-- toodete leidmiseks.

-- 3. Mida tahaksid sessioonis 1 mentorilt küsida?
-- Tahaksin küsida, kuidas kontrollida, kas NULL
-- tähendab tõesti puuduvat müüki või võib
-- selle põhjuseks olla andmete kvaliteediprobleem.

-- ============================================
-- LEFT JOIN OSA LÕPP
-- ============================================

-- W3_10: HARJUTUS 3A – KOLME TABELI INNER JOIN
-- ============================================
-- Ühendame sales, customers ja products tabelid.
-- Näitame kliendi, linna, ostetud toote ja müügisumma.
-- Järjestame suurima müügisumma järgi.
-- Kuvame TOP 20 müügirida.

SELECT
    c.first_name || ' ' || c.last_name AS klient,
    c.city AS linn,
    s.sale_date AS müügi_kuupäev,
    p.product_name AS toode,
    p.category AS kategooria,
    s.quantity AS kogus,
    s.unit_price AS ühikuhind,
    s.total_price AS rea_summa
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
INNER JOIN products p ON s.product_id = p.product_id
ORDER BY rea_summa DESC
LIMIT 20;

-- ============================================
-- TULEMUS – HARJUTUS 3A
-- ============================================
-- Päring tagastas 20 suurima müügisummaga rida.
-- Suurima rea summaga toode: Õhuline sünteetiline sporditossud.
-- Rea summa: 2170,40 €.
-- Klient: Madis Roots.
-- Linn: Valga.
-- TOP 20 kõige sagedasem kategooria: vajab kontrollimist.
-- Päring ei muutnud andmeid.
-- TOP 20 kõige sagedasem kategooria: jalanõusid (13 rida).
-- Ülejäänud: meeste_riided 3, naiste_riided 3, laste_riided 1.
-- Harjutus 3A lõpetatud.

-- ============================================
-- W3_11: HARJUTUS 3B – MÜÜK LINNADE JA KATEGOORIATE KAUPA
-- ============================================
-- Ühendame sales, customers ja products tabelid.
-- Grupeerime müügid linna ja tootekategooria järgi.
-- SUM arvutab iga kombinatsiooni kogumüügi.
-- Järjestame tulemused suurimast väiksemani.

SELECT
    c.city AS linn,
    p.category AS kategooria,
    SUM(s.total_price) AS kogumuuk
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
INNER JOIN products p ON s.product_id = p.product_id
GROUP BY c.city, p.category
ORDER BY kogumuuk DESC;

-- ============================================
-- TULEMUS – HARJUTUS 3B
-- ============================================
-- Päring tagastas 60 linna ja kategooria kombinatsiooni.
-- Suurim kogumüük: Tallinn + jalanõusid = 275940.70 €.
-- Tallinnas on suurima müügituluga kategooria jalanõusid.
-- Tartus on suurima müügituluga kategooria meeste_riided
-- kogumüügiga 134329.10 €.
-- Tallinna ja Tartu kategooriaeelistused erinevad
-- müügitulu põhjal.
-- Turundussoovitus: Tallinnas reklaamida jalanõusid,
-- Tartus keskenduda meeste riietele.
-- Päring ei muutnud andmeid.

-- ============================================
-- W3_12: HARJUTUS 3C – KÕIGE KALLIMAD OSTUD
-- ============================================
-- Äriküsimus: millised kliendid ostavad
-- kõige kallimaid tooteid?
-- Ühendame kolm tabelit INNER JOIN abil.
-- Järjestame ostud ühikuhinna järgi kahanevalt.
-- Näitame 10 kõige kallima ühikuhinnaga ostu.

SELECT
    c.first_name || ' ' || c.last_name AS klient,
    c.city AS linn,
    p.product_name AS toode,
    p.category AS kategooria,
    s.unit_price AS ühikuhind,
    s.quantity AS kogus,
    s.total_price AS rea_summa
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
INNER JOIN products p ON s.product_id = p.product_id
ORDER BY s.unit_price DESC
LIMIT 10;

-- ============================================
-- TULEMUS – HARJUTUS 3C
-- ============================================
-- Päring tagastas 10 kõige kõrgema ühikuhinnaga ostu.
-- Kõrgeim ühikuhind: 478.93 €.
-- Klient: Urmas Valk, Tallinn.
-- Toode: Soe sünteetiline loaferid.
-- Nähtavates tulemustes domineerivad jalanõud.
-- Andmekvaliteedi tähelepanek:
-- Esimesel real ühikuhind 478.93 €, kogus 1,
-- kuid rea summa 375.34 €.
-- See vajab täiendavat kontrolli.
-- Päring ei muutnud andmeid.
-- Harjutus 3C lõpetatud.

-- ============================================
-- WEEK 3 – MITME TABELI JOIN REFLEKSIOON
-- Töövihik, lk 19
-- ============================================

-- 1. Mis oli kõige raskem mitme tabeli JOIN-i juures?
-- Kõige raskem oli jälgida, millised veerud
-- kuuluvad millisesse tabelisse ja kuidas
-- tabelid õigesti ühendada.

-- 2. Kuidas aitavad tabeli aliased loetavust?
-- Aliased s, c ja p muudavad päringu lühemaks.
-- Näiteks s.customer_id näitab selgelt,
-- et customer_id pärineb sales tabelist.

-- 3. Mida tahaksid sessioonis 1 mentorilt küsida?
-- Kuidas kontrollida, kas müügi ühikuhind,
-- kogus ja kogusumma on omavahel kooskõlas?
-- Harjutuses 3C märkasime nende vahel erinevust.

-- ============================================
-- 3. OSA LÕPP
-- ============================================

-- ============================================
-- W3_13: SÜNTEES – PÄRING 1
-- TOP 20 KLIENTI KOOS TOOTEKATEGOORIATEGa
-- ============================================
-- Ühendame müügid, kliendid ja tooted.
-- Grupeerime kliendi ja tootekategooria järgi.
-- SUM arvutab iga kliendi kogumüügi kategoorias.
-- Kuvame 20 suurima kogumüügiga kombinatsiooni.

SELECT
    c.first_name || ' ' || c.last_name AS klient,
    c.city AS linn,
    p.category AS kategooria,
    SUM(s.total_price) AS kogumuuk
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
INNER JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.city, p.category
ORDER BY kogumuuk DESC
LIMIT 20;

-- ============================================
-- TULEMUS – SÜNTEES, PÄRING 1/3
-- ============================================
-- Päring tagastas 20 suurima kogumüügiga
-- kliendi ja tootekategooria kombinatsiooni.
-- Esikoht: Tiina Pärn, Tartu, jalanõusid – 10940.40 €.
-- Teine: Priit Rand, Pärnu, naiste_riided – 8989.01 €.
-- Kolmas: Ago Lõoke, Jõhvi, jalanõusid – 8803.37 €.
-- Sama klient võib esineda mitmes kategoorias.
-- Päring ei muutnud andmeid.

-- ============================================
-- W3_14: SÜNTEES – PÄRING 2
-- KADUNUD KLIENDID LINNADE KAUPA
-- ============================================
-- Leiame kliendid, kes pole kordagi ostnud.
-- LEFT JOIN säilitab kõik kliendid.
-- WHERE s.sale_id IS NULL leiab ostudeta kliendid.
-- GROUP BY grupeerib tulemused linnade kaupa.

SELECT
    c.city AS linn,
    COUNT(*) AS kadunud_kliente
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY c.city
ORDER BY kadunud_kliente DESC;

-- ============================================
-- TULEMUS – SÜNTEES, PÄRING 2/3
-- ============================================
-- Varasema kontrollitud tulemuse põhjal:
-- Kokku 599 ostudeta klienti.
-- Tallinn: 231 klienti.
-- Tartu: 133 klienti.
-- Pärnu: 70 klienti.
-- Kõige rohkem ostudeta kliente on Tallinnas.
-- Päring ei muuda andmeid.

-- ============================================
-- W3_15: SÜNTEES – PÄRING 3
-- MÜÜMATA TOOTED KATEGOORIATE KAUPA
-- ============================================
-- Leiame tooted, mida pole kordagi müüdud.
-- LEFT JOIN säilitab kõik tooted.
-- WHERE s.sale_id IS NULL jätab alles müümata tooted.
-- GROUP BY grupeerib tulemused kategooriate kaupa.
-- COUNT loendab müümata toodete arvu.

SELECT
    p.category AS kategooria,
    COUNT(*) AS muumata_tooteid
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL
GROUP BY p.category
ORDER BY muumata_tooteid DESC;

-- ============================================
-- TULEMUS – SÜNTEES, PÄRING 3/3
-- ============================================
-- Kokku leidsime 12 müümata toodet.
-- Aksessuaarid: 5 toodet.
-- Jalanõud: 2 toodet.
-- Laste riided: 2 toodet.
-- Naiste riided: 2 toodet.
-- Meeste riided: 1 toode.
-- Kõige rohkem müümata tooteid on aksessuaaride kategoorias.
-- Soovitus: analüüsida nende toodete hindu ja nõudlust
-- enne allahindluse tegemist või kataloogist eemaldamist.
-- Päring ei muutnud andmeid.

-- ============================================
-- WEEK 3 – ANNA KAMPAANIAPLAANI KOKKUVÕTE
-- Töövihik, lk 21
-- ============================================

-- 1. Milline on kampaania peamine sihtrühm?
-- Soovitus: Tallinna kliendid, jalanõude kategooria.
-- Tallinn + jalanõud andsid suurima müügitulu:
-- 275940.70 €.

-- 2. Mitu kadunud klienti on ja mida Anna saaks teha?
-- Kokku on 599 ostudeta klienti.
-- Kõige rohkem Tallinnas (231) ja Tartus (133).
-- Anna võiks pakkuda neile personaalseid
-- sooduskoode või esmaostu kampaaniat.

-- 3. Millised müümata tooted tuleks eemaldada?
-- Kokku on 12 müümata toodet.
-- Kõige rohkem aksessuaare (5).
-- Enne eemaldamist tuleks kontrollida hindu,
-- nõudlust ja laoseisu.
-- Ainult müügi puudumise põhjal ei saa veel
-- otsustada, milline konkreetne toode eemaldada.

-- ============================================
-- ANNA KAMPAANIAPLAAN LÕPETATUD
-- ============================================

