create table uf(
	cod_uf int AUTO_INCREMENT primary key,
    sigla_uf char(2) not null, 
    nome_uf varchar(100) not null 
);

create table cidade(
	cod_cidade int AUTO_INCREMENT primary key,
    nome_cidade varchar(100) not null,
    cod_uf int not null,
    constraint fk_uf foreign key (cod_uf) references uf(cod_uf)
);

create table cliente(
	cod_cliente int AUTO_INCREMENT primary key,
    razao_social varchar(100) not null,
    nome_fantasia varchar(100),
    telefone varchar(20) not null,
    cod_cidade int not null,
    constraint fk_cidade foreign key (cod_cidade) references cidade(cod_cidade)
);

create table pedido(
	num_pedido int AUTO_INCREMENT primary key,
    data_hora datetime,
    cod_cliente int not null,
    constraint fk_cliente foreign key (cod_cliente) references cliente(cod_cliente)
);

create table produto(
	cod_produto int AUTO_INCREMENT primary key,
    des_produto varchar(100) not null,
    peso decimal(10,3),
    foto blob
);

create table itens_pedido(
	num_pedido int not null,
    cod_produto int not null,
    qtde decimal(10,3) not null,
    val_unit decimal(10,3) not null,
    val_total decimal(10,3) not null,
    primary key(num_pedido, cod_produto),
	constraint fk_pedido foreign key (num_pedido) references pedido(num_pedido), 
    constraint fk_produto foreign key (cod_produto) references produto(cod_produto)
);

INSERT INTO produto (des_produto) 
VALUES ('Produto X');

INSERT INTO uf (sigla_uf, nome_uf) 
VALUES ('SC', 'Santa Catarina');

INSERT INTO cidade (nome_cidade, cod_uf)
VALUES 
('Florianópolis', 1),
('Gaspar', 1),
('Blumenau', 1);

UPDATE cliente
SET nome_fantasia = 'Instituto Federal de Santa Catarina'
WHERE cod_cliente = 55;

UPDATE produto
SET peso = peso * 1.05
WHERE foto IS NOT NULL;

UPDATE cidade
SET cod_uf = 1
WHERE nome_cidade = 'Gaspar';

DELETE FROM itens_pedido
WHERE qtde = 0 OR qtde IS NULL;

DELETE FROM cliente
WHERE cod_cliente = 127;

DELETE FROM uf
WHERE LOWER(sigla_uf) = 'sc';

