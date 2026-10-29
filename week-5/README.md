
# Nädal 5: Andmete visualiseerimine Power BI-s

## Mida ma õppisin

Viiendal nädalal õppisin kasutama Power BI Desktopi andmete visualiseerimiseks ja interaktiivsete aruannete koostamiseks.

Ühendasin Power BI Supabase PostgreSQL andmebaasiga ning kasutasin UrbanStyle'i andmeid müügitrendide, toodete müügitulu ja müügi asukohtade analüüsimiseks.

Õppisin looma erinevaid diagramme, kasutama filtreid ning seadistama visualiseeringute välimust.

## Power BI teemad

- Power BI Desktopi seadistamine
- PostgreSQL andmebaasiga ühenduse loomine
- Andmetabelite importimine
- Joondiagrammi koostamine
- Tulpdiagrammi koostamine
- Sektordiagrammi koostamine
- DAX-i abil arvutatud veeru loomine
- Interaktiivsete filtrite ehk slicer'ite kasutamine
- Diagrammide kujundamine ja ristfiltreerimise kontrollimine

## Minu individuaalne töö

Koostasin Power BI Desktopis UrbanStyle'i müügiandmete põhjal interaktiivse aruande.

Importisin Supabase andmebaasist tabelid `sales`, `customers`, `products` ja `inventory`.

### Loodud visualiseeringud

1. **UrbanStyle müügitrendid 2023–2025** – joondiagramm müügikäibe muutumisest ajas.
2. **Top 10 toodet müügitulu järgi** – tulpdiagramm suurima müügituluga toodetest.
3. **Müügi jaotus asukohtade kaupa** – sektordiagramm müügi osakaaludest Tallinnas, Tartus, Pärnus ja veebipoes.

Lisasin kaks interaktiivset filtrit:

- Kuupäeva filter
- Müügikoha filter

Kontrollisin, et filtrid mõjutavad kõiki kolme diagrammi.

### Minu tähelepanekud

1. Tallinn moodustas visualiseeritud müügikäibest suurima osa.
2. Veebimüük oli samuti oluline müügikanal.
3. Top 10 toodete diagramm võimaldab kiiresti tuvastada suurima müügituluga tooted.
4. Interaktiivsed filtrid muudavad aruande kasutamise paindlikumaks.

Individuaalse töö kirjeldus ja failid asuvad kaustas [individual](individual/).

## Kokkuvõte

Viiendal nädalal õppisin ühendama Power BI Desktopi PostgreSQL andmebaasiga ning koostama müügiandmete põhjal interaktiivset aruannet.

Kõige olulisem õppetund oli see, kuidas muuta andmebaasis olevad andmed visuaalselt arusaadavaks ning võimaldada kasutajal neid filtrite abil uurida.

## Kasutatud töövahendid

- Power BI Desktop
- Supabase
- PostgreSQL
- DAX
- GitHub
