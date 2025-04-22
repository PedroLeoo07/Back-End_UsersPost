CREATE DATABASE sistema;

\c sistema;

ALTER TABLE users ADD COLUMN photo TEXT;


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
    INSERT INTO users (name, email, password, age, sexo, telefone) VALUES
        ('Lionel Messi', 'messi@gmail.com', 'Messi1234', 36, 'M', '(11) 99999-9999'),
        ('Neymar Jr', 'neymar@gmail.com', 'Neymar1234', 31, 'M', '(11) 99999-9999'),
        ('Kylian Mbappé', 'mbappe@gmail.com', 'Mbappe1234', 24, 'M', '(11) 99999-9999'),
        ('Robert Lewandowski', 'lewandowski@gmail.com', 'Lewandowski1234', 35, 'M', '(11) 99999-9999'),
        ('Kevin De Bruyne', 'debruyne@gmail.com', 'DeBruyne1234', 32, 'M', '(11) 99999-9999'),
        ('Mohamed Salah', 'salah@gmail.com', 'Salah1234', 31, 'M', '(11) 99999-9999'),
        ('Karim Benzema', 'benzema@gmail.com', 'Benzema1234', 35, 'M', '(11) 99999-9999'),
        ('Virgil van Dijk', 'vandijk@gmail.com', 'VanDijk1234', 32, 'M', '(11) 99999-9999'),
        ('Sadio Mané', 'mane@gmail.com', 'Mane1234', 31, 'M', '(11) 99999-9999'),
        ('Erling Haaland', 'haaland@gmail.com', 'Haaland1234', 23, 'M', '(11) 99999-9999'),
        ('Harry Kane', 'kane@gmail.com', 'Kane1234', 30, 'M', '(11) 99999-9999'),
        ('Luka Modric', 'modric@gmail.com', 'Modric1234', 38, 'M', '(11) 99999-9999'),
        ('Eden Hazard', 'hazard@gmail.com', 'Hazard1234', 32, 'M', '(11) 99999-9999'),
        ('Paul Pogba', 'pogba@gmail.com', 'Pogba1234', 30, 'M', '(11) 99999-9999'),
        ('Sergio Ramos', 'ramos@gmail.com', 'Ramos1234', 37, 'M', '(11) 99999-9999'),
        ('Toni Kroos', 'kroos@gmail.com', 'Kroos1234', 33, 'M', '(11) 99999-9999'),
        ('Gerard Piqué', 'pique@gmail.com', 'Pique1234', 36, 'M', '(11) 99999-9999'),
        ('Andrés Iniesta', 'iniesta@gmail.com', 'Iniesta1234', 39, 'M', '(11) 99999-9999'),
        ('Xavi Hernandez', 'xavi@gmail.com', 'Xavi1234', 43, 'M', '(11) 99999-9999'),
        ('Zlatan Ibrahimovic', 'ibrahimovic@gmail.com', 'Ibra1234', 42, 'M', '(11) 99999-9999'),
        ('Gareth Bale', 'bale@gmail.com', 'Bale1234', 34, 'M', '(11) 99999-9999'),
        ('Luis Suárez', 'suarez@gmail.com', 'Suarez1234', 36, 'M', '(11) 99999-9999'),
        ('Antoine Griezmann', 'griezmann@gmail.com', 'Griezmann1234', 32, 'M', '(11) 99999-9999'),
        ('Philippe Coutinho', 'coutinho@gmail.com', 'Coutinho1234', 31, 'M', '(11) 99999-9999'),
        ('Marcelo Vieira', 'marcelo@gmail.com', 'Marcelo1234', 35, 'M', '(11) 99999-9999'),
        ('Thiago Silva', 'thiagosilva@gmail.com', 'Thiago1234', 39, 'M', '(11) 99999-9999'),
        ('Alisson Becker', 'alisson@gmail.com', 'Alisson1234', 31, 'M', '(11) 99999-9999'),
        ('Manuel Neuer', 'neuer@gmail.com', 'Neuer1234', 37, 'M', '(11) 99999-9999'),
        ('Jan Oblak', 'oblak@gmail.com', 'Oblak1234', 30, 'M', '(11) 99999-9999'),
        ('Ederson Moraes', 'ederson@gmail.com', 'Ederson1234', 30, 'M', '(11) 99999-9999'),
        ('Keylor Navas', 'navas@gmail.com', 'Navas1234', 36, 'M', '(11) 99999-9999'),
        ('Hugo Lloris', 'lloris@gmail.com', 'Lloris1234', 36, 'M', '(11) 99999-9999'),
        ('David de Gea', 'degea@gmail.com', 'DeGea1234', 32, 'M', '(11) 99999-9999'),
        ('Romelu Lukaku', 'lukaku@gmail.com', 'Lukaku1234', 30, 'M', '(11) 99999-9999'),
        ('Raheem Sterling', 'sterling@gmail.com', 'Sterling1234', 28, 'M', '(11) 99999-9999'),
        ('Jadon Sancho', 'sancho@gmail.com', 'Sancho1234', 23, 'M', '(11) 99999-9999'),
        ('Marcus Rashford', 'rashford@gmail.com', 'Rashford1234', 25, 'M', '(11) 99999-9999'),
        ('Trent Alexander-Arnold', 'taa@gmail.com', 'TAA1234', 25, 'M', '(11) 99999-9999'),
        ('Andrew Robertson', 'robertson@gmail.com', 'Robertson1234', 29, 'M', '(11) 99999-9999'),
        ('João Cancelo', 'cancelo@gmail.com', 'Cancelo1234', 29, 'M', '(11) 99999-9999'),
        ('Achraf Hakimi', 'hakimi@gmail.com', 'Hakimi1234', 24, 'M', '(11) 99999-9999'),
        ('Joshua Kimmich', 'kimmich@gmail.com', 'Kimmich1234', 28, 'M', '(11) 99999-9999'),
        ('Leon Goretzka', 'goretzka@gmail.com', 'Goretzka1234', 28, 'M', '(11) 99999-9999'),
        ('Pedri Gonzalez', 'pedri@gmail.com', 'Pedri1234', 20, 'M', '(11) 99999-9999'),
        ('Gavi', 'gavi@gmail.com', 'Gavi1234', 19, 'M', '(11) 99999-9999'),
        ('Jude Bellingham', 'bellingham@gmail.com', 'Bellingham1234', 20, 'M', '(11) 99999-9999'),
        ('Vinícius Jr', 'vinicius@gmail.com', 'Vinicius1234', 23, 'M', '(11) 99999-9999'),
        ('Rodrygo Goes', 'rodrygo@gmail.com', 'Rodrygo1234', 22, 'M', '(11) 99999-9999');


INSERT INTO posts ( name, descricao, user_id) VALUES
    ('Corinthians', '31 titulos paulista' ,1),
    ('Corinthians', 'Corinthians campeão mundial 2023' ,2),
    ('Manicure', 'dicas de manicure' ,3),
    ('Leitura', 'Livros Cristãos para ler' ,4),
    ('Moto', 'top 10 motos da geração 2010' ,5),
    ('Escapamento', 'Escapamento no i30' ,6);
