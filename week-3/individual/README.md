# Nädal 3 – SQL JOIN-id ja andmete puhastamine

## Mida ma õppisin

Kolmandal nädalal õppisin UrbanStyle'i andmebaasis klientide andmeid puhastama ja erinevate SQL JOIN-päringute abil tabelite vahel seoseid looma. Harjutasin müügiandmete analüüsimist ning tulemuste kasutamist kampaania planeerimisel.

## SQL-teemad

- **Andmete puhastamine:** linnanimede kontroll ja ühtlustamine (`TRIM`, `INITCAP`, `UPDATE`).
- **INNER JOIN:** müükide ühendamine klientide ja toodetega.
- **LEFT JOIN:** ostudeta klientide ja müümata toodete leidmine.
- **Mitme tabeli JOIN:** klientide, toodete ja müükide ühine analüüs.
- **GROUP BY ja SUM:** müügitulu arvutamine linnade ja tootekategooriate kaupa.
- **ORDER BY ja LIMIT:** olulisemate tulemuste järjestamine.

## Praktilised ülesanded

1. Kontrollisin ja ühtlustasin `customers` tabeli linnanimed.
2. Koostasin INNER JOIN päringud klientide ja toodete müügiandmete uurimiseks.
3. Kasutasin LEFT JOIN päringuid ostudeta klientide ja müümata toodete leidmiseks.
4. Analüüsisin kolme tabeli ühendamisel müügitulu linnade ja tootekategooriate järgi.
5. Koostasin Anna kampaaniaplaani jaoks kolm SQL-päringut.

## Peamised tulemused

| Näitaja | Tulemus |
|---|---:|
| Kliente kokku | 3 150 |
| Ostudeta kliente | 599 |
| Müümata tooteid | 12 |
| Suurima müügituluga linn ja kategooria | Tallinn + jalanõud |
| Selle kombinatsiooni müügitulu | 275 940,70 € |

## SQL-failid

- [01_customers_cleaning.sql](01_customers_cleaning.sql) – klientide linnanimede kontroll ja puhastamine.
- [02_sql_joins.sql](02_sql_joins.sql) – JOIN-harjutused, müügianalüüs ja Anna kampaaniaplaani päringud.

## Kokkuvõte

Õppisin ühendama andmeid mitmest tabelist, leidma puuduvaid seoseid ning kasutama SQL-päringute tulemusi praktiliste äriotsuste toetamiseks.
