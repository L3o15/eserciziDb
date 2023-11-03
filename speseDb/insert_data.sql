INSERT INTO categorie (nome)
VALUES
    ('Alimentari'),
    ('Trasporti'),
    ('Intrattenimento'),
    ('Vestiti'),
    ('Elettronica'),
    ('Salute'),
    ('Viaggi'),
    ('Educazione'),
    ('Casa'),
    ('Sport'),
    ('Auto'),
    ('Lavoro'),
    ('Risparmi'),
    ('Regali'),
    ('Animali domestici'),
    ('Bellezza'),
    ('Libri'),
    ('Arte e cultura'),
    ('Famiglia'),
    ('Ristoranti'),
    ('Caffè'),
    ('Birrerie'),
    ('Cinema'),
    ('Hobby'),
    ('Musica'),
    ('Giochi'),
    ('Giardinaggio'),
    ('Tecnologia'),
    ('Compleanni'),
    ('Assicurazione'),
    ('Spese mediche'),
    ('Telefono'),
    ('Carburante'),
    ('Cura animali'),
    ('Abbonamenti'),
    ('Pulizia'),
    ('Utility'),
    ('Internet'),
    ('Affitto');

INSERT INTO tags (nome)
VALUES
    ('Divertimento'),
    ('Essenziale'),
    ('Trasporto'),
    ('Elettronica'),
    ('Salute'),
    ('Viaggi'),
    ('Educazione'),
    ('Casa'),
    ('Sport'),
    ('Auto'),
    ('Lavoro'),
    ('Risparmi'),
    ('Regali'),
    ('Animali domestici'),
    ('Bellezza'),
    ('Libri'),
    ('Arte e cultura'),
    ('Famiglia'),
    ('Ristoranti'),
    ('Caffè'),
    ('Birrerie'),
    ('Cinema'),
    ('Hobby'),
    ('Musica'),
    ('Giochi'),
    ('Giardinaggio'),
    ('Tecnologia'),
    ('Compleanni'),
    ('Assicurazione'),
    ('Spese mediche'),
    ('Telefono'),
    ('Carburante'),
    ('Cura animali'),
    ('Abbonamenti'),
    ('Pulizia'),
    ('Utility'),
    ('Internet'),
    ('Affitto');

INSERT INTO spese (data, valore, descrizione, categoria_id)
VALUES
    ('2023-10-22', 70.0, 'Cena fuori', 20),
    ('2023-10-23', 45.0, 'Spesa mensile', 1),
    ('2023-10-24', 55.0, 'Bolletta elettrica', 36),
    ('2023-10-25', 10.0, 'Pranzo veloce', 19),
    ('2023-10-26', 30.0, 'Acquisto libri', 17),
    ('2023-10-27', 25.0, 'Abbonamento mensile', 33),
    ('2023-10-28', 60.0, 'Abbigliamento', 4),
    ('2023-10-29', 15.0, 'Caffè pomeridiano', 21),
    ('2023-10-30', 40.0, 'Ricarica telefonica', 32),
    ('2023-10-31', 20.0, 'Spesa per animali domestici', 14),
    ('2023-11-01', 35.0, 'Pulizie domestiche', 36),
    ('2023-11-02', 50.0, 'Cena romantica', 20),
    ('2023-11-03', 22.0, 'Pranzo in ufficio', 12),
    ('2023-11-04', 18.0, 'Regalo di compleanno', 13),
    ('2023-11-05', 28.0, 'Abbonamento alla palestra', 10),
    ('2023-11-06', 75.0, 'Viaggio weekend', 7),
    ('2023-11-07', 80.0, 'Elettronica', 5),
    ('2023-11-08', 95.0, 'Spesa mensile', 1),
    ('2023-11-09', 42.0, 'Cinema', 23),
    ('2023-11-10', 55.0, 'Pranzo al ristorante', 20),
    ('2023-11-11', 48.0, 'Educazione', 8),
    ('2023-11-12', 17.0, 'Spesa per il giardino', 27),
    ('2023-11-13', 38.0, 'Cura animale domestico', 14),
    ('2023-11-14', 22.0, 'Birrerie', 22),
    ('2023-11-15', 40.0, 'Bolle
    tta internet', 34),
    ('2023-11-16', 28.0, 'Regali', 14),
    ('2023-11-17', 19.0, 'Assicurazione', 30),
    ('2023-11-18', 15.0, 'Pranzo al sacco', 1),
    ('2023-11-19', 90.0, 'Abbigliamento', 4),
    ('2023-11-20', 120.0, 'Risparmi', 12),
    ('2023-11-21', 65.0, 'Divertimento', 3),
    ('2023-11-22', 35.0, 'Ricarica telefonica', 32),
    ('2023-11-23', 22.0, 'Regalo di compleanno', 13),
    ('2023-11-24', 58.0, 'Viaggio', 7),
    ('2023-11-25', 43.0, 'Libri', 17),
    ('2023-11-26', 25.0, 'Abbonamento streaming', 9),
    ('2023-11-27', 62.0, 'Cena fuori', 20),
    ('2023-11-28', 45.0, 'Spesa mensile', 1),
    ('2023-11-29', 35.0, 'Bolletta elettrica', 36),
    ('2023-11-30', 15.0, 'Pranzo veloce', 19);

INSERT INTO tags_spese (tag_id, spesa_id)
VALUES
    (1, 1),   -- "Divertimento" associato a Cena fuori
    (2, 2),   -- "Essenziale" associato a Spesa mensile
    (3, 3),   -- "Trasporto" associato a Bolletta elettrica
    (1, 4),   -- "Divertimento" associato a Pranzo veloce
    (2, 5),   -- "Essenziale" associato a Acquisto libri
    (6, 6),   -- "Viaggi" associato a Abbonamento mensile
    (1, 7),   -- "Divertimento" associato a Abbigliamento
    (2, 8),   -- "Essenziale" associato a Caffè pomeridiano
    (4, 9),   -- "Elettronica" associato a Ricarica telefonica
    (1, 10),  -- "Divertimento" associato a Spesa per animali domestici
    (2, 11),  -- "Essenziale" associato a Pulizie domestiche
    (1, 12),  -- "Divertimento" associato a Cena romantica
    (2, 13),  -- "Essenziale" associato a Pranzo in ufficio
    (14, 14),  -- "Regali" associato a Regalo di compleanno
    (15, 15),  -- "Bellezza" associato a Abbonamento alla palestra
    (6, 16),  -- "Viaggi" associato a Viaggio weekend
    (4, 17),  -- "Elettronica" associato a Elettronica
    (2, 18),  -- "Essenziale" associato a Spesa mensile
    (1, 19),  -- "Divertimento" associato a Cinema
    (20, 20); -- "Caffè" associato a Pranzo al ristorante

