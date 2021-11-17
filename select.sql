
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

	Operadores de comparação:
    =
    >
    <
    <=
    >=
    <> - diferente
    like:
		like - busca pela igualdade
		like + % (no início) - busca pelo término da string
		like + % (no final) - busca pelo começo da string
		like + % (no começo e final) - busca por qualquer parte da string

*/

select nomeFilme, sinopseFilme
	from tblFilme
    where nomeFilme like '%liberdade%';
    
/*
*/

select * from tblFilme;

alter table tblFilme
	add column quantidadeFilme int;
    
update tblFilme set quantidadeFilme = 5 where idFilme = 1;

update tblFilme set quantidadeFilme = 8 where idFilme = 2;

/*



*/

select * from tblFIlme
	where quantidadeFilme <= 6;

/*

Exemplo de utilização de operadores lógicos

*/

select * from tblFilme
	where quantidadeFilme >= 6 and quantidadeFilme <= 10;

select * from tblFilme
	where quantidadeFilme <= 6 or quantidadeFilme <= 10;

select * from tblFilme
	where not (quantidadeFilme >= 6 and quantidadeFilme <= 10);

insert into tblFilme (nomeFilme,
						duracaoFilme,
						dataLancamentoFilme,
						dataRelancamentoFilme,
						sinopseFilme,
						nomeOriginalFilme,
						fotoFilme,
                        idClassificacao,
                        quantidadeFilme) values (
                        'FORREST GUMP - O CONTADOR DE HISTÓRIAS',
                        '02:20:00',
                        '1995-12-07',
                        null,
                        'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
                        'Forrest Gump',
                        'filme03.jpg',
                        3,
                        4
                        ),
                        (
                        'O ENCOURAÇADO POTEMKIN',
                        '01:15:00',
                        '1925-12-24',
                        null,
                        'Em 1905, na Rússia czarista, aconteceu um levante que pressagiou a Revolução de 1917. Tudo começou no navio de guerra Potemkin quando os marinheiros estavam cansados de serem maltratados, sendo que até carne estragada lhes era dada com o médico de bordo insistindo que ela era perfeitamente comestível. Alguns marinheiros se recusam em comer esta carne, então os oficiais do navio ordenam a execução deles. A tensão aumenta e, gradativamente, a situação sai cada vez mais do controle. Logo depois dos gatilhos serem apertados Vakulinchuk (Aleksandr Antonov), um marinheiro, grita para os soldados e pede para eles pensarem e decidirem se estão com os oficiais ou com os marinheiros. Os soldados hesitam e então abaixam suas armas. Louco de ódio, um oficial tenta agarrar um dos rifles e provoca uma revolta no navio, na qual o marinheiro é morto. Mas isto seria apenas o início de uma grande tragédia.',
                        'Броненосец Потёмкин',
                        'foto04.png',
                        3,
                        10
                        );

select * from tblClassificacao;

select  * from tblFilme;

/*



*/

select * from tblFilme
	where quantidadeFilme = 5 or
		quantidadeFilme = 2 or
        quantidadeFilme = 8 or
        quantidadeFilme = 10;

/*

	in - permite buscar no mesmo atributo por vários valores, não precisando escrever o atributo várias vezes, porém
		 só funcionado com operador lógico or.

*/

select * from tblFilme
	where quantidadeFilme in (5,2,8,10);

select * from tblFilme;

/*

	between - retorna os dados em um intervalo de valores.

*/

select * from tblFilme
	where quantidadeFilme between 6 and 10;

select * from tblFilme
	where quantidadeFilme not between 6 and 10;

/*

	Ordenação de dados

*/

/*

	order by asc - ordena de forma crescente.

*/

select * from tblFilme order by nomeFilme asc;

/*

	order by desc - ordena de forma decrescente.

*/

select * from tblFilme order by nomeFilme desc;

/*

	

*/

select * from tblFilme order by nomeFilme asc, duracaoFilme desc;

/*

	Limit - Limita a quantidade de resultados do select.

*/

select * from tblFilme limit 2;

/*

	Somente o 1º registro da tabela.

*/

select * from tblFilme order by idFilme asc limit 1;

/*

	Somente o último registro da tabela.

*/

select * from tblFilme order by idFilme desc limit 1;

/*

	count - retorna a quantidade de itens do select.

*/

select count(*) as quantidadeFilme from tblFilme;

select count(nomeFilme) as quantidadeNomeFilme,
		count(dataRelancamentoFilme) as quantidadeFilmeDataRelancamento
        from tblFilme;

select count(*) as quantidadeClassificacao from tblFilme
	where idClassificacao = 4;

/*

	min - retorna o menor valor do select.

*/

select min(quantidadeFilme) as quantidadeMinimaFilme from tblFilme;

/* 
	max - retorna o maior valor do select.
*/

select max(quantidadeFilme) as quantidadeMaximaFilme from tblFilme;

/*

	sum() - realiza a soma de valores de uma coluna.

*/

select sum(quantidadeFilme) as totalFilme from tblFilme;

/*

	round() - realiza a média aritmética.

*/

select round(avg(quantidadeFilme), 0) as mediaFilme from tblFilme;
