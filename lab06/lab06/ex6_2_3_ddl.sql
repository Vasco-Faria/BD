CREATE SCHEMA Prescri��es
go

ALTER TABLE Prescri��es.Farmaco DROP CONSTRAINT Farmaco_numRegFarm;
AlTER TABLE Prescri��es.prescri��o DROP CONSTRAINT Prescri��o_Utente;
ALTER TABLE Prescri��es.prescri��o DROP CONSTRAINT Prescri��o_Medico;
AlTER TABLE Prescri��es.prescri��o DROP CONSTRAINT Prescri��o_Farmacia;
ALTER TABLE Prescri��es.presc_farmaco	DROP CONSTRAINT Presc_num;
ALTER TABLE Prescri��es.presc_farmaco	DROP CONSTRAINT  Presc_numfarm;
ALTER TABLE Prescri��es.presc_farmaco DROP CONSTRAINT Presc_farmaco;


DROP TABLE Prescri��es.Medico;
DROP TABLE Prescri��es.Paciente;
DROP TABLE Prescri��es.Farmacia;
DROP TABLE Prescri��es.Farmaceutica;
DROP TABLE Prescri��es.Farmaco;
DROP TABLE Prescri��es.prescri��o;
DROP TABLE Prescri��es.presc_farmaco;



CREATE TABLE Prescri��es.Medico(

	numSNS	INT NOT NULL,
	Nome	VARCHAR(20) NOT NULL,
	Especialidade VARCHAR(20) NOT NULL,

	PRIMARY KEY (numSNS)

	);

		

CREATE TABLE Prescri��es.Paciente(
		
		numUtente	INT	NOT NULL,
		Nome	VARCHAR(20)	NOT NULL,
		DataNasc DATE ,
		Endere�o VARCHAR(30) NOT NULL,

		PRIMARY KEY (numUtente)

		);

CREATE TABLE Prescri��es.Farmacia(

		Nome	VARCHAR(20) NOT NULL,
		Telefone CHAR(9) NOT NULL,
		Endere�o	VARCHAR(30) NOT NULL,

		PRIMARY KEY (Nome)

		);

CREATE TABLE Prescri��es.Farmaceutica(

		numReg	INT NOT NULL,
		Nome	VARCHAR(20) NOT NULL,
		Endere�o VARCHAR(30) NOT NULL,

		PRIMARY KEY (numReg)
		
		);

CREATE TABLE Prescri��es.Farmaco(

		numRegFarm	INT NOT NULL,
		nome	VARCHAR(20)	NOT NULL,
		formula VARCHAR(30) NOT NULL,

		PRIMARY KEY(nome)

		);


CREATE TABLE Prescri��es.prescri��o(

		numPresc INT NOT NULL,
		numUtente INT NOT NULL,
		numMedico	INT NOT NULL,
		farmacia VARCHAR(20),
		dataProc DATE ,

		PRIMARY KEY (numPresc)

		);


CREATE TABLE Prescri��es.presc_farmaco(

		numPresc	INT NOT NULL,
		numRegFarm	INT NOT NULL,
		nomeFarmaco	VARCHAR(20) NOT NULL,

		PRIMARY KEY (numPresc)

		);


ALTER TABLE Prescri��es.Farmaco ADD CONSTRAINT Farmaco_numRegFarm FOREIGN KEY (numRegFarm) REFERENCES Prescri��es.Farmaceutica(numReg); 
AlTER TABLE Prescri��es.prescri��o ADD CONSTRAINT Prescri��o_Utente FOREIGN KEY (numUtente) REFERENCES Prescri��es.Paciente(numUtente);
ALTER TABLE Prescri��es.prescri��o ADD CONSTRAINT Prescri��o_Medico FOREIGN KEY (numMedico) REFERENCES Prescri��es.Medico(numSNS);
AlTER TABLE Prescri��es.prescri��o ADD CONSTRAINT Prescri��o_Farmacia FOREIGN KEY (farmacia) REFERENCES Prescri��es.Farmacia(Nome);
ALTER TABLE Prescri��es.presc_farmaco ADD CONSTRAINT Presc_num FOREIGN KEY (numPresc) REFERENCES Prescri��e.prescri��o(numPresc);
ALTER TABLE Prescri��es.presc_farmaco ADD CONSTRAINT Presc_numfarm FOREIGN KEY (numRegFarm) REFERENCES Prescri��o.Farmaco(numRegFarm);
ALTER TABLE Prescri��es.presc_farmaco ADD CONSTRAINT Presc_farmaco FOREIGN KEY (nomeFarmaco) REFERENCES Prescri��o.Farmaco(nome);







