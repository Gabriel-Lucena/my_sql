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


/*

	Tabela Ator - Simulando erros

*/

create table tblAtor (
	
    idAtor int not null auto_increment primary key,
    
    /* varchar(80) not null */
    
    nomeAtor varchar(8),
    
    nomeArtisticoAtor varchar(80),
    
    /* dataNascimentoAtor */
    
    dataNascAtor date not null,
    
	dataFalecimentoAtor date,
    biografiaAtor text,
    /* fotoAtor varchar(80),*/
    idSexo int not null,
    unique index(idAtor)
    
);

/*

	Alterando a estrutura de uma tabela já criada

*/

/*

	modify column - permite alterar as propriedades de um atributo

*/


alter table tblAtor

	modify column nomeAtor varchar (80) not null;

desc tblAtor;

/*

	change column - permite alterar a escrita e propriedades de um atributo

*/

alter table tblAtor
	
    change column dataNascAtor dataNascimentoAtor date not null;

/*

	add column - permite adicionar um atributo

*/

alter table tblAtor
	
    add column fotoAtor varchar(80);

/*

	add constraint - permite adicionar um relacionamento em uma tabela já criada

*/

alter table tblAtor

    add constraint FK_Sexo_Ator
    foreign key (idSexo)
    references tblSexo (idSexo);


/*

	Adicionando uma nova unique index()

*/

alter table tblAtor

	add unique index(idAtor, foto);
    
/*

	drop foreign key - desrelacionando a chave

*/

alter table tblAtor

	drop foreign key FK_sexo_ator;


/*

	drop column - excluir atributo

*/

alter table tblAtor

	drop column idSexo;

/*

	Como verificar as constraints existentes em uma tabela

*/

select
	constraint_name,
    referenced_table_name,
    referenced_column_name
from information_schema.key_column_usage
where
	referenced_table_name = 'tblFilme';
    
    
/*

	Recriando a coluna idSexo

*/


alter table tblAtor

	add column idSexo int not null,
    add constraint FK_sexo_ator
		foreign key  (idSexo)
		references tblSexo (idSexo);
        
        
/*

	Apagando a tabela

*/

drop table tblAtor;

/*

	tabela estudio filme

*/

create table tblEstudioFilme (

	idEstudioFilme int not null auto_increment primary key,
    idFilme int not null,
    idEstudio int not null,
    
    /* Relacionamento com tblFilme */
    
    constraint FK_filme_estudioFilme
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    /* Relacionamento com tblEstudio */

    constraint FK_estudio_estudioFilme
    foreign key (idEstudio)
    references tblEstudio (idEstudio),
    
    unique index (idEstudioFilme)

);

/*

	tabela filmeGenero

*/

create table tblFilmeGenero (

	idFilmeGenero int not null auto_increment primary key,
    idFilme int not null,
    idGenero int not null,
    
    /* Relacionamento com tblFilme */
    
    constraint FK_filme_filmeGenero
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    /* Relacionamento com tblEstudio */

    constraint FK_genero_generoFilme
    foreign key (idGenero)
    references tblGenero (idGenero),
    
    unique index (idFilmeGenero)
    
);

/*

	tabela atorFilme

*/

create table tblAtorFilme (

	idAtorFilme int not null auto_increment primary key,
    idFilme int not null,
    idAtor int not null,
    
    /* Relacionamento com tblFilme */
    
    constraint FK_ator_atorFilme
    foreign key (idAtor)
    references tblAtor (idAtor),
    
    /* Relacionamento com tblEstudio */

    constraint FK_filme_atorFilme
    foreign key (idFilme)
    references tblFilme (idFilme),
    
    unique index (idAtorFilme)
    
);

/*

	tabela roteirista

*/



create table tblRoteirista (

	idRoteirista int not null auto_increment primary key,
    nomeRoteirista varchar(80) not null,
    idSexo int not null,

    constraint FK_sexo_roteirista
    foreign key (idSexo)
    references tblSexo (idSexo),
    
    unique index (idRoteirista)
);

/*

	tabela filme roteirista

*/

create table tblFilmeRoteirista (

	idFilmeRoteirista int not null auto_increment primary key,
    idFIlme int not null,
    idRoteirista int not null,
    
    constraint FK_filme_filmeroteirista
    foreign key (idFilme)
    references tblFilme (idFilme),
    
        
	constraint FK_roteirista_filmeroteirista
    foreign key (idRoteirista)
    references tblRoteirista (idRoteirista),
    
    unique index (idFilmeRoteirista)

);

/*

	tabela roteirista nacionalidade

*/

create table tblRoteiristaNacionalidade (

	idRoteiristaNacionalidade int not null auto_increment primary key,
    idNacionalidade int not null,
    idRoteirista int not null,
    
    constraint FK_nacionalidade_roteiristanacionalidade
    foreign key (idNacionalidade)
    references tblNacionalidade (idNacionalidade),
    
        
	constraint FK_roteirista_roteiristanacionalidade
    foreign key (idRoteirista)
    references tblRoteirista (idRoteirista),
    
    unique index (idRoteiristaNacionalidade)

);

/*

	tabela ator nacionalidade

*/

create table tblAtorNacionalidade (

	idAtorNacionalidade int not null auto_increment primary key,
    idNacionalidade int not null,
    idAtor int not null,
    
    constraint FK_nacionalidade_atornacionalidade
    foreign key (idNacionalidade)
    references tblNacionalidade (idNacionalidade),
    
        
	constraint FK_ator_atornacionalidade
    foreign key (idAtor)
    references tblAtor (idAtor),
    
    unique index (idAtorNacionalidade)

);

/*

	tabela diretor nacionalidade

*/

create table tblDiretorNacionalidade (

	idDiretorNacionalidade int not null auto_increment primary key,
    idNacionalidade int not null,
    idDiretor int not null,
    
    constraint FK_nacionalidade_diretornacionalidade
    foreign key (idNacionalidade)
    references tblNacionalidade (idNacionalidade),
    
        
	constraint FK_diretor_diretornacionalidade
    foreign key (idDiretor)
    references tblDiretor (idDiretor),
    
    unique index (idDiretorNacionalidade)
    
);

show tables;