drop database if exists Lanchonete;
create database Lanchonete;
create table Lanchonete.Sanduiches(
		idSanduiches int,
        nome varchar(45),
        preco decimal(6,2),
        primary key(idSanduiches)
);

create table Lanchonete.Pedido(
	idPedido int primary key,
    dataDeEmissao datetime,
	statusDoPedido int 
);

create table Lanchonete.Cliente(
	idCliente int primary key,
    nome varchar(45),
    telefone int,
    enderecoLogradouro varchar(45),
    enderecoNome varchar(45),
    enderecoNumero varchar(45)
);

create table Lanchonete.Entregador( 
	idEntregador int primary key,
    nome varchar(45),
    numero int
    );