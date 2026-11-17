# Nädal 8 – Iseseisev töö: Python API-d ja automatiseerimine

## 1. Töö ülevaade

DACA andmeanalüütiku karjäärikiirendi kaheksanda nädala iseseisva töö eesmärk oli õppida Pythonis API-de kasutamist, andmete töötlemist ja analüüsi automatiseerimist.

Praktilise töö läbivaks teemaks oli UrbanStyle'i tootejuhi Marko Saare vajadus automatiseerida müügiandmete analüüs ja RFM-kliendisegmenteerimine.

Töö tegin Google Colabi keskkonnas, kasutades Pythoni, pandas-teeki, Supabase'i ja Plotlyt.

**Peamine tööfail:** `DACA_N8_Python_harjutused.ipynb`

## 2. Õpieesmärgid

Iseseisva töö käigus harjutasin järgmisi oskusi:

- REST API tööpõhimõtete mõistmine.
- Supabase'i ühenduse loomine Pythonis.
- API-päringute kasutamine andmete laadimiseks.
- API-vastuste teisendamine pandas DataFrame'ideks.
- Andmete filtreerimine ja rühmitamine.
- Korduvkasutatavate Pythoni funktsioonide kirjutamine.
- Funktsioonide parameetrite ja tagastusväärtuste kasutamine.
- Veakäsitlus `try/except` abil.
- RFM-kliendisegmenteerimine.
- ETL-pipeline'i koostamine.
- Andmete valideerimine.
- Tulemuste salvestamine CSV- ja HTML-failidesse.

## 3. Kasutatud töövahendid

| Töövahend | Kasutus |
|---|---|
| Google Colab | Koodi kirjutamine ja käivitamine |
| Python | Analüüs ja automatiseerimine |
| pandas | Andmete töötlemine |
| Supabase | API-ühenduse katsetamine |
| supabase-py | Supabase'i Pythoni klient |
| python-dotenv | Keskkonnamuutujate kasutamise õppimine |
| Plotly | Diagrammide loomine |
| CSV | Analüüsitulemuste eksport |
| HTML | Interaktiivsete diagrammide salvestamine |
| GitHub | Töö dokumenteerimine ja portfoolio |

## 4. Esimene praktiline osa – API ja pandas

### 4.1. Supabase'i seadistamine

Lõin Supabase'is projekti `urbanstyle-daca` ning seadistasin Google Colabis Supabase'i Pythoni kliendi.

Ühenduse loomisel kasutasin Colabi Secrets-funktsiooni, et API-võtme tegelikku väärtust ei oleks vaja koodi kirjutada.

Supabase'i kliendi loomine õnnestus.

### 4.2. API-päringute katsetamine

Katsetasin andmete pärimist Supabase'i `sales` ja `customers` tabelitest.

Päringud ei tagastanud andmeridu. Võimalikuks põhjuseks oli Row Level Security (RLS) ligipääsupiirang.

Kuna tegelikud andmed ei olnud API kaudu kättesaadavad, jätkasin töövihiku näidisandmetega.

**Andmete päritolu:** allpool esitatud analüüsitulemused põhinevad harjutuse näidisandmetel, mitte Supabase'i tegelikel müügiandmetel.

### 4.3. Näidisandmete analüüs

Kasutasin 50 tellimuse ja 7 kliendi näidisandmeid.

Harjutasin:

- DataFrame'i loomist ja uurimist.
- Andmete filtreerimist tingimuste alusel.
- Tellimuste arvu leidmist.
- Müügisummade arvutamist.
- Linnade võrdlemist.
- Keskmise tellimuse väärtuse arvutamist.

### Linnade müügitulemused

| Linn | Tellimuste arv | Müügitulu |
|---|---:|---:|
| Tallinn | 22 | 2705,80 € |
| Tartu | 14 | 1911,70 € |
| Pärnu | 14 | 1675,00 € |
| **Kokku** | **50** | **6292,50 €** |

**Tulemused:**

- Tellimusi kokku: 50.
- Kogumüük: 6292,50 €.
- Keskmine tellimuse väärtus: 125,85 €.
- Üle 100 € väärtusega tellimusi: 30.
- Suurima müügituluga linn: Tallinn.

**Järeldus:** näidisandmete põhjal oli Tallinn kõige suurema tellimuste arvu ja müügituluga linn.

## 5. Teine praktiline osa – funktsioonid ja automatiseerimine

### 5.1. Automatiseerimise tasuvuse arvutamine

Võrdlesin käsitsi tehtava analüüsi ja automatiseeritud töövoo ajakulu.

Arvutuse tulemused:

- Võimalik ajavõit 50 nädala jooksul: ligikaudu 19,17 tundi.
- Automatiseerimise tasuvuspunkt: ligikaudu 10,43 nädalat.

See harjutus näitas, kuidas korduvate ülesannete automatiseerimine aitab pikema aja jooksul tööaega kokku hoida.

