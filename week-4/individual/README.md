# Nädal 4 – Individuaalne töö

## SQL agregatsioon ja andmete analüüs

**DACA andmeanalüütiku programm | UrbanStyle**

---

## 1. Töö eesmärk

Neljanda nädala eesmärk oli õppida SQL-i abil andmeid grupeerima, filtreerima ja analüüsima.

Analüüsisin UrbanStyle'i müügi-, kliendi- ja tooteandmeid ning koostasin SQL-päringute tulemuste põhjal ärilisi järeldusi.

**Töökeskkond:** Supabase SQL Editor  
**Andmebaas:** PostgreSQL  
**Salvestatud päringud:** `W4_SQL_harjutused`

---

## 2. Kasutatud andmetabelid

| Tabel | Kirjeldus |
|---|---|
| `sales` | Müügitehingud ja müügisummad |
| `customers` | Kliendid ja nende asukohad |
| `products` | Tooted ja tootekategooriad |

### Kasutatud SQL-võtted

| SQL-võte | Eesmärk |
|---|---|
| `COUNT()` | Kirjete loendamine |
| `SUM()` | Müügikäibe arvutamine |
| `AVG()` | Keskmiste väärtuste arvutamine |
| `GROUP BY` | Andmete grupeerimine |
| `WHERE` | Andmete filtreerimine |
| `HAVING` | Grupeeritud tulemuste filtreerimine |
| `JOIN` | Tabelite ühendamine |
| `WITH` (CTE) | Mitmeastmeliste päringute koostamine |
| `CASE` | Klientide segmenteerimine |
| `LAG()` | Müügitrendide võrdlemine |
| `ROW_NUMBER()` | Toodete järjestamine |
| `PARTITION BY` | Järjestamine kategooriate kaupa |

---

## 3. SQL-harjutuste ülevaade

| Harjutus | Ülesanne | Staatus |
|---|---|---|
| 1A | Müük kuude kaupa | Tehtud |
| 1B | Müük linnade kaupa | Tehtud |
| 1C | Toodete arv kategooriates | Tehtud |
| 2A | Kliendid, kelle ostusumma ületab 500 € | Tehtud |
| 2B | Kategooriate müügianalüüs | Tehtud |
| 2C | `WHERE` ja `HAVING` koos | Tehtud |
| 3A | Igakuine müügitrend `LAG()` abil | Tehtud |
| 3B | Klientide segmenteerimine CTE abil | Tehtud |
| 3C | TOP 3 toodet igas kategoorias | Tehtud |
| CEO raport | Linnade müügitulemuste analüüs | Tehtud |
| Lisaülesanne 1 | Linnade osakaal kogukäibest | Tehtud |
| Lisaülesanne 2 | Viimase kuu käibe võrdlus | Tehtud |

---

# 4. Harjutuste tulemused ja järeldused

## Harjutus 1A – Müük kuude kaupa

**Eesmärk:** võrrelda müügikäivet ja tellimuste arvu kuude lõikes.

**Kasutatud SQL:** `SUM()`, `COUNT()`, `GROUP BY`.

| Näitaja | Tulemus |
|---|---|
| Suurima käibega kuu | Detsember 2024 |
| Müügikäive | **170 623,28 €** |
| Tellimuste arv | **550** |

**Järeldus:** detsember 2024 oli analüüsitud perioodi suurima käibega kuu. Kuupõhine analüüs aitab hinnata müügi hooajalisust.

---

## Harjutus 1B – Müük linnade kaupa

**Eesmärk:** võrrelda müügikäivet ja tellimuste arvu linnade lõikes.

**Kasutatud SQL:** `JOIN`, `SUM()`, `COUNT()`, `GROUP BY`.

Ühendasin `sales` ja `customers` tabelid, et analüüsida müügitehinguid klientide linnade järgi.

**Järeldus:** linnade müügitulemuste võrdlemine aitab hinnata piirkondlikku nõudlust.

Täpsemad tulemused on esitatud CEO raporti osas.

---

## Harjutus 1C – Toodete arv kategooriates

**Eesmärk:** uurida toodete jagunemist kategooriate vahel.

| Kategooria | Toodete arv |
|---|---:|
| Meeste riided | 82 |
| Jalanõud | 73 |
| Laste riided | 70 |
| Naiste riided | 70 |
| Aksessuaarid | 67 |
| **Kokku** | **362** |

**Järeldus:** kõige suurem tootevalik oli meeste riiete kategoorias.

---

## Harjutus 2A – Klientide analüüs HAVING abil

**Eesmärk:** leida kliendid, kelle ostude kogusumma ületab määratud piiri.

**Kasutatud SQL:** `JOIN`, `SUM()`, `GROUP BY`, `HAVING`.

| Ostude kogusumma | Klientide arv |
|---|---:|
| Üle 500 € | **1723** |
| Üle 1000 € | **937** |

### TOP 3 klienti ostude kogusumma järgi

