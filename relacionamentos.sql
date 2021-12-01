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

/*

	Aplicando full join no mysql - como o mysql não possui o comando full join,
    para representar esse resultado é necessário utilizar o comando union ( o
    comando union para unir dois ou mais scripts de select). Criamos um select 
    apenas com o left join e unimos com outro select com o right join.

*/

select tblFilme.nomeFilme,
		tblFilme.duracaoFilme,
        tblFilme.dataLancamentoFilme,
        tblGenero.nomeGenero

		from tblFilme right join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		right join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero

union

select tblFilme.nomeFilme,
		tblFilme.duracaoFilme,
        tblFilme.dataLancamentoFilme,
        tblGenero.nomeGenero

		from tblFilme left join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		left join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero;

/*

	

*/

select * from tblFilmeGenero;

show tables;

select tblFilme.nomeFilme,
		tblFilme.nomeOriginalFilme,
		tblclassificacao.nomeClassificacao,
        tblGenero.nomeGenero,
        tblAtor.nomeArtisticoAtor

        

		from tblFilme inner join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		inner join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero
            
		inner join tblClassificacao
			on tblClassificacao.idClassificacao = tblFilme.idClassificacao
            
		inner join tblatorfilme
			on tblfilme.idfilme = tblatorfilme.idfilme
		inner join tblator
			on tblator.idator = tblatorfilme.idator
		
        order by nomeArtisticoAtor;
            
select * from tblator;

insert into tblgenero (nomeGenero) values ('Histórico');

select * from tblfilmegenero;

insert into tblfilmegenero (idFilme, idGenero) values (4,1), (4,9);

select * from tblClassificacao;
select * from tblfilme;

select * from tblatorfilme;

select tblfilme.nomefilme,
		tblclassificacao.nomeclassificacao,
        tblgenero.nomegenero

			from tblFilme inner join tblClassificacao
			on tblFilme.idClassificacao = tblClassificacao.idClassificacao
            inner join tblfilmegenero
            on tblgenero.idgenero = tblfilmegenero.idgenero;
            
select * from tblfilmegenero;


/**/

select tblFilme.nomeFilme,
		tblFilme.nomeOriginalFilme,
        tblClassificacao.nomeClassificacao,
        tblGenero.nomeGenero,
        tblAtor.nomeAtor
        
        from tblClassificacao inner join tblfilme
			on tblCLassificacao.idClassificacao = tblFilme.idClassificacao
        inner join tblfilmegenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		inner join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero
		inner join tblAtorFilme
			on tblFilme.idFilme = tblAtorFilme.idFilme
		inner join tblAtor
			on tblAtor.idAtor = tblAtorFilme.idAtor
            
		where year(tblAtor.dataNascimentoAtor) >= '1965'
        
        order by tblAtor.nomeArtisticoAtor asc;
        












