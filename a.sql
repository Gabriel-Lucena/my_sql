
insert into tblSexo (nomeSexo) values ('Masculino'), ('Feminino');

select * from tblSexo;

select * from tblAtor;

insert into tblAtor (nomeAtor,
					nomeArtisticoAtor,
                    dataNascimentoAtor,
                    dataFalecimentoAtor,
                    biografiaAtor,
                    fotoAtor,
                    idSexo) values 
					('Александр Павлович Антонов',
                    'Aleksandr Antonov',
					'1898-02-01',
                    '1962-11-23',
                    null,
                    'fotoAtor01.png',
                    1
					) ,
                    ('Сергей Михайлович Эйзенштейн',
                    'Sergueï Mikhailovich Eisenstein',
                    '1898-01-22',
                    '1948-02-11',
                    'Trabalhou como engenheiro para o Exército Vermelho',
                    'fotoAtor02.png',
                    1
                    ) , 
                    ('Григорий Васильевич Александров',
                    'Grigori Aleksandrov',
                    '1903-01-23',
                    '1983-12-16',
                    null,
                    'fotoAtor03.png',
                    1);

select * from tblAtor;

select * from tblFilme;

update tblFilme set nomeFilme = 'VIAGEM À LUA',
					nomeOriginalFilme = 'Le Voyage Dans La Lune',
                    duracaoFilme = '00:16:00',
                    dataLancamentoFilme = '1902-01-01',
                    dataRelancamentoFilme = null,
                    sinopseFilme = 'O professor Barbenfouillis (Georges Méliès) convence seus colegas a participarem de uma viagem de exploração à Lua. Eles partem em uma nave que aterrissa no olho direito da Lua. Lá eles encontram habitantes hostis que o levam ao seu rei. Os terráqueos conseguem fugir quando descobrem que os inimigos viram fumaça a um simples toque de um guarda-chuva.',
                    fotoFilme = 'filme01.jpg',
                    idClassificacao = 6,
                    quantidadeFilme = 5
                    where idFilme = 1;

update tblFilme set nomeFilme = 'DEUS E O DIABO NA TERRA DO SOL',
					nomeOriginalFilme = null,
                    duracaoFilme = '00:16:00',
                    dataLancamentoFilme = '1902-01-01',
                    dataRelancamentoFilme = null,
                    sinopseFilme = 'O professor Barbenfouillis (Georges Méliès) convence seus colegas a participarem de uma viagem de exploração à Lua. Eles partem em uma nave que aterrissa no olho direito da Lua. Lá eles encontram habitantes hostis que o levam ao seu rei. Os terráqueos conseguem fugir quando descobrem que os inimigos viram fumaça a um simples toque de um guarda-chuva.',
                    fotoFilme = 'filme01.jpg',
                    idClassificacao = 6,
                    quantidadeFilme = 5
                    where idFilme = 1;

select * from tblclassificacao;