| Klient | Linn | Ostude kogusumma |
|---|---|---:|
| Tiina Pärn | Tartu | 27 668,02 € |
| Priti Rand | Pärnu | 26 286,10 € |
| Kevin Org | Tallinn | 23 467,13 € |

**Järeldus:** suurema ostumahuga klientide leidmine aitab kavandada personaalseid pakkumisi ja lojaalsusprogramme.

---

## Harjutus 2B – Tootekategooriate müügianalüüs

**Eesmärk:** võrrelda kategooriaid müüdud ühikute järgi.

**Kasutatud SQL:** `SUM()`, `AVG()`, `GROUP BY`, `HAVING`.

| Kategooria | Müüdud ühikuid |
|---|---:|
| Meeste riided | **4121** |
| Jalanõud | 3737 |
| Laste riided | 3686 |
| Naiste riided | 3604 |
| Aksessuaarid | 3231 |

**Järeldus:** kõige rohkem müüdi meeste riiete kategooria tooteid.

---

## Harjutus 2C – WHERE ja HAVING koos

**Eesmärk:** analüüsida 2024. aasta esimese kvartali müügitulemusi.

| Kuu | Tellimusi | Müügikäive |
|---|---:|---:|
| Jaanuar 2024 | 312 | 85 618,65 € |
| Veebruar 2024 | 334 | 90 181,83 € |
| Märts 2024 | 412 | 109 559,98 € |

Kõigi kolme kuu käive ületas 5000 €.

**Õppetund:** `WHERE` filtreerib andmed enne grupeerimist ja `HAVING` pärast grupeerimist.

---

## Harjutus 3A – Igakuise müügitrendi analüüs

**Eesmärk:** võrrelda iga kuu käivet eelmise kuuga.

**Kasutatud SQL:** `WITH`, `DATE_TRUNC()`, `LAG()`.

| Periood | Käibe muutus |
|---|---:|
| Detsember 2024 | +54,3% |
| Jaanuar 2025 | −41,7% |
| Juuni 2026 | +1715,4% |

**Järeldus:** `LAG()` võimaldab võrrelda järjestikuste kuude müügitulemusi.

**Tähelepanek:** väga suuri protsentuaalseid muutusi tuleb hinnata koos tegeliku käibe ja andmete täielikkusega.

---

## Harjutus 3B – Klientide segmenteerimine CTE abil

**Eesmärk:** jagada kliendid ostude kogusumma järgi kolme segmenti.

**Kasutatud SQL:** `WITH`, `JOIN`, `COUNT()`, `SUM()`,
`GROUP BY` ja `CASE`.

### Segmendipiirid

| Segment | Ostude kogusumma |
|---|---|
| **VIP** | Üle 1000 € |
| **Aktiivne** | Üle 500 € kuni 1000 € |
| **Tavaline** | Kuni 500 € |

### SQL-päringu loogika

1. `WITH` loob klientide ostude kokkuvõtte.
2. `JOIN` ühendab klientide ja müükide tabelid.
3. `COUNT()` loendab tellimused.
4. `SUM()` arvutab ostude kogusumma.
5. `CASE` määrab kliendile segmendi.
6. `GROUP BY` koondab tulemused segmentide kaupa.

### Tulemused

Varasemad tulemused 20 VIP, 917 aktiivset ja
1615 tavalist põhinesid teistel segmendipiiridel.

Ivo kasutatud 1000 € ja 500 € piiridega tuleb
segmentide arvud SQL-päringust eraldi võtta.

### Järeldus

Klientide segmenteerimine võimaldab eristada
erineva ostumahuga kliendirühmi.

VIP-klientidele saab kavandada personaalseid
pakkumisi ning aktiivsetele klientidele
lojaalsuskampaaniaid.
---

## Harjutus 3C – TOP 3 toodet igas kategoorias

**Eesmärk:** leida iga tootekategooria kolm enim müüdud toodet.

**Kasutatud SQL:** `ROW_NUMBER()`, `PARTITION BY`.

| Näitaja | Tulemus |
|---|---:|
| Tootekategooriaid | 5 |
| Tooteid igast kategooriast | 3 |
| **Kokku** | **15** |

**Järeldus:** kategooriapõhine järjestamine aitab tuvastada populaarsemaid tooteid ja toetab sortimendi planeerimist.

---

# 5. CEO raport – müügitulemused juhtkonnale

## TOP 5 linna müügikäibe järgi

| Koht | Linn | Kogukäive | Tellimusi |
|---|---|---:|---:|
| 1 | **Tallinn** | **571 649,39 €** | **2062** |
| 2 | Tartu | 292 500,31 € | 1011 |
| 3 | Pärnu | 226 008,72 € | 755 |
| 4 | Narva | 67 458,67 € | 233 |
| 5 | Viljandi | 60 339,62 € | 215 |

**Järeldus:** Tallinn oli suurima müügikäibe ja tellimuste arvuga linn.

---

