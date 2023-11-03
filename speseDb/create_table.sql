CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE spese (
    id SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    valore FLOAT NOT NULL,
    descrizione VARCHAR(255) NOT NULL,
    categoria_id INTEGER NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorie(id)
);

CREATE TABLE tags (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE tags_spese (
    id SERIAL PRIMARY KEY,
    tag_id INTEGER NOT NULL,
    spesa_id INTEGER NOT NULL,
    FOREIGN KEY (tag_id) REFERENCES tags(id),
    FOREIGN KEY (spesa_id) REFERENCES spese(id)
);