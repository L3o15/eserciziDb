SELECT
    velisti.nome
FROM
    velisti, prenotazioni_barche, barche
WHERE
    velisti.id = prenotazioni_barche.velista_id
    AND barche.id = prenotazioni_barche.barca_id
    AND (barche.colore = 'rosso' OR barche.colore = 'verde');

SELECT
    barche.nome
FROM
    barche, prenotazioni_barche
WHERE
    barche.id = prenotazioni_barche.barca_id AND prenotazioni_barche.data > '2023-10-31' AND prenotazioni_barche.data <= '2023-11-30';

SELECT
    velisti.nome, data_nascita, esperienza
FROM
    velisti
WHERE
     age(velisti.data_nascita) < '18 years' AND velisti.esperienza = 'base';

SELECT
    velisti.nome
FROM
    barche, prenotazioni_barche, velisti
WHERE
    barche.id = prenotazioni_barche.barca_id
    AND prenotazioni_barche.data > '2023-03-31' AND prenotazioni_barche.data <= '2023-04-30'
    AND velisti.id = prenotazioni_barche.velista_id AND barche.nome = 'gialla';

SELECT
    barche.nome
FROM
    barche, prenotazioni_barche, velisti
WHERE
     velisti.esperienza = 'senior' AND velisti.id = prenotazioni_barche.velista_id AND barche.id = prenotazioni_barche.barca_id;

SELECT velisti.id, velisti.nome
FROM velisti
WHERE (velisti.id, velisti.nome) NOT IN
      (SELECT
            velisti.id, velisti.nome
        FROM
            barche, prenotazioni_barche, velisti
        WHERE
            barche.colore = 'rossa' AND velisti.id = prenotazioni_barche.velista_id AND barche.id = prenotazioni_barche.barca_id)
GROUP BY velisti.id, velisti.nome;