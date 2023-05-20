Use p5g2;
go


CREATE SCHEMA Youtube;
go


CREATE TABLE Youtube.Estados (

	state_id TINYINT PRIMARY KEY,
	state_name VARCHAR(20),

);



CREATE TABLE Youtube.Utilizador (

	Nome_Utilizador varchar(20) not null,
	Email varchar(20) not null,
	Senha varchar(15) not null,
	Nome varchar(20) not null,
	Data_de_Nascimento date not null,


	PRIMARY KEY(Nome_Utilizador),

);
go


CREATE TABLE Youtube.Premium (

	Data_de_Encerramento  date not null,
	Valor_a_pagar  FLOAT,
	Nome_Utilizador varchar(20) not null,


	PRIMARY KEY(Nome_Utilizador),
);
go

CREATE TABLE Youtube.Canal (

	Nome_Utilizador varchar(20) not null,
	Num_Subscritores int,
	Num_conteudo int, 
	Descri��o_Canal varchar(600),
	Subscreve int ,

	PRIMARY KEY(Nome_Utilizador),

);
go


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
		
	UNIQUE(codigo),

	PRIMARY KEY(Codigo),

);


CREATE TABLE Youtube.Descri��o (

	Codigo int,
	Texto varchar(500),
	Num_Likes int,
	Num_Visualiza��es int, 
	Data_Publica��o date not null,

	PRIMARY KEY (Codigo),

);
go


CREATE TABLE Youtube.Playlist(

	Titulo varchar(30) not null,
	CodigoP int,
	Autor varchar(30) not null,
	Num_Likes int,
	Estado varchar(10) not null,

	UNIQUE(CodigoP),

	PRIMARY KEY(CodigoP),

);


CREATE TABLE Youtube.Coment�rios (

	Autor varchar(30) not null,
	Texto varchar(300) not null,
	Data_Coment�rio date not null,


	PRIMARY KEY(Autor),

);


CREATE TABLE Youtube.Hist�rico (

	Titulo varchar(30) not null,
	Codigo int,
	Data_de_Visualiza��o date not null,
	Nome_Utilizador varchar(30) not null,

	PRIMARY KEY (Codigo),

);


ALTER TABLE Youtube.Canal ADD CONSTRAINT Nome_Utilizador FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador;

ALTER TABLE Youtube.Conte�do ADD CONSTRAINT Autor FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Canal;

ALTER TABLE Youtube.Descri��o ADD CONSTRAINT Codigo FOREIGN KEY (Codigo) REFERENCES Youtube.Conteudo;

ALTER TABLE Youtube.Descri��o ADD CONSTRAINT Num_Likes FOREIGN KEY (Num_Likes) REFERENCES Youtube.Conteudo;

ALTER TABLE Youtube.Descri��o ADD CONSTRAINT Num_Visualiza��es FOREIGN KEY (Num_Visualiza��es) REFERENCES Youtube.Conteudo;

ALTER TABLE Youtube.Descri��o ADD CONSTRAINT Data_Publica��o FOREIGN KEY (Data_Publica��o) REFERENCES Youtube.Conteudo;

ALTER TABLE Youtube.Playlist ADD CONSTRAINT Autor FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador;

ALTER TABLE Youtube.Playlist ADD CONSTRAINT Estado FOREIGN KEY (state_id) REFERENCES Youtube.Estados;

ALTER TABLE Youtube.Coment�rios ADD CONSTRAINT Autor FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador;

ALTER TABLE Youtube.Hist�rico ADD CONSTRAINT Codigo FOREIGN KEY (Codigo) REFERENCES Youtube.Conteudo;

ALTER TABLE Youtube.Hist�rico ADD CONSTRAINT Nome_Utilizador FOREIGN KEY (Nome_Utilizador) REFERENCES Youtube.Utilizador;





INSERT INTO Youtube.Estados (state_id, state_name) VALUES (0,'Private'), (1,'Public');




