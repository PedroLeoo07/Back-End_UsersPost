CREATE DATABASE sistema;

\c sistema;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);



CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);

INSERT INTO users (name, email, password, age, sexo, telefone) VALUES
    ('Leonardo Oliveira', 'leonardo@gmail.com', 'Leo1234', 17, 'M', '(11) 99999-9999'),
    ('Sofia Cintra', 'sofia@gmail.com', 'Sofia1234', 14, 'F', '(11) 99999-9999'),
    ('Viviane Camila', 'viviane@gmail.com', 'Viviane1234', 33, 'F', '(11) 99999-9999'),
    ('Camila Cintra', 'camila@gmail.com', 'Camila1234', 36, 'F', '(11) 99999-9999'),
    ('Jose Alves', 'jose@gmail.com', 'Jose1234', 40, 'M', '(11) 99999-9999'),
    ('Vitor Siilverio', 'vitor@gmail.com', 'Vitor1234', 41, 'M', '(11) 99999-9999'),
    ('Cristiano Ronaldo', 'cristiano@gmail.com', 'Cristiano1234', 40, 'M', '(11) 99999-9999');


INSERT INTO posts ( name, descricao, user_id) VALUES
    ('Corinthians', '31 titulos paulista' ,1),
    ('Corinthians', 'Corinthians campeão mundial 2023' ,2),
    ('Manicure', 'dicas de manicure' ,3),
    ('Leitura', 'Livros Cristãos para ler' ,4),
    ('Moto', 'top 10 motos da geração 2010' ,5),
    ('Escapamento', 'Escapamento no i30' ,6);
