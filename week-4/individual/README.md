
#  Nädal 4 – SQL agregatsioon ja andmete analüüs

**DACA andmeanalüütiku programm | UrbanStyle | Iseseisev töö**

Neljandal nädalal õppisin SQL-i abil andmeid grupeerima, filtreerima ja analüüsima. Kasutasin UrbanStyle'i andmebaasi, et leida müügitulemusi, võrrelda linnu, analüüsida tooteid ja segmenteerida kliente.

---

##  Õpieesmärgid

- [x] Kasutada `GROUP BY` ja agregaatfunktsioone
- [x] Eristada `WHERE` ja `HAVING` kasutamist
- [x] Koostada päringuid CTE (`WITH`) abil
- [x] Kasutada aknafunktsioone `LAG()` ja `ROW_NUMBER()`
- [x] Analüüsida müüki, tooteid ja kliente
- [x] Koostada CEO raport koos lisaülesannetega
- [x] Kirjutada õpitu kohta kokkuvõtted ja refleksioon

---

##  Õpitud SQL-teemad

| SQL-käsk või funktsioon | Milleks kasutasin? |
|---|---|
| `GROUP BY` | Andmete grupeerimiseks |
| `COUNT()` | Tellimuste ja klientide loendamiseks |
| `SUM()` | Müügikäibe ja müüdud koguste arvutamiseks |
| `AVG()` | Keskmiste väärtuste leidmiseks |
| `WHERE` | Üksikute ridade filtreerimiseks |
| `HAVING` | Grupeeritud tulemuste filtreerimiseks |
| `CTE (WITH)` | Keerukate päringute osadeks jagamiseks |
| `LAG()` | Eelmise kuu käibega võrdlemiseks |
| `ROW_NUMBER()` | Toodete järjestamiseks |
| `PARTITION BY` | Eraldi järjestuse loomiseks igas kategoorias |

---

##  Praktilised SQL-harjutused

| Harjutus | Teema | Staatus |
|---|---|---|
| 1A | Müük kuude kaupa | ✅ Tehtud |
| 1B | Müük linnade kaupa | ✅ Tehtud |
| 1C | Toodete arv kategooriate järgi | ✅ Tehtud |
| 2A | Kliendid ostusumma järgi | ✅ Tehtud |
| 2B | Kategooriate müügianalüüs | ✅ Tehtud |
| 2C | `WHERE` ja `HAVING` koos | ✅ Tehtud |
| 3A | Igakuine müügitrend `LAG()` abil | ✅ Tehtud |
| 3B | Klientide segmenteerimine CTE-ga | ✅ Tehtud |
| 3C | TOP 3 toodet igas kategoorias | ✅ Tehtud |
| CEO raport | Linnade müügitulemuste koondanalüüs | ✅ Tehtud |
| Lisaülesanded | Linnade käibe osakaal ja kuude võrdlus | ✅ Tehtud |

Kõik päringud koostasin ja käivitasin **Supabase SQL Editoris**.

SQL-päringud on salvestatud nimega `W4_SQL_harjutused`.

---

##  Olulisemad analüüsitulemused

### 1. Müük linnade kaupa

CEO raporti järgi olid suurima käibega linnad:

| Koht | Linn | Kogukäive |
|---|---|---:|
| 1 | Tallinn | 571 649,39 € |
| 2 | Tartu | 292 500,31 € |
| 3 | Pärnu | 226 008,72 € |
| 4 | Narva | 67 458,67 € |
| 5 | Viljandi | 60 339,62 € |

**Järeldus:** Tallinn oli suurima käibega linn. Kolme suurima linna osakaal moodustas 72,35% analüüsitud linnade kogukäibest.

### 2. Klientide segmenteerimine

Jagasin kliendid ostusummade alusel kolme gruppi:

- **VIP** – ostusumma üle 5000 €
- **Aktiivne** – ostusumma üle 1000 € kuni 5000 €
- **Tavaline** – ostusumma kuni 1000 €

Tulemused:

| Segment | Klientide arv |
|---|---:|
| VIP | 20 |
| Aktiivne | 917 |
| Tavaline | 1615 |

**Märkus:** Segmenteerimise koondarvestuses oli üks lisagrupp, mille `customer_id` oli `NULL`. Seetõttu ei tohi seda käsitleda päris kliendina.

### 3. Andmete kvaliteet

Andmete kontrollimisel avastasin, et **988 müügireal puudub `customer_id`**.

See tähendab, et kõiki müüke ei saa konkreetse kliendiga siduda.

**Järeldus:** Enne äriliste otsuste tegemist tuleb kontrollida andmete kvaliteeti ja puuduvaid väärtusi.

### 4. Müügitrendi analüüs

Võrdlesin viimase andmetes esineva kuu käivet varasemate kuude keskmisega.

- Viimase kuu käive: **1408,72 €**
- Eelmiste kuude keskmine käive: **83 650,52 €**
- Erinevus: ligikaudu **−98,3%**

**Oluline:** 2026. aasta andmed võivad olla puudulikud. Seetõttu ei saa selle tulemuse põhjal automaatselt järeldada, et müük on tegelikult nii palju langenud.

---

##  Minu õpikogemus

Õppisin, et SQL võimaldab suurest andmehulgast leida ettevõtte jaoks olulist infot.

Kõige kasulikumad uued oskused olid:

- andmete grupeerimine ja kokkuvõtmine;
- erinevate filtrite kasutamine;
- keerukamate päringute koostamine CTE abil;
- müügitrendide ja klientide analüüsimine.

**Kõige olulisem õppetund:** õigete järelduste tegemiseks ei piisa ainult SQL-päringu käivitamisest. Tuleb kontrollida ka seda, kas andmed on täielikud ja usaldusväärsed.

---

##  Küsimused mentorile

1. Kuidas käsitleda müügianalüüsis ridu, millel puudub `customer_id`?
2. Kuidas kontrollida, kas viimase kuu müügiandmed on täielikud?

---

##  Kasutatud töövahendid

- **Supabase SQL Editor** – SQL-päringute koostamine ja käivitamine
- **PostgreSQL** – andmebaas ja SQL
- **GitHub** – õppetöö dokumenteerimine ja portfoolio

---

**DACA | Nädal 4 | Individuaalne SQL-harjutuste portfoolio**
