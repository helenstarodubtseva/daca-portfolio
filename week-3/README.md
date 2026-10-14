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

Kolmandal nädalal jätkame meeskonnas **Toode** SQL JOIN-päringutega.

### Tööjaotus

- **Ivo Murel:** `customers` – kliendiandmed
- **Helen Starodubtseva:** `products` – tooteandmed
- **Kertu Läänemägi:** `sales` – müügiandmed

Minu ülesanne on analüüsida tooteid, sealhulgas müümata ja populaarseid tooteid ning inventuuri.

*Meeskonnatöö tulemused ja ühise töö link lisatakse pärast grupitöö tegemist.*

## Kokkuvõte

Kolmandal nädalal õppisin ühendama SQL-i abil mitme tabeli andmeid ning kasutama päringute tulemusi äriliste küsimuste analüüsimiseks.

Sain praktilise kogemuse ostudeta klientide ja müümata toodete leidmisel ning müügitulu võrdlemisel linnade ja tootekategooriate kaupa.
