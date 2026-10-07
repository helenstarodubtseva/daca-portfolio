# Week 2 – SQL andmete puhastamisraport

## Eesmärk

Kontrollida UrbanStyle andmebaasi andmekvaliteeti ning tuvastada duplikaadid, puuduvad väärtused ja muud puhastamist vajavad andmed.

## Enne ja pärast puhastamist

| Kontroll | Enne | Pärast / tulemus |
|---|---:|---:|
| `sales_test` ridu | 15 234 | 10 118 |
| Üleliigseid müügikirjeid | 5 116 | 0 |
| `sales_test` NULL `customer_id` | 988 | 0 |
| `customers` puuduvaid e-maile | 380 | Tuvastatud |
| Korduvaid mitte-NULL e-posti aadresse | 128 | Tuvastatud |
| `products` `product_id` duplikaate | 0 | 0 |
| Probleemseid `retail_price` väärtusi | 0 | 0 |

## Puhastamisel kasutatud meetodid

- Duplikaatide tuvastamine `GROUP BY` ja `HAVING` abil.
- `sales_test` testkoopiast jäeti iga `invoice_id` kohta alles üks kirje.
- Puuduvate väärtuste kontrollimiseks kasutati `IS NULL`.
- `COALESCE` abil asendati `sales_test` puuduvad `customer_id` väärtused väärtusega `0`.
- `CASE WHEN` abil kontrolliti ja kategoriseeriti väärtusi.
- Linnanimede kirjapildi kontrollimiseks kasutati `TRIM` ja `INITCAP`.
- Toodete hindade puhul kontrolliti NULL-, 0- ja negatiivseid väärtusi.

## Peamised järeldused

`sales` andmetes oli oluline duplikaatide probleem. Testkoopias vähendas duplikaatide eemaldamine ridade arvu 15 234-lt 10 118-le.

`customers` tabelis vajavad tähelepanu puuduvad ja korduvad e-posti aadressid.

`products` tabelis ei leitud `product_id` duplikaate ega probleemseid `retail_price` väärtusi.

Puhastamist harjutati testkoopiatel, et originaalandmeid mitte kogemata muuta.
