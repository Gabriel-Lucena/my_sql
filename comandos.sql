# Comentário

/*

	Comentário em bloco

*/

/*

	Criando o database

*/

create database dbFilmesTurmaB;


/*

	Perimite visualizar os databases existentes no BD

*/

show databases;

/*

	Eliminar/Apagar um database do BD
    
*/

drop database dbFilmesTurmaB;

/*

	Seleciona o database a ser utilizado

*/

use dbFilmesTurmaB;

/*

	Cria uma tabela com seus atributos

*/

create table tblClassificacao (
	
    idClassificacao int not null auto_increment primary key,
	nomeClassificacao varchar(20) not null,
    unique index(idClassificacao)

);

/*

	Permite visualizar as tabelas existentes no database

*/

show tables;

/*

	Cria uma tabela e seus atributos

*/

create table tblSexo (

	idSexo int not null auto_increment,
    nomeSexo varchar(10) not null,
    primary key (idSexo),
    unique index (idSexo)

);


/*

	Permite visualizar a descrição da tabela

*/

desc tblSexo;

/*

	Tabela genero

*/

create table tblGenero (

	idGenero int not null auto_increment primary key,
    nomeGenero varchar(30) not null,
    unique index(idGenero)

);

/*

	Tabela estudio

*/

create table tblEstudio (

	idEstudio int not null auto_increment primary key,
    nomeEstudio varchar(50) not null,
    unique index (idEstudio)

);

/*

	Tabela nacionalidade

*/

create table tblNacionalidade (

	idNacionalidade int not null auto_increment primary key,
    nomeNacionalidade varchar(20) not null,
    unique index(idNacionalidade)

);

/*

	tabela filme

*/

create table tblFilme (

	idFilme int not null auto_increment primary key,
    nomeFilme varchar(80) not null,
    nomeOriginalFilme varchar(80),
	duracao time not null,
    dataLancamento date not null,
    dataRelancamento date,
    sinopse text not null,
    fotoFilme varchar(80),
    idClassificacao int not null,
    
    /* Defini um nome do relacionamento */
    
    constraint FK_Classificacao_Filme
    
    /* Especifica quem será a FK nesta tabela */
    
    foreign key (idClassificacao)
    
    /* Especifica de qual tabela virá a PK */
    
    references tblClassificacao (idClassificacao),
    unique index (idFilme)
    
);
