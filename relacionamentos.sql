use dbfilmesturmab;

/*

	Relacionamento entre tabelas no bd
    Forma 01 de fazer relacionamento - (no where)

*/

select tblFilme.nomeFilme, tblFilme.duracaoFilme, tblFilme.dataLancamentoFilme, tblGenero.nomeGenero

	from tblFilme, tblGenero, tblFilmeGenero
    where tblFilme.idFIlme = tblFilmeGenero.idFilme and
		tblGenero.idGenero = tblFilmeGenero.idGenero;


/*

	Forma 02 de fazer relacionamento - (no from)
    
    Faz com que o banco tenha uma perfomance melhor na geração do resultado 

		inner join - retorna dados que foram relacionados entre a tabela da esquerda e que contém relação com a tabela da direita
*/
select tblFilme.nomeFilme,
		tblFilme.duracaoFilme,
        tblFilme.dataLancamentoFilme,
        tblGenero.nomeGenero

		from tblFilme inner join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		inner join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero;

/*
        left join - retorna dados que foram relacionados entre a tabela da esquerda e que contém relação com a tabela da direita,
				porém também retorna os dados da tabela da esquerda que não foram relacionados com a tabela da direita
*/

select tblFilme.nomeFilme,
		tblFilme.duracaoFilme,
        tblFilme.dataLancamentoFilme,
        tblGenero.nomeGenero

		from tblFilme left join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		left join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero;


/*
        right join - retorna dados que foram relacionados entre a tabela da esquerda e que contém relação com a tabela da direita,
				porém também retorna os dados da tabela da direita que não foram relacionados com a tabela da esquerda

*/

select tblFilme.nomeFilme,
		tblFilme.duracaoFilme,
        tblFilme.dataLancamentoFilme,
        tblGenero.nomeGenero

		from tblFilme right join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		right join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero;


select tblFilme.nomeFilme,
		tblFilme.duracaoFilme,
        tblFilme.dataLancamentoFilme,
        tblGenero.nomeGenero

		from tblFilme inner join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		inner join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero;

select * from tblFilmeGenero;




























