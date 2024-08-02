insert into usuario(cpf,senha,login,email) values
('123.234.345-12', '2984','Gustavo', 'tgfs'),
 ('353.524.234-14', '3012','karol', 'mks'), 
 ('543.213.546-45', '2234','Pablo', 'png');
 
insert into jogos(cod,nome,descricao,genero,lancamento) values
('431','LOL','aventuras extraordinarias','moba', '2009-09-23'),
('345','Minecraft','Use sua imaginação','aventura', '2012-02-15'),
('352','free fire','Muita ação e aventura','ação', '2002-04-30');

insert into produtos(cod,descricao,nome,preco) values
('474', 'Compre seus personagens e skins favoritas no LOL', 'RP', 'R$30'),
('484', 'Compre	 suas skins preferidas no free fire', 'Diamantes', 'R$20'),
('634', 'Compre suas skins e texturas preferidas', 'Minecoins', 'R$49');

insert into pagamento(id, FK_cpf_usuario, FK_cod_produtos) values
('23450964','123.234.345-12','474'),
('36455834','353.524.234-14','484'),
('16435436', '543.213.546-45', '634');
