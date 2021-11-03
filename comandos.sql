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

	Tabela filme

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
    
    /* Define um nome do relacionamento */
    
    constraint FK_Classificacao_Filme
    
    /* Especifica quem será a FK nesta tabela */
    
    foreign key (idClassificacao)
    
    /* Especifica de qual tabela virá a PK */
    
    references tblClassificacao (idClassificacao),
    unique index (idFilme)
    
);


/*

	Tabela diretor

*/

create table tblDiretor (
	
    idDiretor int not null auto_increment primary key,
    nomeDiretor varchar(80) not null,
    dataNascimentoDiretor date not null,
    nomeArtisticoDiretor varchar(80),
    biografiaDiretor text,
    foto varchar(80),
	idSexo int not null,
    
    /* Define um nome do relacionamento */
    
    constraint FK_Sexo_Diretor
    
    /* Especifica quem será a FK nesta tabela */
    
    foreign key (idSexo)
    
    /* Especifica de qual tabela virá a PK */
    
    references tblSexo (idSexo),
    unique index (idDiretor)

);

/*

	Tabela Filme Diretor

*/

create table tblFilmeDiretor (

	idFilmeDiretor int not null auto_increment primary key,
    idFilme int not null,
    idDiretor int not null,
    
    /* Relacionamento com Filme */
    
		/* Define um nome do relacionamento */
		
		constraint FK_Filme_FilmeDiretor
		
		/* Especifica quem será a FK nesta tabela */
		
		foreign key (idFilme)
		
		/* Especifica de qual tabela virá a PK */
		
		references tblFilme (idFilme),

	/* Relacionamento com Diretor */
    
		/* Define um nome do relacionamento */
		
		constraint FK_Diretor_FilmeDiretor
        
		/* Especifica quem será a FK nesta tabela */

		foreign key (idDiretor)
        
		/* Especifica de qual tabela virá a PK */

		references tblDiretor (idDiretor),
        
		unique index (idFilmeDiretor)

);

