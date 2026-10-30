# Week 5 – Rühmatöö




# DACA – Nädal 5 | UrbanStyle – Power BI visualiseerimine

## Grupitöö ülevaade

**Projekt:** UrbanStyle – müügi-, turundus- ja laoseisu analüüs  
**Nädal:** 5 – Visualiseerimise disain  
**Töövahendid:** PostgreSQL, Supabase, Power BI Desktop, Google Slides ja GitHub

Grupitöö eesmärk oli koostada UrbanStyle'i andmete põhjal rollipõhised Power BI juhtimislauad, mis aitavad ettevõttel teha andmepõhiseid otsuseid.

Iga grupiliige vastutas oma analüüsivaldkonna eest. Tulemused koondati ühisesse esitlusse.

---

## Meeskond ja rollid

| Liige | Roll | Analüüsivaldkond |
|---|---|---|
| Ivo | A – CEO Dashboard | Ettevõtte müügitulemused ja üldised KPI-d |
| Kertu | B – Marketing Dashboard | Kliendid ja turundus |
| Helen | C – Operations Dashboard | Müügikohad, laoseis ja varude jaotus |

---

## Roll A – CEO Dashboard

**Vastutaja: Ivo**

CEO Dashboard keskendub UrbanStyle'i üldistele majandustulemustele.

Juhtimislaud annab ülevaate ettevõtte müügitulust, klientide arvust ning müügitulemuste muutumisest ajas.

Peamised näitajad:

- Kogumüügitulu
- Klientide arv
- Müügitulu trend
- Müügitulemuste võrdlus aastate lõikes

Dashboard võimaldab ettevõtte juhtkonnal kiiresti hinnata müügitulemusi ja jälgida muutusi.

---

## Roll B – Marketing Dashboard

**Vastutaja: Kertu**

Marketing Dashboard keskendub klientide ja turundusega seotud andmete analüüsile.

Analüüsi eesmärk on mõista kliendikäitumist ning leida võimalusi kordusostude ja kliendihoidmise parandamiseks.

Turundusanalüüsi keskne soovitus on pöörata rohkem tähelepanu olemasolevate klientide hoidmisele ja nende ostuaktiivsuse suurendamisele.

---

# Roll C – Operations Dashboard

**Vastutaja: Helen**

## Eesmärk

Operations Dashboard'i eesmärk oli analüüsida UrbanStyle'i müügitulu müügikohtade lõikes ning laovarude jaotust tootekategooriate ja asukohtade järgi.

Lisaks kohustuslikele diagrammidele koostati täiendavad visualiseeringud, KPI-kaardid ja interaktiivsed filtrid.

Analüüsis kasutati järgmisi andmebaasitabeleid:

- `sales` – müügitehingud
- `inventory` – laoseisud
- `products` – tooted ja kategooriad

## Koostatud Power BI juhtimislaud

**Pealkiri:** UrbanStyle – müügi- ja laoseisu ülevaade (2023–2026)

Juhtimislaual on neli diagrammi:

1. Müügitulu müügikohtade lõikes (€)
2. Müügitulu osakaal aastate lõikes (%)
3. Laoseisud tootekategooriate järgi (tk)
4. Laoseisud asukohtade lõikes (tk)

Lisaks on kasutusel kaks KPI-kaarti:

| Näitaja | Tulemus |
|---|---:|
| Müügitulu kokku | 2,91 mln € |
| Laoseis kokku | 376 785 tk |

Juhtimislauale lisati aastafilter ja tootekategooria filter, mis võimaldavad andmeid interaktiivselt uurida.

---

## Müügitulu analüüs müügikohtade lõikes

### SQL-päring

```sql
SELECT
    store_location,
    SUM(total_price) AS tulu,
    COUNT(*) AS tehinguid
FROM sales
GROUP BY store_location
ORDER BY tulu DESC;
```

### Tulemused

| Müügikoht | Müügitulu (€) | Tehinguid |
|---|---:|---:|
| Tallinn | 1 092 083,15 | 3 801 |
| Asukoht puudub | 1 006 747,68 | 3 462 |
| Tartu | 521 603,11 | 1 797 |
| Pärnu | 288 744,04 | 1 058 |
| **Kokku** | **2 909 178,98** | **10 118** |

### Järeldus

Tallinn oli suurima tuvastatud müügituluga müügikoht (1,09 mln €), kuid ligikaudu 1,01 mln € väärtuses tehingutel puudub müügikoha määrang. See viitab andmekvaliteedi probleemile, mistõttu tuleks parandada müügikohtade andmete salvestamist.

