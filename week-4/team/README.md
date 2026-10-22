# Week 4 – Team Project

## Minu roll: Sales & Marketing

Minu ülesanne oli analüüsida UrbanStyle'i 2024. aasta
müügiandmeid SQL-i abil ning koostada tulemuste põhjal
järeldused ja soovitused ettevõtte juhtkonnale.

## Tehtud töö

### 1. Müügitulemused kuude lõikes
- Arvutasin müügikirjete arvu, müügitulu ja keskmise
  müügikirje väärtuse iga kuu kohta.
- Aasta müügitulu oli kokku **1 470 358,02 €**.
- Suurim müügitulu oli detsembris ja väikseim jaanuaris.

### 2. Tootekategooriate analüüs
- Võrdlesin viie tootekategooria müügitulemusi.
- Suurima müügitulu andsid meeste riided ja jalanõud.
- Need moodustasid kokku **52,3% aasta müügitulust**.

### 3. Müügitulu muutuste analüüs
- Võrdlesin kuude müügitulu `LAG()` funktsiooniga.
- Suurim kasv oli detsembris (**+54,3%**).
- Suurim langus oli septembris (**−24,6%**).

## Kasutatud SQL-i võtted

`JOIN`, `GROUP BY`, `HAVING`, `COUNT()`, `SUM()`,
`AVG()`, `CTE`, `LAG()`

## Järeldused ja soovitused

Soovitan uurida detsembri müügitulu kasvu ja septembri
languse põhjuseid, toetada suurema müügituluga
tootekategooriaid ning hinnata laste riiete
kategooria kasvuvõimalusi.

## Minu panus meeskonnatöösse

Koostasin ja käivitasin SQL-päringud Supabase'is,
dokumenteerisin tulemused GitHubis ning valmistasin
ette kolm esitlusslaidi koos äriliste järelduste
ja soovitustega.
