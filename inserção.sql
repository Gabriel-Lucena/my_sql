
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
                    duracaoFilme = '02:00:00',
                    dataLancamentoFilme = '1964-07-10',
                    dataRelancamentoFilme = null,
                    sinopseFilme = 'Manuel (Geraldo Del Rey) é um vaqueiro que se revolta contra a exploração imposta pelo coronel Moraes (Mílton Roda) e acaba matando-o numa briga. Ele passa a ser perseguido por jagunços, o que faz com que fuja com sua esposa Rosa (Yoná Magalhães). O casal se junta aos seguidores do beato Sebastião (Lídio Silva), que promete o fim do sofrimento através do retorno a um catolicismo místico e ritual. Porém ao presenciar a morte de uma criança Rosa mata o beato. Simultaneamente Antônio das Mortes (Maurício do Valle), um matador de aluguel a serviço da Igreja Católica e dos latifundiários da região, extermina os seguidores do beato.',
                    fotoFilme = 'filme02.jpg',
                    idClassificacao = 3,
                    quantidadeFilme = 5
                    where idFilme = 2;
                    
insert into tblAtor (nomeAtor,
					nomeArtisticoAtor,
                    dataNascimentoAtor,
                    dataFalecimentoAtor,
                    biografiaAtor,
                    fotoAtor,
                    idSexo) values 
					("Geraldo Homem D'El Rey Silva",
                    'Geraldo Del Rey',
					'1930-10-29',
                    '1993-04-25',
                    null,
                    'fotoAtor022.png',
                    1
					) ,
                    ('Yoná Magalhães Gonçalves Mendes da Costa',
                    'Yoná Magalhães',
                    '1935-08-07',
                    '2015-10-20',
                    null,
                    'fotoAtor12.png',
                    2
                    ) , 
                    ('Othon José de Almeida Bastos',
                    'Othon Bastos',
                    '1933-05-23',
                    null,
                    null,
                    'fotoAtor030.png',
                    1);

insert into tblDiretor (nomeDiretor,
						dataNascimentoDiretor,
                        nomeArtisticoDiretor,
                        biografiaDiretor,
                        foto,
                        idSexo) values
                        ('Glauber de Andrade Rocha',
                        '1939-03-14',
                        'Glauber Rocha',
                        '- O nome Glauber foi uma homenagem de seus pais ao cientista alemão Johann Rudolf Glauber, que descobriu no século XVII o sulfato de sódio;

						- Chegou a cursar, durante pouco mais de um ano, o curso de Direito da Universidade Federal da Bahia;

						- Em 1958 era o responsável pela coluna policial do recém-formado Jornal da Bahia;

						- Chegou a realizar o curta-metragem "Cruz na Praça", único de seus filmes que não foi concluído devido à falta de sonorização;

						- Foi no curta-metragem "Amazonas, Amazonas" que teve seu primeiro contato com o cinema a cores;

						- "Terra em Transe" foi selecionado para a mostra competitiva do Festival de Cannes apesar da oposição do Itamaraty, que indicou para o festival "Todas as Mulheres do Mundo", de Domingos de Oliveira;

						- Foi preso em novembro de 1965, por estar em um protesto contra os militares durante uma reunião da Organização dos Estados Americanos (OEA) no Rio de Janeiro. Permaneceu 23 dias na prisão;

						- Viveu em exílio entre os anos de 1971 e 1976;

						- É pai do também diretor Eryk Rocha.',
                        'fotoDiretor01.png',
                        1
                        );

select * from tblatorfilme;

select * from tblFilme;

insert into tblAtorFilme (idFilme,
							idAtor) values (4,1), (4,2), (4,3), (2,4), (2,5), (2,6);
select * from tblAtor;

show tables;

use dbfilmesturmab;

select * from tblFilme;
select * from tblAtor;
select * from tblDiretor;
select * from tblclassificacao;

alter table tblDiretor
	add column dataFalecimentoDiretor date;

update tblDiretor set dataFalecimentoDiretor = '1981-08-22' where idDiretor = 1;

select * from tblRoteirista;

insert into tblRoteirista (nomeRoteirista,idSexo) values (
                        'Walter Lima Jr.',1);

select * from tblNacionalidade;

insert into tblNacionalidade (nomeNacionalidade) values ('Francês');

select * from tblAtorNacionalidade;

insert into tblAtorNacionalidade (idNacionalidade, idAtor) values (2,1),(2,2),(2,3),(1,4),(1,5),(1,6);

select * from tblDiretorNacionalidade;

select * from tblDiretor;

insert into tblDiretorNacionalidade (idNacionalidade, idDiretor) values (1, 1), (2, 2);


select * from tblRoteiristaNacionalidade;

select * from tblRoteirista;	

insert into tblRoteiristaNacionalidade (idNacionalidade, idRoteirista) values (3, 1), (1, 2), (3, 2);

select * from tblEstudio;

update tblNacionalidade set nomeNacionalidade = 'Francesa' where idNacionalidade = 3;

insert into tblEstudio (nomeEstudio) values ('Georges Méliès'), ('Paramount Pictures');


select * from tblEstudioFIlme;

select * from tblFilme;

insert into tblEstudioFilme (idFilme, idEstudio) values (1,1), (3, 2);

select * from tblFilmeDiretor;

select * from tblDiretor;

insert into tblFilmeDiretor (idFilme, idDiretor) values (1,2), (2,1);

