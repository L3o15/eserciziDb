SELECT
    riviste.id, nome
FROM
    riviste, articoli
WHERE
    riviste.id = articoli.riviste_id AND articoli.argomento = 'motociclismo';

SELECT
    articoli.id, titolo
FROM
    riviste, articoli
WHERE
    riviste.id = articoli.riviste_id AND articoli.argomento = 'Intelligenza Artificiale' AND riviste.nome = 'Focus';

SELECT
    riviste.nome, riviste.id
FROM
    riviste
WHERE
    riviste.editore = 'Einaudi' AND riviste.nome LIKE 'G%';

SELECT
    riviste.editore
FROM
    riviste JOIN articoli ON riviste.id = articoli.riviste_id AND articoli.argomento != 'Intelligenza Artificiale'
GROUP BY riviste.editore;

SELECT
    *
FROM
    (SELECT
        riviste.id, nome
    FROM
        riviste, articoli
    WHERE
        riviste.id = articoli.riviste_id AND articoli.argomento = 'motociclismo') AS riviste_moto,
    (SELECT
        riviste.id, nome
    FROM
        riviste, articoli
    WHERE
        riviste.id = articoli.riviste_id AND articoli.argomento = 'automobilismo') AS riviste_auto
WHERE
    riviste_moto.id = riviste_auto.id