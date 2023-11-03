SELECT
    *
FROM
    spese;

SELECT
    nome
FROM
    categorie;

SELECT
    descrizione
FROM
    spese;

SELECT
    nome
FROM
    tags;

SELECT
    valore, data
FROM
    spese;

SELECT
    id
FROM
    spese;

SELECT
    *
FROM
    categorie;

SELECT
    data
FROM
    spese;

SELECT
    *
FROM
    spese
WHERE
    valore >= 100;

SELECT
    *
FROM
    spese
WHERE
    data = '2023-10-15';

SELECT
    *
FROM
    spese, categorie
WHERE
    spese.categoria_id = categorie.id AND categorie.nome = 'Alimentari';

SELECT
    *
FROM
    spese
WHERE
    data < '2023-1-1';

SELECT
    *
FROM
    spese
WHERE
    descrizione LIKE '%ristorante%';

SELECT
    *
FROM
    spese, tags_spese, tags
WHERE
    spese.id = tags_spese.spesa_id AND tags_spese.tag_id = tags.id AND tags.nome = 'Viaggio';

-- SELECT
    -- *
-- FROM
    -- spese
-- WHERE
    -- spese.utente_id = '';

SELECT
    *
FROM
    spese, categorie
WHERE
    spese.categoria_id = categorie.id AND categorie.nome = 'Intrattenimento';

SELECT
    *
FROM
    spese, categorie, tags_spese, tags
WHERE
    spese.categoria_id = categorie.id AND categorie.nome != 'Vacanze' AND spese.id = tags_spese.spesa_id AND tags_spese.tag_id = tags.id AND tags.nome = 'Viaggio';

SELECT
    *
FROM
    spese, categorie
WHERE
    spese.categoria_id = categorie.id AND categorie.nome = 'Alimentari' AND spese.valore > 50 AND spese.data > '2023-1-1';

SELECT
    *
    FROM
        (SELECT
                *
            FROM
                spese, tags_spese, tags
            WHERE
                spese.id = tags_spese.spesa_id AND tags_spese.tag_id = tags.id) table1,
        (SELECT
                *
            FROM
                spese, tags_spese, tags
            WHERE
                spese.id = tags_spese.spesa_id AND tags_spese.tag_id = tags.id) table2
    WHERE table2.valore != table1.valore AND table1.nome = table2.nome;

SELECT
    *
FROM
    spese
WHERE
    valore > (SELECT AVG(valore) FROM spese);

SELECT
    *
FROM
    (SELECT
        categorie.nome, categorie.id ,count(spese.categoria_id) AS numero_spese
    FROM
        spese, categorie
    WHERE categorie.id = spese.categoria_id
    GROUP BY spese.categoria_id, categorie.nome, categorie.id
    HAVING COUNT(spese.categoria_id) > 10
    ORDER BY numero_spese DESC) AS categorie_10, spese
WHERE
    spese.categoria_id = categorie_10.id;

SELECT
    *
FROM
    (spese LEFT JOIN tags_spese ON spese.id = tags_spese.spesa_id) AS join_table
WHERE
    join_table.tag_id IS NULL;