## Lisaülesanne 1 – Linnade osakaal kogukäibest

**Kasutatud SQL:** `SUM() OVER ()`.

| Linn | Osakaal |
|---|---:|
| Tallinn | 37,94% |
| Tartu | 19,41% |
| Pärnu | 15,00% |
| Narva | 4,48% |
| Viljandi | 4,00% |

**Peamine tulemus:** Tallinn, Tartu ja Pärnu moodustasid kokku **72,35% analüüsitud linnade kogukäibest**.

**Järeldus:** suurem osa müügikäibest koondus kolme linna.

---

## Lisaülesanne 2 – Viimase kuu käibe võrdlus

| Näitaja | Tulemus |
|---|---:|
| Viimase andmetes esineva kuu käive | **1408,72 €** |
| Varasemate kuude keskmine käive | **83 650,52 €** |
| Erinevus | **−98,3%** |

**Järeldus:** viimase kuu käive oli varasemate kuude keskmisest oluliselt väiksem.

**Oluline:** 2026. aasta müügiandmed võivad olla puudulikud. Seetõttu ei saa kindlalt väita, et ettevõtte tegelik müük langes 98,3%.

---

# 6. Andmekvaliteedi analüüs

SQL-harjutuste käigus kontrollisin ka andmete täielikkust.

| Tähelepanek | Tulemus | Mõju |
|---|---|---|
| Puuduv `customer_id` | **988 müügirida** | Müüke ei saa konkreetse kliendiga siduda |
| Täiendav `NULL`-ID grupp | **1 grupp** | Mõjutab koondpäringu tõlgendamist |
| Võimalikud puudulikud müügiandmed | 2026. aasta | Mõjutavad müügitrendide võrdlust |

### Järeldus

Andmekvaliteet mõjutab otseselt analüüsi usaldusväärsust.

Enne äriliste otsuste tegemist tuleb kontrollida, kas andmed on täielikud ja kas võrreldavad perioodid on sobivad.

---

# 7. Peamised ärilised järeldused

1. **Müügikäive koondub suurematesse linnadesse.** Tallinn, Tartu ja Pärnu moodustasid 72,35% analüüsitud linnade kogukäibest.

2. **Tootekategooriate nõudlus on erinev.** Kõige rohkem müüdi meeste riiete kategooria tooteid.

3. **Klientide ostumahud erinevad.** Segmenteerimine aitab kavandada sobivaid pakkumisi erinevatele kliendirühmadele.

4. **Müügitrende tuleb tõlgendada ettevaatlikult.** Suured protsentuaalsed muutused võivad tuleneda väikesest võrdlusbaasist või puudulikest andmetest.

5. **Puuduvad kliendi ID-d mõjutavad aruannete täpsust.** Kokku oli 988 müügirida, mida ei saanud konkreetse kliendiga siduda.

---

# 8. Mida ma õppisin

Neljandal nädalal õppisin:

- kasutama SQL-i agregaatfunktsioone;
- grupeerima ja filtreerima andmeid;
- eristama `WHERE` ja `HAVING` kasutamist;
- koostama CTE-päringuid;
- analüüsima müügitrende `LAG()` abil;
- järjestama tooteid `ROW_NUMBER()` abil;
- arvutama müügikäibe osakaale;
- kontrollima puuduvaid väärtusi;
- tõlgendama SQL-tulemusi ärilisest vaatenurgast.

---

# 9. Kokkuvõte

Neljandal nädalal õppisin SQL-i abil andmeid põhjalikumalt analüüsima ning koostama müügi-, kliendi- ja tooteandmete põhjal järeldusi.

Kõige kasulikumad olid CTE-d ja aknafunktsioonid, mille abil sain võrrelda müügitrende, jagada kliente segmentidesse ning järjestada tooteid kategooriate kaupa.

Oluline praktiline kogemus oli andmekvaliteedi kontrollimine. Klientide segmenteerimisel märkasin erinevust koondpäringu ja tuvastatud klientide arvu vahel ning uurisin selle põhjust.

**Minu peamine õppetund:** enne äriliste otsuste tegemist tuleb kontrollida nii SQL-arvutuste õigsust kui ka andmete kvaliteeti ja täielikkust.

---

# 10. Kasutatud töövahendid

- **Supabase SQL Editor** – SQL-päringute koostamine ja käivitamine
- **PostgreSQL** – andmete analüüs
- **GitHub** – tööfailide dokumenteerimine
- **Markdown** – portfoolio vormistamine

---

# 11. Tööfailid

| Fail | Kirjeldus |
|---|---|
| `README.md` | Individuaalse töö dokumentatsioon |
| `W4_SQL_harjutused` | Supabase'is salvestatud SQL-päringud |
| `week4_sql_harjutused.sql` | SQL-päringute fail GitHubi lisamiseks |

**Märkus:** SQL-fail tuleb GitHubi eraldi üles laadida.

---

**DACA | Nädal 4 | Individuaalne töö**
