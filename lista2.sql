create table clientes(
	cli_cod int AUTO_INCREMENT primary key,
    cli_nome varchar(50) not null,
    cli_telefone varchar(14),
    cli_cpf char(14),
    cli_logradouro varchar(50) not null,
    cli_numero varchar(10) not null,
    cli_complemento varchar(10),
    cli_bairro varchar(30) not null,
    cli_cep char(9) not null,
    cli_cidade varchar(50) not null,
    cli_uf char(2) not null
);

create table vendedores(
	ven_cod int AUTO_INCREMENT primary key,
    ven_nome varchar(50) not null,
    ven_valor_comissao int
);

create table produtos(
	pro_cod int AUTO_INCREMENT primary key,
    pro_nome varchar(50) not null,
    pro_valor_unit numeric(6,2) not null,
    pro_qt_estoque int not null,
    pro_tipo varchar(30)
);

create table pedidos(
	ped_id int AUTO_INCREMENT primary key,
    ped_data datetime not null,
    ven_cod int not null,
    cli_cod int not null,
    constraint fk_vendedores foreign key (ven_cod) references vendedores(ven_cod),
    constraint fk_clientes foreign key (cli_cod) references clientes(cli_cod) 
);

create table itens(
	ped_id int not null,
    pro_cod int not null,
    item_qt_vendida int not null,
    item_valor_venda numeric(6,2) not null,
    primary key(ped_id, pro_cod),
	constraint fk_pedidos foreign key (ped_id) references pedidos(ped_id), 
    constraint fk_produtos foreign key (pro_cod) references produtos(pro_cod) 
);

INSERT INTO clientes( cli_nome, cli_telefone, cli_logradouro, cli_numero, cli_complemento, cli_bairro, cli_cidade, cli_uf, cli_cep)
VALUES 
('edson silva', '1136254465', 'parque das palmeiras', '23', 'apto401', 'Morumbi', 'são paulo', 'sp', '11250005'),
('Sheila Dias', '2199856542', 'Av. Pereira Nunes', '45','','','Botafogo', 'RJ', '22559000'),
('Carlos Camargo', '1136527788', 'Rua das Acácias', '111', 'Bloco B2, apto 1101','','','', '11447008'),
('Ronaldo Oliveira', '2195876541', 'Av. Bariri', '56', '', 'Cosme Velho', 'Rio de Janeiro', 'RJ', '21000100'),
('Carolina Santos', '1125569940', 'Jardim América', '1145', '', '', 'Boa Vista', 'SP', '18245009');
 
INSERT INTO vendedores (ven_nome, ven_valor_comissao)
values
('Pedro Augusto', 10),
('Carlos Firmino Góes', 15),
('Maria Dias', 15),
('José Ubaldo', 5);

INSERT INTO produtos (pro_nome, pro_valor_unit, pro_qt_estoque)
values
('Caneta esferográfica azul', 0, 25),
('Caneta esferográfica vermelha', 0, 10),
('Caderno 100 folhas', 2.00, 20),
('Caderno 50 folhas', 1.50, 5),
('Cola branca', 1, 3),
('Lapiseira', 5, 7),
('Papel A4 — 100 folhas', 3.30, 25),
('Papel A4 — 500 folhas', 15, 30),
('CD-R', 1.50, 10),
('CD-R', 1.50, 10),
('Papel A4 — 100 folhas', 3.30, 25); 

DELETE FROM vendedores
WHERE ven_nome = 'José Ubaldo';

UPDATE produtos
SET pro_qt_estoque = 0
WHERE pro_nome = 'CD-R';

DELETE FROM produtos
WHERE pro_cod NOT IN (
    SELECT MIN(pro_cod)
    FROM produtos
    GROUP BY pro_nome
);

UPDATE produtos
SET pro_valor_unit = 0.9
WHERE pro_nome = 'Caneta esferográfica vermelha';

UPDATE produtos
SET pro_valor_unit = pro_valor_unit * 1.1
WHERE pro_nome = 'Papel A4 — 500 folhas';

UPDATE produtos
SET pro_tipo = 'papelaria'
WHERE pro_tipo = '' or pro_tipo is null;

ALTER TABLE clientes
ADD cli_celular varchar(15);

UPDATE clientes
SET cli_nome = 'Carolina Santos Silva', cli_celular = '11998976543'
WHERE cli_nome = 'Carolina Santos';

INSERT INTO produtos (pro_nome, pro_valor_unit, pro_qt_estoque, pro_tipo)
values
('Apontador', 3.5, 80, 'papelaria'),
('Borracha', 2.8, 120, 'papelaria'),
('Giz de cera', 5.9, 45, 'papelaria'),
('Estojo', 12, 25, 'papelaria'),
('Canetinhas', 22, 40, 'papelaria'),
('Tonner', 120, 15, 'informática'),
('Mouse', 35, 40, 'informática'),
('Teclado', 85, 25, 'informática'),
('Estabilizador', 100, 20, 'informática');
