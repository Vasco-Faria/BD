USE p5g2;
GO

/*CREATE SCHEMA Youtube;
GO

CREATE TABLE Youtube.Estados (
    state_id TINYINT PRIMARY KEY,
    state_name VARCHAR(20)
);

CREATE TABLE Youtube.Utilizador (
    Nome_Utilizador varchar(20) not null,
    Email varchar(20) not null,
    Senha varchar(15) not null,
    Nome varchar(20) not null,
    Data_de_Nascimento date not null,
    PRIMARY KEY(Nome_Utilizador)
);
GO

CREATE TABLE Youtube.Premium (
    Data_de_Encerramento date not null,
    Valor_a_pagar FLOAT,
    Nome_Utilizador varchar(20) not null,
    PRIMARY KEY(Nome_Utilizador),
    FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador(Nome_Utilizador)
);
GO

CREATE TABLE Youtube.Canal (
    Nome_Utilizador varchar(20) not null,
    Num_Subscritores int,
    Num_conteudo int,
    Descri��o_Canal varchar(600),
    Subscreve int,
    PRIMARY KEY(Nome_Utilizador),
    FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador(Nome_Utilizador)
);
GO

CREATE TABLE Youtube.Conte�do (
    Titulo varchar(40) not null,
    Codigo int,
    Autor varchar(20) not null,
    Tipo varchar(20) not null,
    Estado varchar(20) not null,
    Dura��o time not null,
    Num_Likes int,
    Num_Visualiza��es int,
    Data_Publica��o date not null,
    UNIQUE(Codigo),
    PRIMARY KEY(Codigo),
    FOREIGN KEY (Autor) REFERENCES Youtube.Canal(Nome_Utilizador)
);
GO

CREATE TABLE Youtube.Descri��o (
    Codigo int,
    Texto varchar(500),
    Num_Likes int,
    Num_Visualiza��es int,
    Data_Publica��o date ,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (Codigo) REFERENCES Youtube.Conte�do(Codigo),
);
GO

CREATE TABLE Youtube.Playlist (
    Titulo varchar(30) not null,
    CodigoP int,
    Autor varchar(20) not null,
    Num_Likes int,
    Estado TINYINT,
    UNIQUE(CodigoP),
    PRIMARY KEY(CodigoP),
    FOREIGN KEY (Autor) REFERENCES Youtube.Utilizador(Nome_Utilizador),
    FOREIGN KEY (Estado) REFERENCES Youtube.Estados(state_id)
);
GO

CREATE TABLE Youtube.Coment�rios (
    Autor varchar(20) not null,
    Texto varchar(300) not null,
    Data_Coment�rio date not null,
    PRIMARY KEY(Autor),
    FOREIGN KEY (Autor) REFERENCES Youtube.Utilizador(Nome_Utilizador)
);
GO

CREATE TABLE Youtube.Hist�rico (
    Titulo varchar(30) not null,
    Codigo int,
    Data_de_Visualiza��o date not null,
    Nome_Utilizador varchar(20) not null,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (Codigo) REFERENCES Youtube.Conte�do(Codigo),
    FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador(Nome_Utilizador)
);

INSERT INTO Youtube.Estados (state_id, state_name) VALUES (0,'Private'), (1,'Public');





INSERT INTO Youtube.Utilizador (Nome_Utilizador, Email, Senha, Nome, Data_de_Nascimento)
VALUES
  ('Colins', 'blandit@icloud.edu', 'Xi9fp4hx', 'Marsden Guthrie', '1992-06-11'),
  ('Unitys', 'non.justo@google.org', 'Wf6nh0ih', 'Barclay Faulkner', '1961-08-17'),
  ('Martinas', 'quis.diam@google.net', 'Tm9su1fh', 'Harlan Leon', '1952-09-23'),
  ('Kylies', 'egestas.nunc.sed@hotmail.couk', 'Cu0wb2ik', 'Martin Guzman', '1964-08-10'),
  ('Iriss', 'eget.massa.suspendisse@yahoo.couk', 'Ir8cr2mc', 'Lionel Carpenter', '1955-11-28'),
  ('Whitneys', 'neque.tellus.imperdiet@protonmail.edu', 'Re2kq1kd', 'August Compton', '1964-03-13'),
  ('Ulyssess', 'eu@hotmail.net', 'Eo7gj0yv', 'Neville Hart', '1953-06-06'),
  ('Bretts', 'amet@icloud.com', 'Mf3ak2ly', 'Gray Berg', '1985-11-06');
	

INSERT INTO Youtube.Canal (Nome_Utilizador, Num_Subscritores, Num_conteudo, Descri��o_Canal, Subscreve)
SELECT Nome_Utilizador, 100, 5, 'Sample description', 10
FROM Youtube.Utilizador;

ALTER TABLE Youtube.Coment�rios ADD CONSTRAINT C�digoV FOREIGN KEY (C�digoV) REFERENCES Youtube.Conte�do(Codigo);



 ALTER TABLE Youtube.Descri��o
ADD CONSTRAINT FK_Descri��o_Conte�do FOREIGN KEY (Codigo) REFERENCES Youtube.Conte�do(Codigo);
GO

-- Add foreign key constraints to the 'Playlist' table
ALTER TABLE Youtube.Playlist
ADD CONSTRAINT FK_Playlist_Utilizador FOREIGN KEY (Autor) REFERENCES Youtube.Utilizador(Nome_Utilizador),
    CONSTRAINT FK_Playlist_Estados FOREIGN KEY (Estado) REFERENCES Youtube.Estados(state_id);
GO

-- Add foreign key constraints to the 'Coment�rios' table
ALTER TABLE Youtube.Coment�rios
ADD CONSTRAINT FK_Coment�rios_Utilizador FOREIGN KEY (Autor) REFERENCES Youtube.Utilizador(Nome_Utilizador),
    CONSTRAINT FK_Coment�rios_Conte�do FOREIGN KEY (C�digoV) REFERENCES Youtube.Conte�do(Codigo);
GO

-- Add foreign key constraints to the 'Hist�rico' table
ALTER TABLE Youtube.Hist�rico
ADD CONSTRAINT FK_Hist�rico_Conte�do FOREIGN KEY (Codigo) REFERENCES Youtube.Conte�do(Codigo),
    CONSTRAINT FK_Hist�rico_Utilizador FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador(Nome_Utilizador);
GO




-- Insert data into the 'Conte�do' table
INSERT INTO Youtube.Conte�do (Titulo, Codigo, Autor, Tipo, Estado, Dura��o, Num_Likes, Num_Visualiza��es, Data_Publica��o)
VALUES
  ('Video 1', 1, 'Colins', 'Type 1', 1, '00:05:00', 5, 50, '2023-05-01'),
  ('Video 2', 2, 'Unitys', 'Type 2', 0, '00:10:00', 8, 80, '2023-05-02');

-- Insert data into the 'Descri��o' table
INSERT INTO Youtube.Descri��o (Codigo, Texto, Num_Likes, Num_Visualiza��es, Data_Publica��o)
VALUES
  (1, 'Description 1', 5, 50, '2023-05-01'),
  (2, 'Description 2', 8, 80, '2023-05-02');

-- Insert data into the 'Playlist' table
INSERT INTO Youtube.Playlist (Titulo, CodigoP, Autor, Num_Likes, Estado)
VALUES
  ('Playlist 1', 1, 'Colins', 20, 1),
  ('Playlist 2', 2, 'Unitys', 30, 0);

-- Insert data into the 'Coment�rios' table
INSERT INTO Youtube.Coment�rios (Autor, Texto, Data_Coment�rio, C�digoV)
VALUES
  ('Colins', 'Comment 1', '2023-05-01', 1),
  ('Unitys', 'Comment 2', '2023-05-02', 2);

-- Insert data into the 'Hist�rico' table
INSERT INTO Youtube.Hist�rico (Titulo, Codigo, Data_de_Visualiza��o, Nome_Utilizador)
VALUES
  ('Video 1', 1, '2023-05-01', 'Colins'),
  ('Video 2', 2, '2023-05-02', 'Unitys');


  */


