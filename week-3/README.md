# Nädal 3: SQL JOIN-id ja andmete ühendamine

## Mida ma õppisin

Kolmandal nädalal õppisin SQL JOIN-päringutega ühendama UrbanStyle'i andmebaasi erinevaid tabeleid ning analüüsima klientide, toodete ja müükide vahelisi seoseid.

Harjutasin `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` ja mitme tabeli JOIN-päringuid. Lisaks kontrollisin ja ühtlustasin `customers` tabeli linnanimed.

## SQL-teemad

- Tabelite ühendamine (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`)
- Puuduvate seoste leidmine (`LEFT JOIN`, `IS NULL`)
- Kolme tabeli ühendamine
- Müügitulu analüüsimine (`SUM`, `GROUP BY`)
- Tulemuste järjestamine (`ORDER BY`, `LIMIT`)
- Linnanimede puhastamine (`TRIM`, `INITCAP`, `UPDATE`)

## Minu individuaalne töö

Kontrollisin ja ühtlustasin `customers` tabeli linnanimed ning koostasin SQL JOIN-päringuid tabelite `sales`, `customers` ja `products` analüüsimiseks.

### Peamised tulemused

| Näitaja | Tulemus |
|---|---:|
| Kliente kokku | 3 150 |
| Ostudeta kliente | 599 |
| Müümata tooteid | 12 |
| Suurima müügituluga kombinatsioon | Tallinn + jalanõud |
| Selle kombinatsiooni müügitulu | 275 940,70 € |

Koostasin kolm SQL-päringut Anna kampaaniaplaani toetamiseks.

Individuaalse töö SQL-failid, kirjeldus ja ekraanipildid asuvad kaustas [individual](individual/).

## Meeskonnatöö

Kolmandal nädalal tegime meeskonnaga **Toode** UrbanStyle'i
andmebaasi analüüsi SQL JOIN-päringutega.

### Tööjaotus

- **Ivo Murel:** `customers` – kliendiandmed
- **Helen Starodubtseva:** `products` ja `inventory` – tooted ja laoseis
- **Kertu Läänemägi:** `sales` – müügiandmed

### Minu töö – Roll C: Tooted ja inventuur

Analüüsisin toodete müüki, müügitulu ja laoseisu.

**Peamised tulemused:**

1. Leidsin 12 toodet, mida pole kordagi müüdud.
2. Suurima müügituluga toode oli
   „Õhuline sünteetiline sporditossud“ – 27 347,04 €.
3. Suurima müügituluga kategooria oli
   jalanõud – 774 034,75 €.
4. Väikseima müügituluga kategooria oli
   laste_riided – 305 844,45 €.
5. Kõige rohkem müügikirjeid oli
   meeste_riided kategoorias – 2266.
6. Inventuuritabelis oli 1400 laokirjet.
7. Neist 231 kirjet (16,5%) vajas juurdetellimist
   või laoseisu kontrollimist.
8. Leidsin ka negatiivseid laoseise.

### Minu soovitused

- Kontrollida 12 müümata toote nõudlust ja hindu.
- Jälgida jalanõude saadavust.
- Uurida lasteriiete väiksema müügitulu põhjuseid.
- Kontrollida 231 tähelepanu vajavat laokirjet.
- Selgitada negatiivsete laoseisude põhjused.

### Meeskonna GitHub

[TOODE – meeskonnatöö](https://github.com/Ivo-Murel/TOODE)

## Kokkuvõte

Kolmandal nädalal õppisin kasutama SQL JOIN-päringuid
erinevate tabelite ühendamiseks ja andmete analüüsimiseks.

Individuaalses töös analüüsisin klientide, toodete ja müükide
seoseid ning korrastasin kliendiandmeid.

Meeskonnatöös vastutasin toodete ja inventuuri analüüsi eest.
Leidsin 12 müümata toodet ning selgitasin välja kõige suurema
müügituluga toote ja tootekategooria.

Inventuuri 1400 kirjest vajas 231 (16,5%) juurdetellimist
või laoseisu kontrollimist. Tuvastasin ka negatiivseid laoseise.

Õppisin, kuidas SQL-päringute tulemuste põhjal teha
ettevõttele praktilisi järeldusi ja soovitusi.
