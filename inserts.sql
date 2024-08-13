insert into usuario(cpf,senha,login,email) values
('123.234.345-12', '2984','Gustavo', 'tgfs@aluno.ifal.edu.br'),
 ('353.524.234-14', '3012','karol', 'mks@aluno.ifal.edu.br'), 
 ('543.213.546-45', '2234','Pablo', 'png@aluno.ifal.edu.br');
 
insert into jogos(cod,nome,descricao,lancamento) values
('431','LOL','aventuras extraordinarias','2009-09-23'),
('345','Minecraft','Use sua imaginação', '2012-02-15'),
('352','free fire','Muita ação e aventura', '2002-04-30');

insert into genero(cod, nome) values
('8282', 'battle royal'),
('5632', 'Moba'),
('3333', 'ação');

insert into produtos(cod,descricao,nome,preco) values
('474', 'Compre seus personagens e skins favoritas no LOL', 'RP', 'R$30'),
('484', 'Compre	 suas skins preferidas no free fire', 'Diamantes', 'R$20'),
('634', 'Compre suas skins e texturas preferidas', 'Minecoins', 'R$49');

insert into pagamento(id, FK_cpf_usuario, FK_cod_produtos) values
('23450964','123.234.345-12','474'),
('36455834','353.524.234-14','484'),
('16435436', '543.213.546-45', '634');

insert into usuariojogos(FK_cpf_usuario, FK_cod_jogos) values 
('123.234.345-12', '431'),
('353.524.234-14','345');

insert into usuariogenero(FK_cpf_usuario,FK_cod_genero) values
('123.234.345-12','8282'),
('353.524.234-14','3333');

insert into usuariosprodutospagamento(FK_cpf_usuario,FK_cod_produtos,FK_id_pagamento)values
('123.234.345-12','474','23450964'),
('353.524.234-14','484','36455834')