CREATE TABLE velisti (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    esperienza VARCHAR(255) NOT NULL,
    data_nascita DATE NOT NULL
);

CREATE TABLE barche (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    colore VARCHAR(50) NOT NULL
);

CREATE TABLE prenotazioni_barche (
    id SERIAL PRIMARY KEY,
    barca_id INT NOT NULL,
    velista_id INT NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (barca_id) REFERENCES barche(id),
    FOREIGN KEY (velista_id) REFERENCES velisti(id)
);