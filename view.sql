

/*

	Criando uma view no database - é uma tabela virtual criada com base em uma select que
    já estava processada pelo banco e permite dar uma resposta
    mais agil do que executar o script manualmente.

*/

/*

	Cria uma view

*/

create view vwListaFilme as

	select tblfilme.nomeFilme,
		tblFilme.dataLancamentoFilme,
        tblFilme.sinopseFilme,
        tblClassificacao.nomeClassificacao,
        tblGenero.nomeGenero,
        tblAtor.nomeArtisticoAtor,
        tblAtor.dataNascimentoAtor,
        tblDiretor.nomeDiretor,
        tblRoteirista.nomeRoteirista,
        tblNacionalidade.nomeNacionalidade as Nacionalidade

        from tblClassificacao inner join tblFilme
        /* on tblFilme.idClassificacao = tblClassificacao.idClassificacao */
            on tblClassificacao.idClassificacao = tblFilme.idClassificacao
        inner join tblFilmeGenero
                on tblFilme.idFilme = tblFilmeGenero.idFilme
        inner join tblGenero
            on tblGenero.idGenero = tblFilmeGenero.idGenero
        inner join tblAtorFilme
            on tblFilme.idFilme = tblAtorFilme.idFilme
        inner join tblAtor
            on tblAtor.idAtor = tblAtorFilme.idAtor
		inner join tblatornacionalidade
			on tblAtor.idAtor = tblatornacionalidade.idAtor
		inner join tblnacionalidade
			on tblNacionalidade.idNacionalidade = tblatornacionalidade.idNacionalidade
		inner join tblFilmeDiretor
			on tblFilme.idFilme = tblFilmeDiretor.idFilme
		inner join tblDiretor
			on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
        inner join tblFilmeRoteirista
            on tblFilme.idFilme = tblFilmeRoteirista.idFilme
        inner join tblRoteirista
            on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista

        order by tblFilme.nomeFilme asc, tblAtor.nomeAtor desc;

/*

		permite visualizar as colunas virtuais de uma view

*/

desc vwListaFilme;

/*

	Permite visualizar as views e tabelas do banco

*/

show tables;

/*

	Premite rodar uma view

*/

select * from vwListaFilme;

/*

	Permite alterar o script da view

*/

alter view vwListaFilme as
	
	select tblfilme.nomeFilme,
		tblFilme.dataLancamentoFilme,
        tblFilme.sinopseFilme,
        tblClassificacao.nomeClassificacao,
        tblGenero.nomeGenero,
        tblAtor.nomeArtisticoAtor,
        tblAtor.dataNascimentoAtor,
        tblDiretor.nomeDiretor,
        tblRoteirista.nomeRoteirista,
        tblNacionalidade.nomeNacionalidade as Nacionalidade

        from tblClassificacao inner join tblFilme
        /* on tblFilme.idClassificacao = tblClassificacao.idClassificacao */
            on tblClassificacao.idClassificacao = tblFilme.idClassificacao
        inner join tblFilmeGenero
                on tblFilme.idFilme = tblFilmeGenero.idFilme
        inner join tblGenero
            on tblGenero.idGenero = tblFilmeGenero.idGenero
        inner join tblAtorFilme
            on tblFilme.idFilme = tblAtorFilme.idFilme
        inner join tblAtor
            on tblAtor.idAtor = tblAtorFilme.idAtor
		inner join tblatornacionalidade
			on tblAtor.idAtor = tblatornacionalidade.idAtor
		inner join tblnacionalidade
			on tblNacionalidade.idNacionalidade = tblatornacionalidade.idNacionalidade
		inner join tblFilmeDiretor
			on tblFilme.idFilme = tblFilmeDiretor.idFilme
		inner join tblDiretor
			on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
        inner join tblFilmeRoteirista
            on tblFilme.idFilme = tblFilmeRoteirista.idFilme
        inner join tblRoteirista
            on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista

			
		group by tblGenero.nomeGenero, tblAtor.nomeAtor
        order by tblFilme.nomeFilme asc, tblAtor.nomeAtor desc;

/*

	Permite deletar a view

*/

drop view vwListaFilme;