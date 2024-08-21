#Genero favorito desse usuario?
select FK_cpf_usuario as GeneroFavdoUsuario from usuariogenero where  FK_cod_genero = '8282';

#Quais jogos contem esses codigos
SELECT nome FROM jogos WHERE cod IN ('431', '345', '352');

#Quais os jogos lançados em 2012?
SELECT nome FROM jogos WHERE lancamento LIKE '2012%';

#Quais produtos eu posso comprar com  R$20 até R$50? 
SELECT nome as produtosDisponiveis FROM produtos where preco < 50 AND preco > 20;

#Quais jogos são do gênero moba?
SELECT FK_cod_genero as jogos FROM generojogo where  FK_cod_jogos IN('122'); 

#Quais foram os metodos de pagamenrto da Virginia?



