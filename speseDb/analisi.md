# SpeseDB
### Nella realtà proposta viene richiesto di realizzare un databse per la gestione delle spese sostenute. Per realizzarlo sono necessarie 3 entità: 
- spesa
- tag
- categoria
#### La prima entità avrà 4 parametri:
- id (PK)
- data
- valore
- descrizione 

##### Id sarà la primaty key e sarà un intero auto increment, data sara ti tipo DATE, valore conterrà l'importo della spesa, descrizione conterrà la desrizone della spesa.

#### La seconda entità avrà 2 parametri:
- id (PK)
- nome


##### Id sarà la primaty key e sarà un intero auto increment, nome sara un VARCHAR e conterrà il nome del tag.

#### La terza entità avrà 2 parametri:
- id (PK)
- nome

##### Id sarà la primaty key e sarà un intero auto increment, nome sara un VARCHAR e conterrà il nome della categoria.

###### Ogni spesa può avere una sola categoria ma una categoria può essere contenuta in N spese. Ogni spesa può avere più tag e un tag può essere contenuto in più spese