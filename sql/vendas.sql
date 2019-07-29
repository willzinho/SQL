create table vendedor (
    codigoV int, 
    nome varchar (50),
    salario decimal (8,2),
    comissao char,
 constraint pk_vendedor primary key (codigoV)   
);

create table cliente (
codigoC int,
nome varchar (50),
endereco varchar (50),
numero varchar(5),
cidade varchar(20),
cep varchar(8),
uf char(2),
cnpj_cpf varchar(20),
ie varchar(15),
constraint pk_cliente primary key (codigoC)
);

create table pedido (
    numPed int,
    codigoC int,
    codigoV int,
    prazoEntrega int,
    constraint pk_pedido primary key (numPed),
    constraint fk_pedidoV foreign key (codigoV) references vendedor (codigoV),
    constraint fk_pedidoC foreign key (codigoC) references cliente (codigoC)
);

create table produto (
    codigoP int,
    unidade char (3),
    descricao varchar (30),
    valorUnitario decimal (8,2),
    constraint pk_produto primary key (codigoP)
);

create table itemDePedido (
    numPed int,
    codigoP int,
    quantidade int,   
    constraint fk_itemDePedido foreign key (codigoP) references produto (codigoP)
);