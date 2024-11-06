# - Selecione todos os vendedores com comissão tipo B
SELECT * FROM vendedor WHERE faixa_comissao = "B";
# - Selecione todos os clientes de AL
SELECT * FROM cliente WHERE estado = "AL";
# - Selecione todos os pedidos que contenham o produto 4
SELECT * FROM itempedido WHERE FK_cod_produto = 4;
# - Selecione todos os pedidos com o prazo de
# entrega maior que 12 dias
SELECT * from pedido WHERE prazo_entrega > 12;
# - Selecione todos os produtos do pedido 3
SELECT * FROM itempedido WHERE FK_num_pedido = 3;
# - Apresente os vendedores em ordem crescente dos salarios
SELECT * FROM vendedor ORDER BY salario_fixo;


# Selecionem o valor do produto mais caro e o mais barato
SELECT max(valor_unitario) AS maior, min(valor_unitario) AS menor FROM produto;

# Selecionem o custo médio dos produtos

SELECT AVG(valor_unitario) FROM produto;

# Quantas vendas o vendedor 3 fez?
SELECT COUNT(*) FROM pedido WHERE FK_cod_vendedor = 3;

# Qual a quantidade média de produtos pedidos?
SELECT AVG(quantidade) FROM itempedido;

# Qual o valor caso o cliente compre 10 produtos 1?
SELECT valor_unitario * 10 FROM produto WHERE cod_produto = 1;

# Qual o valor do salário do vendedor 1 caso ele receba um aumento de 12% do salário?
SELECT salario_fixo * 1.12 FROM vendedor WHERE cod_vendedor = 1;

# Qual a quantidade total de produtos vendidos?
SELECT SUM(quantidade) FROM itempedido;