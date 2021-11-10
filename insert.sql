/*

	insert, updates e deletes

*/

use dbFilmesTurmaB;

/*

	insert individual

*/

insert into tblGenero (nomeGenero)
				values ('Drama');

select * from tblgenero;

/*

	insert de múltiplos valores

*/

insert into tblGenero (nomeGenero)
				values ('Aventura'),
						('Animação'),
						('Musical'),
                        ('Policial'),
                        ('Fantasia');

/*

insert classificacao

*/

insert into tblClassificacao (nomeClassificacao)
							values ('+10'),
								('+12'),
                                ('+14'),
                                ('+16'),
								('+18'),
                                ('Livre');

/*

	inserindo filmes

*/

insert into tblFilme (nomeFilme,
						duracaoFilme,
						dataLancamentoFilme,
						dataRelancamentoFilme,
						sinopseFilme,
						nomeOriginalFilme,
						fotoFilme,
                        idClassificacao) values (
                        'UM SONHO DE LIBERDADE',
                        '02:20:00',
                        '1995-01-25',
                        null,
                        'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton (Bob Gunton), o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley (Clancy Brown) que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding (Morgan Freeman), um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.',
                        'The Shawshank Redemption',
                        'filme01.jpg',
                        4
                        ),
                        (
                        'O REI LEÃO',
                        '01:29:00',
                        '1994-07-08',
                        '2011-08-26',
                        'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
                        'The Lion King',
                        'foto02.png',
                        6
                        );

/*

	tabela Filme Genero

*/

insert into tblFilmeGenero (idFilme, idGenero)
							values(1, 1),
								(2, 2),
                                (2, 3),
                                (2, 4);
           
/*

	update

*/

update tblFilme set duracaoFilme = '03:00:00' where idFilme = 1;

select * from tblFilme;


/*

	delete de chave estrangeira

*/

delete from tblGenero
	where idGenero = 1;

/*

	Inserindo outro gênero

*/

insert into tblGenero (nomeGenero)
				values('Romance');

/*

	Verificando

*/

select * from tblGenero;

/*

	Deletando

*/

delete from tblGenero
	where idGenero = 8;