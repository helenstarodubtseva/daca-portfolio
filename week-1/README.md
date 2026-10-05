# Nädal 1: SQL Basics

## Mida ma õppisin

Nädal 1 jooksul õppisin SQL-i põhitõdesid ja harjutasin päringute tegemist Supabase'is.

### SQL teemad
- SELECT ja FROM
- WHERE
- AND ja OR
- BETWEEN
- IN
- LIKE
- ORDER BY
- LIMIT
- COUNT
- DISTINCT
- NULL ja IS NULL
- MIN ja MAX
- duplikaatide otsimine

## Kasutatud tabelid
- sales
- customers
- products

## Failid

**sql-harjutused.sql**  
Lihtsad SQL-i harjutused õppimiseks.

**week1_sales_exploration.sql**  
UrbanStyle andmete uurimine. Sisaldab SQL-päringuid, kommentaare ja saadud tulemusi.

**SQL_meelespea.docx**  
Minu SQL-i õppimise märkmed ja meelespea.

## Töövahendid
- Supabase
- PostgreSQL / SQL
- GitHub

## Minu eesmärk
Õppida SQL-i nii, et oskan päringuid ise kirjutada, tulemustest aru saada ja andmetest probleeme leida.

## 5 SQL päringut

### 1. Duplikaatide kontroll

Kontrollisin, mitu rida on `sales` tabelis kokku ja mitu erinevat `sale_id` väärtust esineb.

```sql
SELECT
    COUNT(*) AS ridu_kokku,
    COUNT(DISTINCT sale_id) AS unikaalseid,
    COUNT(*) - COUNT(DISTINCT sale_id) AS duplikaate
FROM sales;
**Tulemus:** 15 234 rida, 10 118 unikaalset `sale_id` väärtust ja vahe 5 116.

### 2. Puuduvate kliendi ID-de kontroll

Kontrollisin, mitmel müügireal puudub `customer_id`.

```sql
SELECT COUNT(*) AS puudub_klient
FROM sales
WHERE customer_id IS NULL;
```

**Tulemus:** 1 487 müügireal puudub `customer_id`.

### 3. 10 kõige suuremat müüki

Sorteerisin müügid summa järgi kahanevalt ja vaatasin 10 kõige suuremat müüki.

```sql
SELECT sale_id, customer_id, total_price
FROM sales
ORDER BY total_price DESC
LIMIT 10;
```

**Tulemus:** kõige suurem müügisumma oli 2 170,40 €.

### 4. 10 kõige väiksemat müüki

Sorteerisin müügid summa järgi kasvavalt, et leida kõige väiksemad ja võimalikud probleemsed müügisummad.

```sql
SELECT sale_id, customer_id, total_price
FROM sales
ORDER BY total_price ASC
LIMIT 10;
```

**Tulemus:** kõige väiksem müügisumma oli -1 405,32 €.

### 5. Null- ja negatiivsete müügisummade kontroll

Kontrollisin, mitu müüki on sellised, kus `total_price` on 0 või negatiivne.

```sql
SELECT COUNT(*) AS probleemseid_muuke
FROM sales
WHERE total_price <= 0;
```

**Tulemus:** 305 müügil oli `total_price` 0 või negatiivne.

## Olulisemad leiud

- `sales` tabelis oli kokku 15 234 müügirida.
- Erinevaid `sale_id` väärtusi oli 10 118 ning nende vahe kõigi ridade arvuga oli 5 116.
- 1 487 müügireal puudus `customer_id`.
- Kõige suurem müügisumma oli 2 170,40 €.
- Kõige väiksem müügisumma oli -1 405,32 €.
- 305 müügil oli `total_price` 0 või negatiivne.
- Negatiivsete müügisummade põhjus vajab täiendavat kontrollimist, sest ainult nende andmete põhjal ei saa põhjust kindlalt öelda.

- ## Mida praktilise töö käigus õppisin

Õppisin SQL-päringuid samm-sammult koostama ja tulemusi kontrollima. Sain paremini aru, kuidas kasutada filtreerimist, sorteerimist, loendamist ja puuduvaid väärtusi.

Praktilise töö käigus õppisin ka, et juhendis toodud näited ei pruugi alati täpselt vastata tegeliku andmebaasi struktuurile. Näiteks juhendis oli `sales` tabeli `status` veerg, kuid minu andmebaasis seda veergu ei olnud. Sellisel juhul ei hakanud ma andmeid oletama, vaid dokumenteerisin erinevuse.

Samuti õppisin, et andmetest leitud ebatavalise väärtuse põhjust ei saa ilma lisainfota oletada. SQL aitab probleemi leida, kuid selle põhjus võib vajada eraldi kontrollimist.


## Ekraanipilt

SQL-päringu käivitamine Supabase'is:

![Week 1 SQL päring Supabase'is](Kuvatõmmis%202026-10-01%20132233.png)

## Meeskonnatöö

Week 1 meeskonnatöös olin Sales Data Explorer. Uurisin `sales` tabelit ning analüüsisin müügiandmeid SQL-päringutega.

Minu meeskonnatöö kokkuvõte:
[Week 1 – Data Landscape](team/week1_data_landscape.md)

Täielik meeskonnatöö asub ühises GitHubi repos `Ivo-Murel/TOODE`.

