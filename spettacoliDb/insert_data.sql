INSERT INTO spettacoli (titolo, compagnia, durata)
VALUES
  ('Amleto', 'Compagnia Shakespeare', 150.0),
  ('Il Lago dei Cigni', 'Bolle and friends', 120.0),
  ('La Bohème', 'Compagnia Lirica', 180.0),
  ('La Traviata', 'Compagnia delle Indie', 140.0),
  ('Don Giovanni', 'Compagnia Mozart', 160.0),
  ('Il Barbiere di Siviglia', 'Compagnia Opera', 130.0),
  ('Cenerentola', 'Compagnia Teatro', 135.0),
  ('Romeo e Giulietta', 'Compagnia Balletto', 165.0),
  ('Madama Butterfly', 'Compagnia Opera', 155.0),
  ('La Bottega del Caffè', 'Compagnia Goldoni', 170.0);

INSERT INTO cartelloni (spettacoli_id, data_ora, nome_teatro)
VALUES
  (1, '2023-11-02 19:00:00', 'Grande'),
  (2, '2023-11-02 20:30:00', 'Arcimboldi'),
  (3, '2023-12-05 18:30:00', 'Grande'),
  (4, '2023-12-05 20:00:00', 'Arcimboldi'),
  (5, '2023-10-15 19:00:00', 'Grande'),
  (6, '2023-10-15 21:30:00', 'Arcimboldi'),
  (7, '2023-12-10 19:30:00', 'Grande'),
  (8, '2023-12-10 20:45:00', 'Arcimboldi'),
  (9, '2023-10-25 18:00:00', 'Grande'),
  (10, '2023-10-25 19:45:00', 'Arcimboldi'),
  (1, '2023-11-03 20:00:00', 'Grande'),
  (2, '2023-11-03 21:15:00', 'Arcimboldi'),
  (3, '2023-12-15 18:45:00', 'Grande'),
  (4, '2023-12-15 20:30:00', 'Arcimboldi'),
  (5, '2023-10-03 19:30:00', 'Grande'),
  (6, '2023-10-03 21:00:00', 'Arcimboldi'),
  (7, '2023-12-20 19:00:00', 'Grande'),
  (8, '2023-12-20 20:15:00', 'Arcimboldi'),
  (9, '2023-11-05 20:30:00', 'Grande'),
  (10, '2023-11-05 21:45:00', 'Arcimboldi');
