drop database if exists Atp2;
create database Atp2;
use Atp2;


create table Atp2.Regiao (
	codRegiao bigint primary key,
    nomeRegiao VARCHAR(100),
    descricaoRegiao TEXT
);

create table Atp2.Vinicola(
	codVinicola bigint primary key,
    nomeVinicola VARCHAR(50),
    descricaoVinicola text,
    foneVinicola VARCHAR(15),
    emailVinicola VARCHAR(45),
    codRegiao bigint,
    foreign key(CodRegiao) references ATP2.Regiao (codRegiao)
    
);

CREATE TABLE Atp2.Vinho (
    codVinho BIGINT PRIMARY KEY,
    nomeVinho VARCHAR(50),
    tipoVinho VARCHAR(30),
    anoVinho INT,
    descricaovINHO TEXT,
    codVinicola BIGINT,
    FOREIGN KEY (codVinicola)
        REFERENCES Atp2.Vinicola(codVinicola)
);
	

-- INSERTS

insert into Atp2.Regiao values
	(46900000, "Santiago-CHI", "A cidade de Santiago abriga os principais organismos governamentais financeiros, administrativos, comerciais e culturais do Chile."),
	(7898900, "Lucerna-SUI", "uma pequena cidade na Suíça conhecida por sua arquitetura medieval preservada, está situada entre montanhas cobertas de neve perto do Lago Lucerna"),
	(56923000, "Paris-FRA", "a capital da França, é uma importante cidade europeia e um centro mundial de arte, moda, gastronomia e cultura. "),
	(4698900, "Amsterdã-ALE", "a capital da Holanda, conhecida por seu patrimônio artístico, um elaborado sistema de canais e casas estreitas com telhados de duas águas"),
	(86098330, "Bogotá-COL", "a capital da Colombia,  Bogotá é a capital e maior cidade da Colômbia, com mais de 8 milhões de habitantes. É o centro político, econômico, administrativo, industrial e artístico.");


insert into Atp2.Vinicola values
	(1, "Vinicola Montes", "melhores vinhos do chile","(75) 98753-6536","montes1@gmail.com", 46900000),
	(2, "Vinicola Carnivu", "melhores vinhos do japão","(11) 97536-5432","carnivi@gmail.com", 4698900),    
	(3, "Vinicola Laguna", "melhores vinhos da suiça","(96) 98753-6536","laguna@gmail.com", 56923000),
	(4, "Vinicola Breandina", "melhores vinhos do Brasil","(38) 97536-5432","braeand@gmail.com", 7898900),
	(5, "Vinicola Viñedo Ain Karim", "melhores vinhos da Colombia","(57) 98070-4020","braeand@gmail.com", 86098330);
	

insert into Atp2.Vinho values 
	(1, "Dom Melchior", "Suave",2018, "o vinho dom melchior é um dos mais suaves",2),
    (2, "Cabernet Franc", "Suave",2013, "A grande diferença entre essa casta e a anterior o tempo de amadurecimento da uva ",3),
    (3, "Tannat", "Seco", 2015, "Seu nome já indica uma de suas características mais marcantes: a presença de taninos intensos.",3),
    (4, "Merlot", "Suave",2012, "Os vinhos do tipo Merlot são os preferidos de quem quer trazer elegância à degustação",1),
	(5, "Malbec", "Seco",2014, "Eles são francesas, mas produzidas na Argentina com excelência.", 4),
	(6, "Pinot Noir", "Suave",2010, "São vinhos conhecidos por serem misteriosos, com taninos firmes e pouco acentuados. ", 1);



-- select
select vi.nomeVinho as NomedoVinho,vi.anoVinho as AnoDoVinho, vic.nomeVinicola as NomeDaVinicola, reg.nomeRegiao as Regiao from
Atp2.Vinho as vi, atp2.Vinicola as vic, Atp2.Regiao as reg where
vi.codVinicola= vic.codVinicola and vic.codRegiao = reg.codRegiao ;

-- select users

create user Somellier@"localhost" identified by "123456" with max_queries_per_hour 40;
grant select on Atp2.Vinho to Somellier@"localhost";
grant select (codVinicola,nomeVinicola) on Atp2.Vinicola to Somellier@"localhost";

SHOW GRANTS FOR Somellier@'localhost'; 