CREATE TABLE spettacoli (
    id SERIAL PRIMARY KEY,
    titolo VARCHAR(255) NOT NULL,
    compagnia VARCHAR(255) NOT NULL,
    durata FLOAT NOT NULL
);

CREATE TABLE cartelloni (
    id SERIAL PRIMARY KEY,
    spettacoli_id SERIAL,
    data_ora timestamp NOT NULL,
    nome_teatro VARCHAR(255) NOT NULL,
    FOREIGN KEY (spettacoli_id) REFERENCES spettacoli(id)
);