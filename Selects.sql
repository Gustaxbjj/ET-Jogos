#Genero favorito desse usuario? 1
SELECT FK_cpf_usuario AS GeneroFavdoUsuario FROM usuariogenero WHERE  FK_cod_genero = '8282';

#Quais os jogos mais populares?2
SELECT FK_cod_jogos AS jogos , COUNT(*) AS popularidade FROM usuariojogos GROUP BY FK_cod_jogos ORDER BY popularidade DESC;

#Quais os jogos lançados em 2012?3
SELECT nome FROM jogos WHERE lancamento LIKE '2012%';

#Quais produtos eu posso comprar com  R$20 até R$50? 4
SELECT nome as produtosDisponiveis FROM produtos where preco < 50 AND preco > 20;

#Quais jogos são do gênero moba?5
SELECT FK_cod_genero as jogos FROM generojogo where  FK_cod_jogos IN('122'); 

#Quais foram os metodos de pagamento da Virginia?6
SELECT FK_id_pagamento FROM usuariopagamento WHERE FK_cpf_usuario = '843.423.346-55';

#Em quais jogos eu posso comprar skins e passe?7
SELECT FK_cod_jogos AS jogosRelacionados FROM produtos WHERE nome LIKE 'skins%' OR nome LIKE 'passe%';

#Quais produtos do Minecraft e free fire posso compra?8
SELECT FK_cod_jogos AS jogos,nome AS produtos FROM produtos WHERE  FK_cod_jogos IN('345','352');

#quantos usuarios cadastrados?9s
SELECT count(*) AS quantidadeDeusuarios FROM usuario;

#Quantos usuarios jogaram LOL?
SELECT COUNT(FK_cpf_usuario) AS total_usuarios FROM usuariojogos WHERE FK_cod_jogos LIKE '%431%';

#Qual a quantidade de pessoas que jogaram cada jogo?10
SELECT FK_cod_jogos, COUNT(FK_cpf_usuario) AS total_usuarios FROM usuariojogos GROUP BY FK_cod_jogos ORDER BY total_usuarios DESC;





