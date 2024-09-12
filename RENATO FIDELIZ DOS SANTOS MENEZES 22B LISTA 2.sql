SELECT
    pedidos.pedido_id,
    pedidos.data_pedido,
    clientes.nome,
    clientes.email
FROM
    pedidos
INNER JOIN
    clientes
ON
    pedidos.cliente_id = clientes.cliente_id;
    
    SELECT
    campanhas.campanha_id,
    campanhas.nome AS nome_campanha,
    clientes.cliente_id,
    clientes.nome AS nome_cliente
FROM
    participacoes
INNER JOIN
    campanhas
ON
    participacoes.campanha_id = campanhas.campanha_id
INNER JOIN
    clientes
ON
    participacoes.cliente_id = clientes.cliente_id;
    
    orcamentos.orcamento_id,
    orcamentos.descricao AS descricao_orcamento,
    transacoes.transacao_id,
    transacoes.valor AS valor_transacao
FROM
    transacoes
RIGHT JOIN
    orcamentos
ON
    transacoes.orcamento_id = orcamentos.orcamento_id;
    
    SELECT
    prontuarios.prontuario_id,
    prontuarios.outros_detalhes,
    consultas.consulta_id,
    consultas.medico,
    consultas.data_consulta
FROM
    prontuarios
LEFT JOIN
    consultas
ON
    prontuarios.prontuario_id = consultas.prontuario_id;
    
    SELECT
    produtos.produto_id,
    produtos.nome_produto,
    entregas.entrega_id,
    entregas.data_entrega
FROM
    produtos
LEFT JOIN
    entregas
ON
    produtos.produto_id = entregas.produto_id;