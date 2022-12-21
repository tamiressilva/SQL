create database Atp2;
use Atp2;

create table Atp2.Vinicola(
	codVinicola bigint primary key,
    nomeVinicola VARCHAR(50),
    descricaoVinicola text,
    foneVinicola VARCHAR(15),
    emailVinicola VARCHAR(45),
    codRegiao bigint,
    foreign key(CodRegiao) references Regiao (codRegiao)
    
);

CREATE TABLE Atp2.Vinho (
    codVinho BIGINT PRIMARY KEY,
    nomeVinho VARCHAR(50),
    tipoVinho VARCHAR(30),
    anoVinho INT,
    descricaovINHO TEXT,
    codVinicola BIGINT,
    FOREIGN KEY (codVinicola)
        REFERENCES Vinicola (codVinicola)
);

create table Atp2.Regiao (
	codRegiao bigint primary key,
    nomeRegiao VARCHAR(100),
    descricaoRegiao TEXT
);	

create user Somellier@"localhost" identified by "123456";
grant select on Atp2.Vinho to Somellier@"localhost";
grant select (codVinicola,nomeVinicola) on Atp2.Vinicola to Somellier@"localhost"; 

