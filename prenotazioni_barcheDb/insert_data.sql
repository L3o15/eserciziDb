INSERT INTO velisti (nome, esperienza, data_nascita)
VALUES
    ('Mario Rossi', 'base', '1998-05-12'),
    ('Laura Bianchi', 'senior', '1990-02-21'),
    ('Luigi Verdi', 'intermedia', '2000-09-15'),
    ('Giovanni Neri', 'senior', '1985-07-30');

INSERT INTO barche (nome, colore)
VALUES
    ('Barcha Rossa', 'rossa'),
    ('Barcha Verde', 'verde'),
    ('Barcha Gialla', 'gialla'),
    ('Barcha Blu', 'blu');

INSERT INTO prenotazioni_barche (barca_id, velista_id, data)
VALUES
    (1, 1, '2023-11-05'),
    (2, 2, '2023-11-10'),
    (3, 3, '2023-04-15'),
    (4, 4, '2023-04-20'),
    (2, 1, '2023-11-15'),
    (1, 2, '2023-11-20');
