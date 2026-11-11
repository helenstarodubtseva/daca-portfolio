
# Nädal 7 – Meeskonnatöö: Python Pandas ja RFM-analüüs

## Meeskond TOODE



**Liikmed:** Ivo, Helen ja Kertu

**Teema:** UrbanStyle'i kliendiandmete analüüs ja RFM-kliendisegmenteerimine.

## Grupitöö esitlus

**Viide:** [Nädal 7 – UrbanStyle'i RFM-kliendisegmenteerimise grupitöö esitlus (Google Slides)](https://docs.google.com/presentation/d/1vbaf-APMytQiKg2gAz_WpOAedij0oYG_KPxh-iSFeSM/edit)

## Meeskonnatöö eesmärk

Analüüsida UrbanStyle'i müügi- ja kliendiandmeid Python Pandase abil, jagada kliendid RFM-segmentidesse ning koostada tulemuste põhjal visualiseeringud ja ärilised soovitused.

## Rollijaotus

| Liige | Ülesanne | Vastutus |
|---|---|---|
| Ivo | A ja B | Andmete laadimine, ühendamine ja puhastamine |
| Helen | C | RFM-analüüs ja kliendisegmenteerimine |
| Kertu | D | Andmete visualiseerimine ja tulemuste esitamine |

## Minu panus – RFM-analüüs

Kasutasin Ivo puhastatud andmeid ning arvutasin klientide RFM-näitajad:

- **Recency** – päevade arv viimasest ostust.
- **Frequency** – ostude arv.
- **Monetary** – kliendi ostude kogusumma.

Kasutasin juhendis määratud võrdluskuupäeva **28.02.2025**.

Arvutasin R-, F- ja M-skoorid skaalal 1–5 ning jagasin kliendid viide segmenti.

## RFM-analüüsi tulemused

Analüüs hõlmas **2538 klienti**.

| Kliendisegment | Kliente |
|---|---:|
| VIP Champions | 453 |
| Loyal | 677 |
| Potential | 762 |
| At Risk | 529 |
| Lost | 117 |
| **Kokku** | **2538** |

## Edasijõudnute ülesanded

Lisaks põhiülesandele:

- Arvutasin kaalutud RFM-skoori, andes Monetary näitajale suurema kaalu.
- Koostasin kuue segmendiga detailsema kliendijaotuse.
- Eksportisin analüüsi tulemused CSV-faili.

## Tööfailid

- `week7_rfm_ROLL_A_B_C_Helen.ipynb` – Ivo ettevalmistatud notebook koos minu RFM-analüüsiga.
- `urbanstyle_rfm_results.csv` – 2538 kliendi RFM-tulemused.

Failid on salvestatud meeskonna GitHubi repositooriumi **Ivo-Murel/TOODE**, kausta `Week-7`. CSV ja notebook on edastatud Kertule.

## Kasutatud töövahendid

- Python ja Pandas
- Google Colab
- GitHub
- ChatGPT – koodi koostamise, selgitamise ja kontrollimise abivahend

## Tulemused ja järgmised sammud

Minu RFM-analüüs ja edasijõudnute ülesanded on valmis.

Kertu jätkab andmete visualiseerimisega. Seejärel koondame tulemused ühisesse lõplikku notebook'i ning sõnastame meeskonna järeldused ja soovitused UrbanStyle'i juhtkonnale.

## Staatus

**Minu osa C: valmis.**

**Meeskonnatöö tervikuna: koostamisel.**
