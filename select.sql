
/*

	select - especifica as colunas que serão visualizadas
	from - especifica as tabelas que serão utilizadas na consulta
    where - especifica o critério de filtro

*/

/*

	Permite visualizar todas as colunas e todos os registros de uma tabela

*/

select * from tblFilme;

/*

	Permite visualizar colunas específicas da tabela

*/

select nomeFilme, sinopseFilme from tblFilme;

/*

	

*/

select tblFilme.nomeFilme, tblFilme.sinopseFilme
	from tblFilme;

/*

	Apelido

*/

select nomeFilme, duracaoFilme, sinopseFilme
	from tblFilme;
    
/*

	as - significa alias, permite criar um apelido para o nome
		 de uma coluna ou de uma tabela.

*/

select nomeFilme as nomeDoFilme, duracaoFilme as '' , sinopseFilme
	from tblFilme as filme;

/*

	like - busca pela igualdade
    like + % (no início) - busca pelo término da string
    like + % (no final) - busca pelo começo da string
    like + % (no começo e final) - busca por qualquer parte da string

*/

select nomeFilme, sinopseFilme
	from tblFilme
    where nomeFilme like '%liberdade%';
