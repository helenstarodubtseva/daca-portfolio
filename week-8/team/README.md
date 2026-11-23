# Nädal 8 – Grupitöö: Python API-d ja automatiseerimine

## Meeskond TOODE

**Liikmed:** Ivo, Kertu ja Helen

Meie grupitöö eesmärk oli luua Pythonis automatiseeritud töövoog, mis pärib Supabase'ist müügiandmeid, töötleb neid, koostab graafikud ja salvestab tulemused failidesse.

## Rollijaotus

- **Ivo – rollid A ja B:** andmete pärimine ja töötlemine (`data_fetcher.py`, `transform.py`).
- **Helen – roll C:** andmete visualiseerimine ja salvestamine (`visualize_export.py`).
- **Kertu – roll D:** töövoo automatiseerimine (`pipeline.py`).

## Minu panus – roll C

Minu ülesanne oli kirjutada Pythoni kood, mis loob töödeldud müügiandmete põhjal graafikud ja salvestab tulemused failidesse.

Kirjutasin kolm funktsiooni:

1. `create_weekly_chart()` – loob Plotly abil nädalase müügitulu joondiagrammi.
2. `create_kpi_summary()` – kuvab kogumüügitulu, unikaalsete klientide arvu ja keskmise tellimuse väärtuse.
3. `export_results()` – salvestab andmed CSV-failina ning graafikud HTML-failidena `output`-kausta. Failinimedele lisatakse kuupäev.

Testisin funktsioone näidisandmetega ja kontrollisin, et failid tekivad ning graafikud avanevad brauseris.

## Meeskonnatöö tulemus

Meeskonna töö käigus valmisid andmete pärimise, töötlemise, visualiseerimise ja automatiseerimise Pythoni moodulid.

Minu visualiseerimismoodul on mõeldud ühendamiseks meeskonna ühise pipeline'iga.

## AI kasutamine

Kasutasin ChatGPT abi koodi kirjutamisel, Plotly funktsioonidest arusaamisel ja vigade parandamisel. Katsetasin lahendusi ise ning kontrollisin, kas kood töötab ja tulemused salvestuvad õigesti.

## Lingid

- [Meeskonna GitHubi repositoorium](https://github.com/Ivo-Murel/TOODE)
- [Meeskonnatöö esitlus](https://docs.google.com/presentation/d/1uZ4M79CZbJbHnxTO83OWkw0dK4sQwf2zO5v7F9jSuVU/edit)
