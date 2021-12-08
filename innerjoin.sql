use dbfilmesturmab;

select * from tblgenero;

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
            
		where year(tblAtor.dataNascimentoAtor) >= '1800'
        
        order by tblAtor.nomeArtisticoAtor asc;

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
            
        order by tblFilme.nomeFilme asc, tblAtor.nomeAtor desc
        
        ;
        
        
        select * from tblroteirista;
        select * from tblFilme;
        
        insert into tblFilmeRoteirista (idFilme, idRoteirista) values (1,1), (2,2), (2,3);
        select * from tblfilmeroteirista;
        select * from tblfilmediretor;
        
        
select tblAtor.nomeAtor,
		tblNacionalidade.nomeNacionalidade,
        tblSexo.nomeSexo
        
        from tblAtorNacionalidade inner join tblAtor
			on tblAtor.idAtor = tblAtorNacionalidade.idAtor
		inner join tblNacionalidade
			on tblnacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade
		inner join tblSexo
			on tblSexo.idSexo = tblAtor.idSexo
		;

select tblFilme.nomeFilme,
		tblFilme.dataLancamentoFilme,
        tblFilme.sinopseFilme,
        tblClassificacao.nomeClassificacao,
        tblGenero.nomeGenero,
        tblAtor.nomeAtor,
        tblAtor.dataNascimentoAtor,
        tblNacionalidade.nomeNacionalidade,
        tblDiretor.nomeDiretor,
        tblRoteirista.nomeRoteirista
        
        from tblFilme inner join tblClassificacao
			on tblClassificacao.idClassificacao = tblFilme.idClassificacao
		inner join tblFilmeGenero
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		inner join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero
		inner join tblAtorFilme
			on tblFilme.idFilme = tblAtorFilme.idFilme
		inner join tblAtor
			on tblAtor.idAtor = tblAtorFilme.idAtor
		inner join tblAtorNacionalidade
			on tblAtor.idAtor = tblAtorNacionalidade.idAtor
		inner join tblNacionalidade
			on tblNacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade
		inner join tblFilmeDiretor
			on tblFilme.idFilme = tblFilmeDiretor.idFilme
		inner join tblDiretor
			on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
		inner join tblFilmeRoteirista
			on tblFilme.idFilme = tblFilmeRoteirista.idFilme
		inner join tblRoteirista
			on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista
            
            /*
            
				group by - permite agrupar o resultado do select por colunas específicas,
					ele elimina as repetições e manipula o resultado para mostrar para somente
                    uma vez a ocorrência dos valores.
					P.S.: é muito utilizado quando fazemos relações com diversas tabelas
            */
            
			group by tblGenero.nomeGenero, tblAtor.nomeAtor
			order by tblFilme.nomeFilme asc, tblAtor.nomeAtor desc;

select * from tblnacionalidade;