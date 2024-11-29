REM   Script: bdh
REM   exercicio

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, valor_unit decimal(7,2) not null);

DESC Produto


DROP TABLE Produto;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


DROP TABLE Produto;

CREATE TABLE Animal(ID_animal int cenerated alwyas as indentity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


DROP TABLE Produto;

CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


DROP TABLE Produto;

CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18));

DESC pessoa


create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create index idcnome on produto(nome);

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais 
create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


DROP TABLE pessoas;

create index idcpf on pessoas(cpf);

create unique index idcbarra on produto(barra);

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais 
create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create index idcpf on pessoas(cpf);

create unique index idcbarra on produto(barra);

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create index idcpf on pessoas(cpf);

create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create index idcpf on pessoas(cpf);

create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

drop table cidades;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create index idcpf on pessoas(cpf);

create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

drop table cidades;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

drop table cidades;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

drop table cidades;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


drop table cidades;

alter table cidades add populacao int;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


alter table cidades add populacao int;

desc cidades


drop table cidades;

alter table cidades drop column populacao;

desc cidades


CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


alter table cidades add populacao int not null;

desc cidades


alter table cidades drop column populacao;

desc cidades


drop table cidades;

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


alter table cidades add populacao int not null;

desc cidades


alter table cidades drop column populacao;

desc cidades


alter table cidades ass constraint chk_idade check(idade>18);

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


DROP TABLE pais;

create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


alter table cidades add populacao int not null;

desc cidades


alter table cidades drop column populacao;

desc cidades


alter table cidades add constraint chk_idade check(idade>18);

alter table cidades add idade int not null;

alter table cidades add constraint chk_idade check(idade>18);

desc cidades


CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


alter table cidades add populacao int not null;

desc cidades


alter table cidades drop column populacao;

desc cidades


alter table cidades add idade int not null;

alter table cidades add constraint chk_idade check(idade>18);

desc cidades


drop table cidades;

create table presidente( 
    cod_pres int not null, 
    nome char(30) not null. 
    cd_pais int not null constraint fk_presidente_pais references pais(cod_pais), 
    primary key(cod_pres));

desc presidente


) 


create table presidente( 
    cod_pres int not null, 
    nome char(30) not null. 
    cd_pais int not null constraint fk_presidente_pais references pais(cod_pais), 
    primary key(cod_pres) 
    );

CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


alter table cidades add populacao int not null;

desc cidades


alter table cidades drop column populacao;

desc cidades


alter table cidades add idade int not null;

alter table cidades add constraint chk_idade check(idade>18);

desc cidades


drop table cidades;

create table presidente( 
    cod_pres int not null, 
    nome char(30) not null. 
    cd_pais int not null constraint fk_presidente_pais references pais(cod_pais), 
    primary key(cod_pres) 
    );

desc presidente


CREATE TABLE Produto(cod_produto smallint not null, nome char(255) not null, qt_estoque smallint not null, barra int not null, valor_unit decimal(7,2) not null, primary key (cod_produto));

DESC Produto


CREATE TABLE Animal(ID_animal int generated always as identity, nome char(30) not null, especie varchar(30) not null, primary key (ID_animal));

DESC Animal


DROP TABLE Animal;

create table produtobkp as select * from produto;

DESC Produto


DESC Produtobkp


DROP TABLE produto;

DROP TABLE produtobkp;

create table pessoa ( 
    cod_pessoa int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, constraint chk_idade_pessoa check (idade>=18) 
    );

DESC pessoa


DROP TABLE pessoa;

create table pais( 
    cod_pais int not null, 
    nome char(30) not null, 
    continente varchar(10) check(continente in ('Ásia', 'Europa', 'Oceania', 'América','África','Antártida')), 
    primary key(cod_pais) 
    );

desc pais


create table pessoas ( 
    ID int not null, 
    nom_pessoa varchar(255) not null, 
    idade int, 
    cpf int, 
    Cidade varchar(255) default 'Gaspar' 
    );

DESC pessoas


create unique index idcpf on pessoas(cpf);

drop table pessoas;

create table cidades( 
    id int not null primary key, 
    nome_cidade varchar(30) not null, 
    uf char(2) not null 
    );

create unique index idc_cidade on cidades(nome_cidade,uf);

desc cidades


alter table cidades drop primary key;

alter table cidades add constraint pk_cidades primary key(id);

alter table cidades modify nome_cidade varchar(50);

alter table cidades rename column nome_cidade to nome;

desc cidades


alter table cidades add populacao int not null;

desc cidades


alter table cidades drop column populacao;

desc cidades


alter table cidades add idade int not null;

alter table cidades add constraint chk_idade check(idade>18);

desc cidades


drop table cidades;

create table presidente( 
    cod_pres int not null, 
    nome char(30) not null, 
    cd_pais int not null constraint fk_presidente_pais references pais(cod_pais), 
    primary key(cod_pres) 
    );

desc presidente


alter table presidente modify column cd_pais to cod_pais;

alter table presidente rename column cd_pais to cod_pais;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fkemp_no references employees(emp_no), 
    dept_no char(4) not null constraint fkdept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


create table dept_manager( 
    emp_no int not null constraint fkemp_no references employees(emp_no), 
    dept_no char(4) not null constraint fkdept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

create table salaries( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    saraly int not null, 
    from_date date not null, 
    to_date date not null 
    primary key(emp_no, from_date), 
);

drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

drop table salaries;

drop table titles, 
 
create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null, 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null, 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null, 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null, 
);

create table salaries( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    saraly int not null, 
    from_date date not null, 
    to_date date not null, 
    primary key(emp_no, from_date), 
);

create table titles( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    titles varchar(50) not null, 
    from_date date not null, 
    to_date date, 
    primary key(emp_no, from_date, title), 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


desc salaries


desc titles


drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

drop table salaries;

drop table titles;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

create table salaries( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    saraly int not null, 
    from_date date not null, 
    to_date date not null, 
    primary key(emp_no, from_date) 
);

create table titles( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    titles varchar(50) not null, 
    from_date date not null, 
    to_date date, 
    primary key(emp_no, from_date, title) 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


desc salaries


desc titles


create table dept_manager( 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no1 references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no1 references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

drop table salaries;

drop table titles;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no1 references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no1 references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

create table salaries( 
    emp_no int not null constraint fk_emp_no2 references employees(emp_no), 
    saraly int not null, 
    from_date date not null, 
    to_date date not null, 
    primary key(emp_no, from_date) 
);

create table titles( 
    emp_no int not null constraint fk_emp_no3 references employees(emp_no), 
    titles varchar(50) not null, 
    from_date date not null, 
    to_date date, 
    primary key(emp_no, from_date, title) 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


desc salaries


desc titles


create table titles( 
    emp_no int not null constraint fk_emp_no3 references employees(emp_no), 
    title varchar(50) not null, 
    from_date date not null, 
    to_date date, 
    primary key(emp_no, from_date, title) 
);

drop table departments;

drop table employees;

drop table dept_emp;

drop table dept_manager;

drop table salaries;

drop table titles;

create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no1 references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no1 references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

create table salaries( 
    emp_no int not null constraint fk_emp_no2 references employees(emp_no), 
    saraly int not null, 
    from_date date not null, 
    to_date date not null, 
    primary key(emp_no, from_date) 
);

create table titles( 
    emp_no int not null constraint fk_emp_no3 references employees(emp_no), 
    title varchar(50) not null, 
    from_date date not null, 
    to_date date, 
    primary key(emp_no, from_date, title) 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


desc salaries


desc titles


