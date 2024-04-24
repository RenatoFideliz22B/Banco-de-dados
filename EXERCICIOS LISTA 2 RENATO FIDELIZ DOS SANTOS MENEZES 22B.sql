1.  Contar Produtos em Estoque
Escreva uma consulta que conte o total de produtos disponíveis em estoque.

SELECT SUM(quantidade_estoque) AS quantidade_disponivel
FROM produtos
WHERE produtos > 0;

2. Média de Preços
Escreva uma consulta que calcule a média dos preços dos produtos.

SELECT SUM(preco)
FROM produtos
WHERE preco;

4. Produtos com Preço entre 50 e 150
Escreva uma consulta para selecionar o nome, preco e descricao dos produtos com preço entre 50 e 150.

SELECT AVG(nome, preco)
FROM produtos
WHERE produtos > 50;

UNION

SELECT AVG(nome, preco, descricao)
FROM produtos
WHERE produtos < 150;

5. Listar os 5 Produtos Mais Baratos
Escreva uma consulta para listar o nome e preco dos 5 produtos mais baratos.

SELECT nome, preco
FROM produtos
WHERE AVG(preco) LIMIT 5;

7. Listar Produtos com Descrição
Escreva uma consulta para selecionar o nome e descricao dos produtos que possuem uma descrição (não é nula ou vazia).

SELECT nome, descricao
FROM produtos
WHERE descricao IS NOT NULL;

8. Produtos com Preço Acima da Média
Escreva uma consulta para selecionar o nome e preco dos produtos cujo preço está acima da média dos preços de todos os produtos.

SELECT *
FROM preco
WHERE preco > 168.849800;

12. Selecionar Nome e Descrição de Produtos com Preço Inferior a 100 e em Estoque
Escreva uma consulta para selecionar o nome e descricao dos produtos que têm preço inferior a 100 e uma quantidade em estoque superior a 0.

SELECT nome, descricao 
FROM produtos
WHERE preco < 100;

UNION

SELECT nome, descricao
FROM produtos
WHERE quantidade_estoque 11 % 2;