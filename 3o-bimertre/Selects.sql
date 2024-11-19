#tela de filtragem
#Nesta tela vamos entender mais sobre o gosto dos nossos usuarios
#pegando o genero favorito deles e recomendando

select  g.nome AS generoEscolhido, j.imgDojogo AS imagem
from genero g  inner join generojogo gj on g.cod = gj.FK_cod_genero
inner join jogos j on j.cod =gj.FK_cod_jogos ;
##############################################################################################
#Tela inicial
#Na tela inicial indicaremos Nivel de popularidade e  jogos de acordo com seu gosto pessoal.

select j.imgDojogo AS imagem, COUNT(*) AS numJogadores
from jogos j inner join usuariojogos uj on j.cod = uj.FK_cod_jogos GROUP BY FK_cod_jogos ORDER BY COUNT(*) DESC; 

select j.imgDojogo AS imagem
from genero g  inner join generojogo gj on g.cod = gj.FK_cod_genero
inner join jogos j on j.cod =gj.FK_cod_jogos GROUP BY g.nome = 'moba';
###############################################################################################

#Tela descrição do jogo
#Vamos entender umm pouco sobre  o jogo? nessa tela veremos 
#especificações do jogo para entendermos melhor
select imgDojogo,nome,descricao from jogos;  
###############################################################################################

#Tela da loja
select imgDojogo, nome from jogos ;

###############################################################################################

#Tela de Produto
#puxando as informações dos produtos especificos
select j.imgDojogo AS imagem, p.nome AS nomeProduto, p.preco AS Preço 
from jogos j inner join produtos p on j.cod = p.FK_cod_jogos WHERE j.cod = "352";
###############################################################################################

##tela do carrinho
select imgDoProduto As Foto, nome, descricao As descrição, quantidade,
preco As preço from produtos where cod = '484';

###############################################################################################
#tela de perfil
select login,email,senha from usuario where login = "Gustavo";

################################################################################################


