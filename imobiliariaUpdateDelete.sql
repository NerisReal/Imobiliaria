SELECT 
    id_imovel,
    id_cliente,
    id_corretor,
    data,
    COUNT(*) AS ocorrencias,
    GROUP_CONCAT(id_imovel || '-' || id_cliente || '-' || id_corretor || '-' || data) AS combinacoes
FROM negocio
GROUP BY id_imovel, id_cliente, id_corretor, data
HAVING COUNT(*) > 1;

SELECT 
    id_imovel,
    id_cliente,
    tipo_negocio,
    data,
    CASE 
        WHEN data NOT LIKE '____-__-__' THEN 'Formato inválido'
        WHEN data < '2000-01-01' THEN 'Data muito antiga'
        WHEN data > date('now') THEN 'Data futura'
        ELSE 'Data válida'
    END AS status_data
FROM negocio
WHERE data NOT LIKE '____-__-__' 
   OR data < '2000-01-01'
   OR data > date('now')
ORDER BY data;

DELETE FROM negocio WHERE id_corretor = 1;
DELETE FROM corretor WHERE id_corretor = 1;
DELETE FROM corretor WHERE id_corretor =3;