### 5.2. Müügiaruande funktsioon

Koostasin ja katsetasin funktsiooni:

`weekly_sales_report()`

Funktsiooni eesmärk oli arvutada müügiandmete põhjal kokkuvõtvad näitajad.

**Testimise tulemused:**

| Näitaja | Tulemus |
|---|---:|
| Tellimuste arv | 50 |
| Müügitulu | 6292,50 € |
| Keskmine tellimus | 125,85 € |

Katsetasin ka funktsiooni kuupäevaparameetri kasutamist.

### 5.3. RFM-analüüsi funktsioon

Koostasin RFM-analüüsi funktsiooni 7 kliendi näidisandmete põhjal.

RFM koosneb kolmest näitajast:

- **Recency:** aeg kliendi viimasest ostust.
- **Frequency:** kliendi ostude arv.
- **Monetary:** kliendi kogukulutus.

RFM-analüüs võimaldab võrrelda klientide ostukäitumist ja moodustada kliendisegmente.

### 5.4. Linnade võrdlemise funktsioon

Koostasin funktsiooni:

`city_comparison(sales, customers, cities=None)`

Funktsioon võimaldab võrrelda valitud linnade müügitulemusi.

Testisin võrdlusi:

- Tallinn ja Tartu.
- Tallinn ja Pärnu.

Harjutus aitas mõista funktsioonide parameetrite kasutamist ning seda, kuidas sama funktsiooni saab rakendada erinevatele sisenditele.

## 6. Kolmas praktiline osa – ETL-pipeline

ETL tähendab kolme peamist etappi:

1. **Extract** – andmete laadimine.
2. **Transform** – andmete töötlemine ja analüüsimine.
3. **Load** – tulemuste salvestamine.

### 6.1. Mini-pipeline

Koostasin mini-pipeline'i 20 tellimuse näidisandmete põhjal.

Töövoog:

1. Andmete ettevalmistamine.
2. Kuupõhiste müügitulemuste arvutamine.
3. Andmete koondamine.
4. Diagrammi loomine.
5. Tulemuste salvestamine.

**Tulemus:** koostati 7 kuu müügiaruanded.

Salvestatud failid:

- `monthly_report_20261117_1042.csv`
- `monthly_chart_20261117_1042.html`

### 6.2. RFM-segmenteerimise harjutus

Järgmises harjutuses koostasin 7 kliendi RFM-analüüsi ning jagasin kliendid segmentidesse.

Selles harjutuses saadud jaotus:

| Segment | Klientide arv |
|---|---:|
| Tippklient | 5 |
| Püsiklient | 1 |
| Tavaklient | 1 |
| **Kokku** | **7** |

Salvestatud failid:

- `rfm_report_20261117_1044.csv`
- `rfm_chart_20261117_1044.html`

### 6.3. Pipeline'i kavandamine

Koostasin UrbanStyle'i iganädalase müügiaruande automatiseerimise kavandi.

Kavandis kirjeldasin andmete laadimist, töötlemist, kontrollimist ja salvestamist.

## 7. Integreeriv harjutus – Marko iganädalane RFM-pipeline

Viimases praktilises ülesandes käivitasin tervikliku RFM-pipeline'i.

Pipeline ühendas järgmised etapid:

**EXTRACT → TRANSFORM → VALIDATE → LOAD**

### 7.1. Käivitamise tulemused

| Etapp | Tulemus |
|---|---|
| EXTRACT | 20 tellimust ja 7 klienti |
| TRANSFORM | 7 klienti segmenteeritud |
| VALIDATE | OK |
| LOAD | 1 CSV ja 2 HTML-faili |
| Koguaeg | Ligikaudu 0,2 sekundit |

Pipeline läbis kõik etapid edukalt.

### 7.2. Klientide tulemused

| Klient | Ostude arv | Kogukulutus | Segment |
|---|---:|---:|---|
| Juri | 4 | 532,29 € | Tippklient |
| Peeter | 3 | 477,00 € | Tippklient |
| Kati | 4 | 370,50 € | Püsiklient |
| Maris | 4 | 292,50 € | Püsiklient |
| Liina | 3 | 291,50 € | Püsiklient |
| Tiina | 1 | 65,00 € | Tavaklient |
| Andres | 1 | 37,00 € | Tavaklient |

### 7.3. Segmentide kokkuvõte

| Segment | Klientide arv |
|---|---:|
| Tippklient | 2 |
| Püsiklient | 3 |
| Tavaklient | 2 |
| **Kokku** | **7** |

**Peamised tulemused:**

- Analüüsiti 20 tellimust ja 7 klienti.
- Tuvastati 2 tippklienti.
- Tuvastati 3 püsiklienti.
- Tuvastati 2 tavaklienti.
- Suurima kogukulutusega klient oli Juri (532,29 €).
- Andmete valideerimine õnnestus.
- CSV- ja HTML-väljundid loodi edukalt.

