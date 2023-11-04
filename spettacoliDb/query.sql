SELECT
    spettacoli.compagnia
FROM
    spettacoli, cartelloni
WHERE
    (spettacoli.compagnia) NOT IN
    (SELECT
        spettacoli.compagnia
    FROM
        spettacoli, cartelloni
    WHERE
        spettacoli.id = cartelloni.spettacoli_id AND TO_CHAR(data_ora, 'YYYY-MM-DD') = '2023-11-03')
    AND spettacoli.id = cartelloni.spettacoli_id AND TO_CHAR(data_ora, 'YYYY-MM-DD') = '2023-11-02';

SELECT
    spettacoli.titolo
FROM
    spettacoli, cartelloni
WHERE
    cartelloni.spettacoli_id = spettacoli.id AND spettacoli.compagnia = 'Bolle and friends';

SELECT
    spettacoli.titolo
FROM
    spettacoli, cartelloni
WHERE
    cartelloni.spettacoli_id = spettacoli.id AND cartelloni.nome_teatro = 'Grande' AND spettacoli.durata > 120;

SELECT
    spettacoli.compagnia, TO_CHAR(data_ora, 'YYYY-MM-DD')
FROM
    spettacoli, cartelloni
WHERE
    cartelloni.spettacoli_id = spettacoli.id  AND (TO_CHAR(data_ora, 'YYYY-MM-DD') > '2023-09-30') AND (TO_CHAR(data_ora, 'YYYY-MM-DD') <= '2023-10-31');

SELECT
    *
FROM
    spettacoli, cartelloni
WHERE
    cartelloni.spettacoli_id = spettacoli.id  AND (TO_CHAR(data_ora, 'YYYY-MM-DD') > '2023-11-30')
    AND (TO_CHAR(data_ora, 'YYYY-MM-DD') <= '2023-12-31') AND cartelloni.nome_teatro = 'Arcimboldi';

SELECT
    cartelloni.nome_teatro
FROM
    spettacoli, cartelloni
WHERE
    cartelloni.spettacoli_id = spettacoli.id AND spettacoli.titolo = 'Il Lago dei Cigni'
GROUP BY cartelloni.nome_teatro;