Select
    co.nome AS corretor,
    COUNT(co.id_corretor) AS Total_negocio
FROM negocio n
JOIN corretor co ON co.id_corretor = n.id_corretor
GROUP BY co.nome
HAVING COUNT(co.id_corretor) >0
ORDER BY co.nome;