### 7.4. Lõpliku pipeline'i väljundfailid

- `rfm_report_20261117.csv`
- `rfm_chart_20261117.html`
- `monthly_chart_20261117.html`

Need failid sisaldavad lõpliku praktilise harjutuse analüüsitulemusi ja diagramme.

## 8. Andmete valideerimine ja veakäsitlus

Harjutustes kasutasin andmete kontrollimise ja vigade käsitlemise põhimõtteid.

Olulised tegevused:

- Kontrollisin andmete laadimise tulemusi.
- Kasutasin `try/except` veakäsitlust.
- Tutvusin logimise põhimõtetega.
- Kontrollisin pipeline'i etappide toimimist.
- Kasutasin valideerimist enne tulemuste salvestamist.

Supabase'i päringute katsetamine näitas, et API-ühenduse loomine ei taga automaatselt andmete kättesaadavust.

## 9. Andmeturvalisus

Õppisin, et API-võtmeid ei tohi avalikku lähtekoodi lisada.

Kasutasin Google Colabi Secrets-funktsiooni ühenduse seadistamiseks.

GitHubi portfooliosse ei lisa ma API-võtmete tegelikke väärtusi, salasõnu ega `.env` faili.

## 10. AI kasutamine

Kasutasin ChatGPT-d praktiliste ülesannete läbimisel abivahendina.

AI aitas selgitada Pythoni koodi, analüüsida veateateid ning mõista API-de, funktsioonide ja ETL-pipeline'i tööpõhimõtteid.

Kontrollisin koodi käivitamist Google Colabis ning dokumenteerisin saadud tulemused.

## 11. Iseseisva töö failid

### Põhifail

`DACA_N8_Python_harjutused.ipynb`

Fail sisaldab kaheksanda nädala praktilisi harjutusi, Pythoni koodi, selgitusi ja analüüsitulemusi.

### Loodud väljundid

| Fail | Sisu |
|---|---|
| `monthly_report_20261117_1042.csv` | Kuupõhine müügiaruanne |
| `monthly_chart_20261117_1042.html` | Müügitulemuste diagramm |
| `rfm_report_20261117_1044.csv` | RFM-analüüsi aruanne |
| `rfm_chart_20261117_1044.html` | RFM-segmentide diagramm |
| `rfm_report_20261117.csv` | Lõpliku pipeline'i RFM-aruanne |
| `rfm_chart_20261117.html` | Lõpliku pipeline'i RFM-diagramm |
| `monthly_chart_20261117.html` | Lõpliku pipeline'i müügidiagramm |

Väljundfailid loodi Google Colabis. Kõik selles tabelis nimetatud failid ei pruugi olla GitHubi repositooriumisse lisatud.

## 12. Probleemid ja lahendused

### Supabase'i päringud ei tagastanud andmeid

Supabase'i ühendus õnnestus, kuid `sales` ja `customers` tabelitest ei saadud andmeridu.

Võimalik põhjus oli RLS-i ligipääsupiirang.

**Lahendus harjutuste jätkamiseks:** kasutasin töövihiku näidisandmeid, säilitades analüüsi ja automatiseerimise harjutuste eesmärgid.

### RFM-kuupäevade käsitlemine

RFM-analüüsi katsetamisel oli oluline valida sobiv võrdluskuupäev, et Recency arvutus annaks loogilised tulemused.

Kasutasin näidisandmetega sobivat võrdluskuupäeva.

### Tulemuste salvestamine

Õppisin leidma Google Colabi loodud väljundfailid, neid alla laadima ning eristama CSV- ja HTML-vorminguid.

## 13. Iseseisva töö kokkuvõte

Kaheksanda nädala iseseisva töö praktilised harjutused said tehtud.

Kõige olulisemad õpitulemused olid:

- API-ühenduse loomine Pythonis.
- API-päringute ja ligipääsupiirangute mõistmine.
- Andmete töötlemine pandas-teegiga.
- Korduvkasutatavate funktsioonide kirjutamine.
- RFM-kliendisegmenteerimise tegemine.
- ETL-pipeline'i koostamine ja käivitamine.
- Andmete valideerimine.
- CSV-aruannete ja HTML-diagrammide loomine.
- Tulemuste dokumenteerimine.

**Peamine järeldus:** struktureeritud pipeline võimaldab ühendada korduvad andmeanalüüsi tegevused üheks töövooguks ning vähendada käsitsi tehtavat tööd.

Harjutustes kasutatud näidisandmed võimaldasid automatiseerimise põhimõtteid praktikas katsetada ka olukorras, kus Supabase'i tegelikud andmed ei olnud API kaudu kättesaadavad.

---

**DACA – Andmeanalüütiku Karjäärikiirendi**  
**Nädal 8 – Python API-d ja automatiseerimine**  
**Iseseisev praktiline töö**
