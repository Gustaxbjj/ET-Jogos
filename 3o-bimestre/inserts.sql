
-- Inserindo dados na tabela usuario
insert into usuario(cpf, senha,imgUsuario, login, email) values
('123.234.345-12', '2984', 'imgGustaco' ,'Gustavo', 'tgfs@aluno.ifal.edu.br'),
('353.524.234-14', '3012', 'imgKarol','karol', 'mks@aluno.ifal.edu.br'),
('543.213.546-45', '2234','imgPablo' ,'Pablo', 'pgt@aluno.ifal.edu.br'),
('443.313.346-48', '2403','imgIran' ,'Iran', 'isbf@aluno.ifal.edu.br'),
('843.423.346-55', '1203', 'imgVirginia','Virginia E>', 'lvsg@aluno.ifal.edu.br'),
('532.078.124-70', '4555', 'imgAdriele','Adriely', 'aar@aluno.ifal.edu.br'),
('543.400.300-50', '6666', 'imgEduardo','Eduardo', 'evosg@aluno.ifal.edu.br');

-- Inserindo dados na tabela jogos
insert into jogos(cod, nome, imgDoJogo ,descricao, lancamento) values	
('431', 'LOL', 'foto lol'  ,'aventuras extraordinarias', '2009-09-23'),
('345', 'Minecraft', 'foto mine','Use sua imaginação', '2012-02-15'),
('352', 'free fire', 'foto free fire','Muita ação e aventura', '2002-04-30'),
('312', 'clash royale', 'foto clash royal','Uma partida, dois jogadores. Só um sai vitorioso', '2012-02-06'),
('122', 'fornite', 'foto fortinite','um jogo e varias aventuras', '2012-05-09'),
('900', 'Cod (PC)', 'foto cod','Muito tiro', '2012-12-01'),
('442', 'GTA V', 'foto gta','Pura loucura!', '2012-09-17'),
('555', 'valorant', 'foto valorant','alta adrenalina', '2017-03-26');

-- Inserindo dados na tabela genero
insert into genero(cod, nome) values
('8282', 'battle royal'),
('3333', 'Moba'),
('3343', 'ação'),
('1234', 'estrategia');

-- Inserindo dados na tabela produtos
insert into produtos(cod, descricao, nome, fotoProduto,preco, FK_cod_jogos) values
('474', 'Compre seus personagens e skins favoritas no LOL', "Foto produto 1" ,'skins', 30.00, '431'),
('484', 'Compre suas skins preferidas no free fire',  "Foto produto 2" ,'armas e passe', 20.00, '352'),
('634', 'Compre suas skins e texturas preferidas',  "Foto produto 3" ,'skins e texturas', 49.00, '345'),
('333', 'Fique feliz, compre suas gemas',  "Foto produto 4" ,'Gemas', 22.00, '312'),
('444', 'Fique feliz, compre seus Vbaks',  "Foto produto 5" ,'passe', 90.00, '122'),
('555', 'Fique feliz, compre seus Pontos',  "Foto produto 6" ,'passe', 30.00, '900'),
('777', 'Fique feliz, compre seu Dinheiro',  "Foto produto 7" ,'skins de amas e bens', 45.00, '442'),
('888', 'Fique feliz, compre seus VP',  "Foto produto 8" ,'VP', 10.00, '555');



-- Inserindo dados na tabela pagamento
insert into pagamento(id, formaDepagar ,FK_cpf_usuario, FK_cod_produtos) values
('23450964', 'pix','123.234.345-12', '474'),
('36455834', 'cartão de credito','353.524.234-14', '484'),
('16435436',  'cartão de debito','543.213.546-45', '634');


insert into generojogo(FK_cod_genero, FK_cod_jogos) values
('8282','122'),
('3333','345'),
('1234','122'),
('3333','431'),
('3343','442');

insert into usuariojogos(FK_cpf_usuario, FK_cod_jogos) values 
('123.234.345-12', '431'),
('353.524.234-14', '345'),
('543.213.546-45', '312'),
('543.400.300-50', '900'),
('843.423.346-55','900'),
('532.078.124-70', '431');

insert into usuariopagamento(FK_cpf_usuario, FK_id_pagamento) values
('353.524.234-14', '36455834'),
('543.400.300-50','16435436'),
('843.423.346-55','36455834');

-- Inserindo dados na tabela usuariogenero
insert into usuariogenero(FK_cpf_usuario, FK_cod_genero) values
('123.234.345-12', '8282'),
('353.524.234-14', '3333'),
('123.234.345-12', '3343');

-- Inserindo dados na tabela usuariosprodutospagamento
insert into usuariosprodutospagamento(FK_cpf_usuario, FK_cod_produtos, FK_id_pagamento) values
('123.234.345-12', '474', '23450964'),
('353.524.234-14', '484', '36455834'),
('543.213.546-45', '634', '16435436');
