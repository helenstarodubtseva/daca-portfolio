# Nädal 3 – Meeskonnatöö: SQL JOIN-id

## Meeskond

**Meeskonna nimi:** Toode

### Liikmed ja tööjaotus

| Liige | Vastutus |
|---|---|
| Ivo Murel | `customers` – kliendiandmed |
| Helen Starodubtseva | `products` ja `inventory` – tooted ja inventuur |
| Kertu Läänemägi | `sales` – müügiandmed |

## Töö eesmärk

UrbanStyle'i andmebaasi tabelite ühendamine SQL JOIN-päringutega, et analüüsida klientide ostukäitumist, toodete müüki ja laoseisu.

## Minu panus

Minu vastutus oli toodete ja inventuuri analüüs (Roll C).

Kasutasin SQL JOIN-päringuid, et leida müümata tooted, võrrelda toodete ja kategooriate müügitulu ning kontrollida laoseisu ja juurdetellimise vajadust.

## Meeskonnatöö materjalid

[Meeskonna Google Slidesi esitlus](https://docs.google.com/presentation/d/1vTKA181LxwKDlUWqxf3ZkGqUgayEBVz-5nYewer8u9o/edit)

[Meeskonnatöö SQL-päringud ja ekraanipildid – TOODE GitHub](https://github.com/Ivo-Murel/TOODE/tree/main/Week-3)

## Tulemused ja kokkuvõte

### Minu tulemused – Products + Inventory (Roll C)

- **Müümata tooteid:** 12
- **TOP 1 toode müügitulu järgi:** Õhuline sünteetiline sporditossud – 27 347,04 €
- **Suurima müügituluga kategooria:** jalanõud – 774 034,75 €
- **Väikseima müügituluga kategooria:** laste_riided – 305 844,45 €
- **Kõige rohkem müügikirjeid:** meeste_riided – 2266
- **Inventuur:** 1400 laokirjet
- **Juurdetellimist või kontrolli vajavad laokirjed:** 231 ehk 16,5%
- **Andmekvaliteedi probleem:** esines negatiivseid laoseise, näiteks −46 ühikut.

### Järeldused ja soovitused

Soovitan kontrollida 12 müümata toote nõudlust ja hindu ning jälgida jalanõude kategooria toodete saadavust.

Lisaks tuleb kontrollida 231 tähelepanu vajavat laokirjet, selgitada negatiivsete laoseisude põhjused ja planeerida vajalikud juurdetellimised.

## Kokkuvõte

Meeskonnatöös õppisin kasutama SQL JOIN-päringuid toodete, müügi ja inventuuri ühendamiseks.

Sain praktilise kogemuse müügitulu analüüsimisel, müümata toodete leidmisel ja laoseisu kontrollimisel ning koostasin tulemuste põhjal soovitused UrbanStyle'i juhtkonnale.

**Järeldus:** Soovitan kontrollida müümata toodete nõudlust ja hindu ning jälgida populaarsete jalanõude saadavust. Inventuuriandmed tuleb täiendada, et hinnata juurdetellimise vajadust.

**Meeskonnatöö SQL-päringud ja ekraanipildid:** [TOODE ühine GitHub](https://github.com/Ivo-Murel/TOODE/tree/main/Week-3)
