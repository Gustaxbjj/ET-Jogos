insert into usuario(cpf,senha,login,email) values
('123.234.345-12', '2984','Gustavo', 'tgfs@aluno.ifal.edu.br'),
('353.524.234-14', '3012','karol', 'mks@aluno.ifal.edu.br'), 
('543.213.546-45', '2234','Pablo', 'png@aluno.ifal.edu.br'),
('443.313.346-48', '2403','Iran', 'isbf@aluno.ifal.edu.br'),
('843.423.346-55', '1203','Virginia E>', 'lvsg@aluno.ifal.edu.br'),
('532.078.124-70', '4555','Adriely', 'aar@aluno.ifal.edu.br'),
('543.400.300-50', '6666','Eduardo', 'evosg@aluno.ifal.edu.br')
;
 
insert into jogos(cod,nome,descricao,lancamento) values
('431','LOL','aventuras extraordinarias','2009-09-23'),
('345','Minecraft','Use sua imaginação', '2012-02-15'),
('352','free fire','Muita ação e aventura', '2002-04-30'),
('312','clash royale','Uma partida,dois jogadores. Só um sai vitorioso', '2011-02-6'),
('122','fornite','um jogo e varias aventuras','2016-05-9'),
('900','Cod (PC)','Muito tiro','2000-12-1'),
('442','GTA V','Pura loucura!','2013-9-17'),
('555','valorant','alta adrenalina','2017-3-26');



insert into genero(cod, nome) values
('3522', 'battle royal'),
('4311', 'Moba'),
('3333', 'ação'),
('1234','estrategia'),
('4444','ação'),
('5555','ação'),
('7777','Moba'),
('8888','Moba');


insert into produtos(cod,descricao,nome,preco,) values
('474', 'Compre seus personagens e skins favoritas no LOL', 'RP', 'R$30'),
('484', 'Compre	 suas skins preferidas no free fire', 'Diamantes', 'R$20'),
('634', 'Compre suas skins e texturas preferidas', 'Minecoins', 'R$49'),
('333','Fique feliz compre suas gemas','Gemas','R$20'),
('444','Fique feliz compre seus Vbaks','Vbacks','R$90'),
('555' 'Fique feliz compre seus Pontos','Pontos','R$30'),
('777','Fique feliz compre seu Dinheiro','Dinheiro','R$45'),
('888','Fique feliz compre seus VP','VP','R$10')
;


insert into pagamento(id, FK_cpf_usuario, FK_cod_produtos) values
('23450964','123.234.345-12','474'),
('36455834','353.524.234-14','484'),
('16435436', '543.213.546-45', '634');

insert into usuariojogos(FK_cpf_usuario, FK_cod_jogos) values 
('123.234.345-12', '431'),
('353.524.234-14','345'),
('543.213.546-45','312'),
('543.400.300-50','777');

insert into usuariogenero(FK_cpf_usuario,FK_cod_genero) values
('123.234.345-12','8282'),
('353.524.234-14','3333'),
('123.234.345-12', '4444');

insert into usuariosprodutospagamento(FK_cpf_usuario,FK_cod_produtos,FK_id_pagamento)values
('123.234.345-12','474','23450964'),
('353.524.234-14','484','36455834'),
('543.213.546-45');