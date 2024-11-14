
-- Inserindo dados na tabela usuario
insert into usuario(cpf, senha, login, email,imgDoUsuario) values
('123.234.345-12', '2984', 'Gustavo', 'tgfs@aluno.ifal.edu.br', 'imgGustavo'),
('353.524.234-14', '3012', 'karol', 'mks@aluno.ifal.edu.br','imgKarol'),
('543.213.546-45', '2234', 'Pablo', 'pgt@aluno.ifal.edu.br', 'imgPablo'),
('443.313.346-48', '2403', 'Iran', 'isbf@aluno.ifal.edu.br','imgIran'),
('843.423.346-55', '1203', 'Virginia E>', 'lvsg@aluno.ifal.edu.br','imgVirginia'),
('532.078.124-70', '4555', 'Adriely', 'aar@aluno.ifal.edu.br','imgAdriely'),
('543.400.300-50', '6666', 'Eduardo', 'evosg@aluno.ifal.edu.br','imgEduardo');

-- Inserindo dados na tabela jogos
insert into jogos(cod, nome, descricao, imgDoJogo,lancamento) values	
('431', 'LOL', 'aventuras extraordinarias',"imglol" ,'2009-09-23'),
('345', 'Minecraft', 'Use sua imaginação', "imgminecraft",'2012-02-15'),
('352', 'free fire', 'Muita ação e aventura', "imgfreefire",'2002-04-30'),
('312', 'clash royale', 'Uma partida, dois jogadores. Só um sai vitorioso', "imgclashroyal",'2012-02-06'),
('122', 'fornite', 'um jogo e varias aventuras', "imgfortinite",'2012-05-09'),
('900', 'Cod (PC)', 'Muito tiro', "imgcod",'2012-12-01'),
('442', 'GTA V', 'Pura loucura!', "imgGta",'2012-09-17'),
('555', 'valorant', 'alta adrenalina', "imgvalorant",'2017-03-26');

-- Inserindo dados na tabela genero
insert into genero(cod, nome) values
('8282', 'battle royal'),
('3333', 'Moba'),
('3343', 'ação'),
('1234', 'estrategia');

-- Inserindo dados na tabela produtos
insert into produtos(cod, descricao, nome, preco,FK_cod_jogos) values
('474', 'Compre seus personagens e skins favoritas no LOL', 'skins', 30.00, '431'),
('484', 'Compre suas skins preferidas no free fire', 'armas e passe', 20.00, '352'),
('634', 'Compre suas skins e texturas preferidas', 'skins e texturas', 49.00, '345'),
('333', 'Fique feliz, compre suas gemas', 'Gemas', 22.00, '312'),
('444', 'Fique feliz, compre seus Vbaks', 'passe', 90.00, '122'),
('555', 'Fique feliz, compre seus Pontos', 'passe', 30.00, '900'),
('777', 'Fique feliz, compre seu Dinheiro', 'skins de amas e bens', 45.00, '442'),
('888', 'Fique feliz, compre seus VP', 'VP', 10.00, '555');



-- Inserindo dados na tabela pagamento
insert into pagamento(id, formaDePagamento,imgQrcode,FK_cpf_usuario, FK_cod_produtos) values
('23450964', 'pix',"Qrcode",'123.234.345-12', '474'),
('36455834', 'cartão de credito','cartao','353.524.234-14', '484'),
('16435436',  'cartão de credito','cartao','543.213.546-45', '634');




insert into generojogo(FK_cod_genero, FK_cod_jogos) values
('8282','122'),
('3333','345'),
('1234','122');

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
