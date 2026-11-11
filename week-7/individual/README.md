# Nädal 7 – Individuaalne töö
## Python Pandas ja UrbanStyle'i RFM-kliendisegmenteerimine

## 1. Töö eesmärk

Individuaalse töö eesmärk oli õppida kasutama Pythonit ja Pandase teeki müügiandmete analüüsimiseks, töötlemiseks ning visualiseerimiseks.

Praktilises töös analüüsisin UrbanStyle'i müügiandmeid ja koostasin RFM-kliendisegmenteerimise, et tuvastada erineva ostukäitumisega kliendirühmad.

## 2. Kasutatud töövahendid

| Töövahend | Eesmärk |
|---|---|
| Python | Andmeanalüüsi teostamine |
| Pandas | Andmete töötlemine ja arvutused |
| Google Colab | Koodi kirjutamine ja käivitamine |
| Plotly Express | Interaktiivsete graafikute loomine |
| GitHub | Tulemuste dokumenteerimine |

## 3. Andmestiku kirjeldus

Analüüsisin UrbanStyle'i näidisandmestikku.

Andmestik sisaldas:
- 20 müügitehingut
- 7 klienti
- Müügikuupäevi
- Tellimuste summasid
- Kaupluste asukohti
- Tootekategooriaid

Peamised veerud:

| Veerg | Kirjeldus |
|---|---|
| customer_id | Kliendi identifikaator |
| sale_date | Müügikuupäev |
| total_price | Tellimuse summa |
| store_location | Kaupluse asukoht |
| product_category | Tootekategooria |

## 4. Andmete uurimine ja töötlemine

Kasutasin Pandase põhifunktsioone andmete uurimiseks, filtreerimiseks ja rühmitamiseks.

Peamised kasutatud meetodid:

- `head()` – esimeste ridade kuvamine
- `info()` – andmestiku struktuuri uurimine
- `describe()` – statistiline kokkuvõte
- `groupby()` – andmete rühmitamine
- `agg()` – koondarvutused
- `sort_values()` – tulemuste sorteerimine
- `merge()` – andmestike ühendamine
- `apply()` – tingimuslike arvutuste rakendamine

Lisaks analüüsisin klientide kogukulutusi ja tellimuste arvu.

## 5. RFM-kliendisegmenteerimine

RFM-analüüs võimaldab hinnata klientide ostukäitumist kolme näitaja põhjal.

### Recency (R)

Näitab, mitu päeva on möödunud kliendi viimasest ostust.

Väiksem päevade arv tähendab hiljutisemat ostu.

### Frequency (F)

Näitab, mitu ostu klient analüüsitaval perioodil tegi.

Suurem ostude arv tähendab aktiivsemat klienti.

### Monetary (M)

Näitab kliendi kogukulutust analüüsitaval perioodil.

Suurem kogukulutus tähendab suuremat rahalist panust müügitulusse.

### RFM-skoorid

Igale kliendile määrasin kolme näitaja põhjal skoorid vahemikus 1–5.

RFM koguskoor arvutati valemiga:

`RFM_score = R_score + F_score + M_score`

Koguskoori võimalik vahemik oli 3–15.

## 6. Kliendisegmentide tulemused

Analüüsi tulemusena jagunesid 7 klienti nelja segmenti.

| Segment | Klientide arv | Osakaal |
|---|---:|---:|
| VIP Champions | 1 | 14,3% |
| Loyal Customers | 3 | 42,9% |
| Potential Loyalists | 1 | 14,3% |
| At Risk | 2 | 28,6% |
| **Kokku** | **7** | **100%** |

### VIP Champions

Üks klient kuulus kõige väärtuslikumasse segmenti.

VIP Champions kliendi osakaal kogutuludest oli **14,16%**.

### Loyal Customers

Kolm klienti kuulusid lojaalsete klientide segmenti.

See moodustas suurima kliendirühma ehk 42,9% klientidest.

### Potential Loyalists

Üks klient kuulus potentsiaalsete lojaalsete klientide segmenti.

Selle kliendi ostuaktiivsust võiks suurendada personaalsete pakkumiste abil.

### At Risk

Kaks klienti kuulusid riskisegmenti.

Nende klientide ostukäitumine viitab vajadusele pöörata neile täiendavat tähelepanu.

## 7. Andmete visualiseerimine

Kasutasin Plotly Expressi interaktiivsete graafikute loomiseks.

### Kliendisegmentide tulpdiagramm

Tulpdiagramm näitas klientide arvu igas RFM-segmendis.

Kõige rohkem kliente kuulus Loyal Customers segmenti.

### Recency vs Monetary hajuvusdiagramm

Hajuvusdiagramm näitas seost viimasest ostust möödunud aja ja kliendi kogukulutuse vahel.

Punktide värvid tähistasid kliendisegmente ning punktide suurused ostude sagedust.

Visualiseerimine aitas võrrelda klientide ostukäitumist.

## 8. Täiendavad analüüsid

Lisaks RFM-analüüsile uurisin müügiandmeid erinevate tunnuste põhjal.

### Keskmine tellimuse väärtus linnade kaupa

| Linn | Keskmine tellimus |
|---|---:|
| Pärnu | 128,50 € |
| Tallinn | 98,87 € |
| Tartu | 94,57 € |

Kõige suurem keskmine tellimuse väärtus oli Pärnus.

### Müügitrendid

Koostasin kuupõhise müügikäibe visualiseeringu.

Analüüsitud perioodil oli suurim müügikäive 2024. aasta juunis.

## 9. Ärilised soovitused

RFM-analüüsi põhjal saab UrbanStyle rakendada erinevatele kliendirühmadele suunatud turundustegevusi.

**VIP Champions**
- Pakkuda eksklusiivseid soodustusi.
- Tunnustada väärtuslikke kliente.
- Hoida kõrget kliendirahulolu.

**Loyal Customers**
- Arendada lojaalsusprogrammi.
- Pakkuda korduvostude soodustusi.
- Julgustada täiendavaid oste.

**Potential Loyalists**
- Pakkuda personaalseid kampaaniaid.
- Suurendada ostusagedust.
- Suunata kliente lojaalsete klientide segmenti.

**At Risk**
- Saata tagasivõitmise pakkumisi.
- Kasutada personaalseid sooduskoode.
- Uurida ostuaktiivsuse vähenemise põhjuseid.

## 10. Õppetunnid ja refleksioon

Kõige keerulisem oli RFM-skooride arvutamine ning `pd.qcut()` ja `rank()` meetodite mõistmine.

Õppisin, kuidas määrata klientidele võrreldavaid skoore ja kuidas kasutada neid kliendisegmentide moodustamiseks.

Sain parema arusaama Pandase andmetöötlusvõimalustest ning sellest, kuidas Python täiendab varasemaid SQL-i teadmisi.

Tulevikus soovin süvendada teadmisi suuremate andmestike analüüsimisest ja korduvate analüüside automatiseerimisest.

## 11. Kokkuvõte

Seitsmenda nädala individuaalne töö andis praktilise kogemuse Pandase kasutamisel müügiandmete analüüsimiseks.

Koostasin UrbanStyle'i näidisandmete põhjal RFM-kliendisegmenteerimise, visualiseerisin tulemused ning sõnastasin ärilised soovitused.

Töö näitas, kuidas andmetest saab luua ettevõtte jaoks väärtuslikku teavet ja toetada andmepõhiseid otsuseid.
