use dbFilmesturmab;

show tables;

select * from vwListaFilme;

/*

	Procedures

*/
DELIMITER $$
create procedure procListarFilmes(IN idGenero int)

	BEGIN

		/*

			Condição para listar os filmes com filtro pelo id do genero

        */

		if idGenero > 0 then

			select tblFilme.nomeFilme,
					tblFilme.dataLancamentoFilme,
					tblGenero.nomeGenero as generoDoFilme
			from tblFilme inner join tblFilmeGenero
				on tblFilme.idFilme = tblFilmeGenero.idFilme
			inner join tblGenero
				on tblGenero.idGenero = tblFilmeGenero.idGenero
				where tblGenero.idGenero = idGenero;

		/*

			Condição para listar todos os filmes independente do id do gênero

		*/

		elseif idGenero = 0 then

  			select tblFilme.nomeFilme,
					tblFilme.dataLancamentoFilme,
					tblGenero.nomeGenero as generoDoFilme
			from tblFilme inner join tblFilmeGenero
				on tblFilme.idFilme = tblFilmeGenero.idFilme
			inner join tblGenero
				on tblGenero.idGenero = tblFilmeGenero.idGenero;

        end if;

	END $$

/*

	IN - utiliza-se apenas quando tivermos chegada de argumentos
	OUT - utiliza-se quando a procedure terá aprenas o retorno de saída
	INOUT - utiliza-se quando tivermos a entrada de argumentos e retorno de saída

*/

DELIMITER $$
create procedure procListarFilmes(IN idGenero int)

	BEGIN

        declare sqlPrincipal text;
		declare sqlCriterioGenero text;
        declare sqlCompleto text;

        set @comandoPrincipal := '
					select tblFilme.nomeFilme,
						tblFilme.dataLancamentoFilme,
						tblGenero.nomeGenero as generoDoFilme

			from tblFilme inner join tblFilmeGenero
				on tblFilme.idFilme = tblFilmeGenero.idFilme
			inner join tblGenero
				on tblGenero.idGenero = tblFilmeGenero.idGenero';

		if idGenero > 0 then
			set @comando := concat(@comandoPrincipal, ' where idGenero = ', idGenero);
		else
			set @comando := @comandoPrincipal;
        end if;

		prepare scriptSql from @comando;
		execute scriptSql;

	END $$

  # drop procedure procListarFilmes;

  call procListarFIlmes(1);
