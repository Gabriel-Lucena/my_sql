use dbFilmesTurmab;

/*
 
 concat() - permite realizar a concatenação de dados
 
 */

select concat('Filme: ', nomeFilme) as nomeFilme,
    nomeFilme,
    concat(
        'O filme ',
        nomeFilme,
        ' tem duração de: ',
        duracaoFilme
    ) as resultado
from tblFilme;

/*
 
 concat_ws() - permite realizar a concatenação de dados, utilizando um caracter de separação entre os dados
 
 */

select concat_ws(
        'ЯR',
        nomeFilme,
        duracaoFilme,
        dataLancamentoFilme
    ) as resultado
from tblFilme;

/*
 
 locate() - retorna a posição da palavra ou caracter desejado
 
 */

select locate(' a', sinopsefilme) as resultado,
    sinopseFilme
from tblFilme;

/*
 
 reverse - permite inverter o conteúdo em uma coluna
 
 */

select reverse(nomeOriginalFilme) as resultado
from tblFilme;

/*
 
 length ou char_length - retorna a quantidade de caracteres de uma coluna
 
 */

select length(nomeFilme) as quantidade,
    char_length(nomeFilme) as quantidade2
from tblFilme;

/*

    insert (coluna, posição que vai aparecer, quantos caracteres vai apagar, texto que vai adicionar) - permite inserir um novo conteúdo dentro do texto de uma coluna

*/

select insert(sinopseFilme, 5,0, ' videolocadora ') as resultado
	from tblFilme;

/*

	Localizando a palavra na string

*/

select locate(' rei ', sinopsefilme) as resultado,
    sinopseFilme
from tblFilme;

/*

	Substituindo

*/

select insert(sinopseFilme, locate(' rei ', sinopsefilme) , length(' rei '), ' <s>rei</s> ') as resultado
	from tblFilme;

/*

	substr() - permite retirar um pedaço de um conteúdo

*/

select locate(substr(sinopseFilme, 1 ,locate('.', sinopseFilme)), '<a href="pagina.php">saiba mais...</a>') as resultado
	from tblFilme;

select substr(sinopseFilme, 1 ,locate('.', sinopseFilme)) as resultado
	from tblFilme;

/*

	replace() - permite localizar um conteúdo e subtituir por outra coisa

*/

select replace(sinopseFilme, ' a ', ' <s>а</s> ') as resultado
	from tblFilme;

/*

	Adicionando a coluna valor

*/

alter table tblFilme
	add column valor float;

alter table tblFilme
	change valor valorFilme float;

/*

	Mostrando o preço total dos filmes

*/

select nomeFilme, quantidadeFilme, valorFilme , round((quantidadeFilme * valorFilme), 2) as valorTotal
	from tblFIlme;

/*



*/

select nomeFilme, 
		quantidadeFilme,
		concat('R$ ', valorFilme),
        concat('R$ ', round((quantidadeFilme * valorFilme), 2)) as valorTotal,
        concat('R$ ', round(valorFilme * ((100-10)/100), 2)) as valorComDesconto
	from tblFIlme; 





