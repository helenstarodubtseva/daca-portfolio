# Nädal 4: SQL agregatsioon ja andmete analüüs

## Mida ma õppisin

Neljandal nädalal õppisin UrbanStyle'i andmebaasis SQL-päringutega andmeid grupeerima, filtreerima ja kokku võtma.

Harjutasin `GROUP BY`, `HAVING`, agregaatfunktsioone, CTE-sid ning aknafunktsioone `LAG()` ja `ROW_NUMBER()`.

Õppisin, kuidas SQL-i abil analüüsida müügikäivet, kliente ja tooteid ning teha tulemuste põhjal ärilisi järeldusi.

## SQL-teemad

- Andmete grupeerimine (`GROUP BY`)
- Agregaatfunktsioonid (`COUNT`, `SUM`, `AVG`)
- Ridade ja gruppide filtreerimine (`WHERE`, `HAVING`)
- Keerukamate päringute koostamine (`WITH`, CTE)
- Igakuise müügitrendi võrdlemine (`LAG`)
- Toodete järjestamine kategooriates (`ROW_NUMBER`, `PARTITION BY`)
- Andmekvaliteedi kontrollimine (`IS NULL`)

## Minu individuaalne töö

Koostasin Supabase SQL Editoris SQL-harjutused **1A–3C** ning CEO raporti koos kahe lisaülesandega.

Analüüsisin UrbanStyle'i müüki kuude ja linnade kaupa, toodete müüdud koguseid ning klientide ostukäitumist.

Kõik päringud ja nende selgitused salvestasin Supabase SQL Editoris nimega `W4_SQL_harjutused`.

### Peamised tulemused

| **Näitaja** | **Tulemus** |
|---|---|
| Suurima kogukäibega linn | Tallinn |
| Tallinna kogukäive CEO raportis | 571 649,39 € |
| Tartu kogukäive | 292 500,31 € |
| Pärnu kogukäive | 226 008,72 € |
| TOP 3 linna osakaal analüüsitud linnade käibest | 72,35% |
| VIP-kliente | 20 |
| Aktiivseid kliente | 917 |
| Tavakliente | 1615 |
| Müügiridu puuduva `customer_id` väärtusega | 988 |
| TOP 3 toodet viies kategoorias | 15 tulemust |

### Minu tähelepanekud

1. Tallinn oli analüüsitud linnadest suurima müügikäibega.
2. Klientide segmenteerimine võimaldas eristada VIP-, aktiivseid ja tavakliente.
3. Andmete kontrollimisel selgus, et 988 müügireal puudus kliendi ID.
4. 2026. aasta müügiandmed võivad olla puudulikud, mistõttu tuleb kuude võrdlemisel olla ettevaatlik.
5. SQL-päringute tulemusi tuleb tõlgendada koos andmete kvaliteedi ja täielikkuse kontrolliga.

Individuaalse töö kirjeldus ja failid asuvad kaustas [individual](./individual/).

## Kokkuvõte

Neljandal nädalal õppisin kasutama SQL-i agregatsioonifunktsioone, CTE-sid ja aknafunktsioone, et koostada müügi- ja kliendianalüüse.

CEO raporti koostamisel harjutasin äriküsimustele vastamist SQL-päringute abil.

Kõige olulisem õppetund oli see, et usaldusväärsete äriliste järelduste tegemiseks tuleb lisaks arvutustele kontrollida ka andmete kvaliteeti.

## Kasutatud töövahendid

- Supabase SQL Editor
- PostgreSQL
- GitHub
