# Nädal 4 – Individuaalne töö

## SQL agregatsioon ja andmete analüüs

**DACA andmeanalüütiku programm | UrbanStyle**

## Töö eesmärk

Neljanda nädala iseseisva töö eesmärk oli õppida kasutama SQL-i andmete grupeerimiseks, filtreerimiseks ja analüüsimiseks.

Kõik praktilised SQL-päringud koostasin ja käivitasin Supabase SQL Editoris.

Salvestatud päringute kogum: `W4_SQL_harjutused`.

---

## SQL-harjutused

| Harjutus | Ülesanne | Staatus |
|---|---|---|
| 1A | Müük kuude kaupa |  Tehtud |
| 1B | Müük linnade kaupa |  Tehtud |
| 1C | Toodete arv kategooriates |  Tehtud |
| 2A | Kliendid, kelle ostusumma ületab 500 € |  Tehtud |
| 2B | Kategooriate müügianalüüs `HAVING` abil |  Tehtud |
| 2C | `WHERE` ja `HAVING` koos |  Tehtud |
| 3A | Igakuise müügitrendi analüüs `LAG()` abil |  Tehtud |
| 3B | Klientide segmenteerimine CTE abil |  Tehtud |
| 3C | TOP 3 toodet igas kategoorias |  Tehtud |
| CEO raport | Linnade müügitulemuste analüüs |  Tehtud |
| Lisaülesanne 1 | Linnade osakaal kogukäibest |  Tehtud |
| Lisaülesanne 2 | Viimase kuu käibe võrdlus |  Tehtud |

---

## Peamised tulemused

### 1. Müük kuude kaupa

Analüüsisin müüki alates 2024. aasta jaanuarist.

- Suurima käibega kuu oli **detsember 2024**.
- Selle kuu käive oli **170 623,28 €**.
- Tellimuste arv oli **550**.

### 2. Müük linnade kaupa

CEO raporti TOP 5 linna:

| Linn | Kogukäive | Tellimusi |
|---|---:|---:|
| Tallinn | 571 649,39 € | 2062 |
| Tartu | 292 500,31 € | 1011 |
| Pärnu | 226 008,72 € | 755 |
| Narva | 67 458,67 € | 233 |
| Viljandi | 60 339,62 € | 215 |

**Järeldus:** Tallinn oli suurima käibega linn. Kolme suurima linna osakaal moodustas 72,35% analüüsitud linnade kogukäibest.

### 3. Klientide analüüs

`HAVING` abil leidsin:

- **1723 klienti**, kelle ostusumma ületas 500 €.
- **937 klienti**, kelle ostusumma ületas 1000 €.

CTE abil jagasin kliendid segmentidesse:

| Segment | Ostusumma | Klientide arv |
|---|---|---:|
| VIP | Üle 5000 € | 20 |
| Aktiivne | Üle 1000 € kuni 5000 € | 917 |
| Tavaline | Kuni 1000 € | 1615 |

**Andmekvaliteedi märkus:** Segmentide esialgses koondarvestuses tekkis üks lisagrupp puuduva kliendi ID tõttu. Tegelikult oli tuvastatud kliente 2551.

### 4. Toodete analüüs

Kasutasin `ROW_NUMBER()` ja `PARTITION BY`, et leida iga kategooria kolm enim müüdud toodet.

Tulemuseks sain **15 toodet viies kategoorias**.

### 5. Andmete kvaliteet

Kontrollimisel avastasin, et **988 müügireal puudub `customer_id`**.

See tähendab, et neid müüke ei saa konkreetsete klientidega siduda.

### 6. Viimase kuu müügitrend

- Viimase andmetes esineva kuu käive: **1408,72 €**
- Eelmiste kuude keskmine käive: **83 650,52 €**
- Erinevus: ligikaudu **−98,3%**

**Oluline:** 2026. aasta andmed võivad olla puudulikud. Seetõttu ei saa selle võrdluse põhjal kindlalt väita, et ettevõtte müük on tegelikult nii palju langenud.

---

## Mida ma õppisin

- Kasutama `GROUP BY` ja agregaatfunktsioone.
- Eristama `WHERE` ja `HAVING` kasutamist.
- Koostama keerukamaid päringuid CTE abil.
- Võrdlema müügitrende funktsiooniga `LAG()`.
- Järjestama tooteid funktsiooniga `ROW_NUMBER()`.
- Kontrollima puuduvaid väärtusi ja andmete kvaliteeti.
- Tegema SQL-tulemuste põhjal ärilisi järeldusi.

## Minu järeldus

SQL aitab muuta suure hulga andmeid ettevõtte jaoks kasulikuks infoks.

Selle nädala kõige olulisem õppetund oli, et enne äriliste otsuste tegemist tuleb kontrollida nii arvutuste õigsust kui ka andmete kvaliteeti ja täielikkust.

---

## Kasutatud töövahendid

- Supabase SQL Editor
- PostgreSQL
- GitHub

## Tööfailid

- `W4_SQL_harjutused` – SQL-päringud Supabase SQL Editoris
- `README.md` – iseseisva töö kirjeldus ja tulemused

**Märkus:** SQL-päringute fail tuleb GitHubi eraldi lisada.

---

**DACA | Nädal 4 | Individuaalne töö**
