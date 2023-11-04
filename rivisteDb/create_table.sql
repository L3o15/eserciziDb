CREATE TABLE riviste (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    editore VARCHAR(255) NOT NULL
);

CREATE TABLE articoli (
    id SERIAL PRIMARY KEY,
    riviste_id SERIAL,
    titolo VARCHAR(255) NOT NULL,
    argomento VARCHAR(255) NOT NULL,
    FOREIGN KEY (riviste_id) REFERENCES riviste(id)
);