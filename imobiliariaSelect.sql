-- 1. Consulta básica
SELECT 
    i.id_imovel,
    i.tipo_imovel,
    i.endereco,
    i.valor,
    p.nome AS proprietario,
    p.telefone AS telefone_proprietario
FROM imovel i
INNER JOIN proprietario p ON i.id_proprietario = p.id_proprietario
ORDER BY i.valor DESC;

-----Consulta com filtros
SELECT 
    i.id_imovel,
    i.tipo_imovel,
    i.endereco,
    i.valor,
    i.descricao
FROM imovel i
WHERE i.valor >1000000
AND i.id_imovel NOT IN (
    SELECT id_imovel FROM negocio WHERE tipo_negocio = 'Venda'
)
ORDER BY i.tipo_imovel, i.valor;

-- 3. Consulta com JOIN múltiplo
SELECT 
    n.tipo_negocio,
    n.data,
    i.endereco AS imovel,
    i.valor,
    c.nome AS cliente,
    c.telefone AS telefone_cliente,
    cr.nome AS corretor,
    p.nome AS proprietario
FROM negocio n
INNER JOIN imovel i ON n.id_imovel = i.id_imovel
INNER JOIN cliente c ON n.id_cliente = c.id_cliente
INNER JOIN corretor cr ON n.id_corretor = cr.id_corretor
INNER JOIN proprietario p ON n.id_proprietario = p.id_proprietario
ORDER BY n.data DESC;


