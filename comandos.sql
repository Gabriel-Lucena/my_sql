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