---

## Laoseisude analüüs tootekategooriate järgi

### SQL-päring

```sql
SELECT
    p.category,
    SUM(i.quantity_available) AS kogus
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
GROUP BY p.category
ORDER BY kogus DESC;
```

### Tulemused

| Tootekategooria | Laoseis (tk) |
|---|---:|
| Meeste riided | 101 189 |
| Jalanõud | 86 352 |
| Laste riided | 75 193 |
| Naiste riided | 63 970 |
| Aksessuaarid | 50 081 |
| **Kokku** | **376 785** |

### Järeldus

Suurim laovaru on meeste rõivaste kategoorias (101 189 tk), väikseim aksessuaaridel (50 081 tk). Varude jaotuse tõhususe hindamiseks tuleks võrrelda laokoguseid toodete müügikiirusega.

---

## Laoseisude analüüs asukohtade järgi

| Asukoht | Laoseis (tk) |
|---|---:|
| Kesklaos | 162 334 |
| Pärnu | 78 978 |
| Tartu | 77 676 |
| Tallinn | 57 797 |
| **Kokku** | **376 785** |

Suurim osa laovarudest paikneb kesklaos ning kauplustest on väikseim laoseis Tallinnas.

Kuna Tallinn on suurima tuvastatud müügituluga müügikoht, võiks edaspidi võrrelda kaupluste laoseise tegeliku müügimahu ja nõudlusega.

---

## Interaktiivsus ja disainiotsused

Power BI juhtimislaud loodi ühe ekraani ülevaatena, et olulised näitajad oleksid korraga nähtavad.

Kasutatud lahendused:

- Horisontaalsed tulpdiagrammid müügikohtade ja laokoguste võrdlemiseks.
- Rõngasdiagramm aastate müügitulu osakaalu näitamiseks.
- KPI-kaardid kogumüügitulu ja laoseisu kuvamiseks.
- Aasta ja tootekategooria rippmenüüfiltrid.
- Diagrammidevaheline ristfiltreerimine.

Laoseisu KPI arvutamisel kasutati välja `inventory.quantity_available` summat, et tootekategooria filter mõjutaks näitajat korrektselt.

Müügitulu on võimalik analüüsida aastate lõikes, kuid laoseisu ei käsitletud ajaloolise aastapõhise näitajana, sest olemasolevad inventuuriandmed ei kinnita iga aasta tegelikku laoseisu.

---

## Grupi ühised järeldused

**Müük:** Tallinn oli suurima tuvastatud müügituluga müügikoht, kuid suurel osal tehingutest puudub müügikoha määrang.

**Turundus:** Kliendihoidmise parandamine ja kordusostude suurendamine võivad toetada ettevõtte pikaajalist kasumlikkust.

**Laoseis:** Suurim laovaru on meeste rõivaste kategoorias ning varude optimaalsuse hindamiseks tuleb võrrelda laokoguseid toodete müügikiirusega.

---

## Projekti väljundid

Grupitöö tulemusena valmisid:

- Kolm rollipõhist Power BI juhtimislauda.
- SQL-päringud andmete analüüsimiseks.
- Dashboard'ide ekraanipildid.
- Ühine Google Slidesi esitlus.
- GitHubi projektidokumentatsioon.

Iga grupiliikme individuaalsed tööfailid kuuluvad ka tema isiklikku GitHubi portfooliosse.

---

## Tehisintellekti kasutamine

Helen kasutas ChatGPT-d SQL-päringute selgitamiseks, Power BI seadistamisel, tulemuste tõlgendamisel ja dokumentatsiooni vormistamisel. Analüüsi arvulised tulemused põhinevad UrbanStyle'i andmebaasil.

---

## Kokkuvõte

DACA 5. nädala grupitöö käigus analüüsiti UrbanStyle'i müügi-, kliendi- ja laoseisuandmeid ning koostati kolm erineva eesmärgiga Power BI juhtimislauda.

Ivo keskendus ettevõtte üldisele tulemuslikkusele, Kertu klientide ja turunduse analüüsile ning Helen müügikohtade ja laovarude analüüsile.

Töö peamised tähelepanekud puudutasid müügiandmete kvaliteeti, kliendihoidmise olulisust ja laovarude jaotuse hindamist.

**Peamine soovitus:** kasutada Power BI juhtimislaudu regulaarseks aruandluseks ning siduda müügi-, kliendi- ja laoseisuandmed ettevõtte igapäevaste juhtimisotsustega.
