
SELECT nome, COUNT(id_tec) as num_tecnologias
FROM empresa_p
JOIN registro ON empresa_p.empresa_pid = registro.id_emp
JOIN relatorio ON registro.ID = relatorio.id_reg
WHERE dia = '2023-07-10'
GROUP BY nome
ORDER BY num_tecnologias DESC
LIMIT 1;

SELECT nome, COUNT(DISTINCT id_tec) AS num_tecnologias
FROM empresa_p
JOIN registro ON empresa_p.empresa_pid = registro.id_emp
JOIN relatorio ON registro.ID = relatorio.id_reg
WHERE dia = '2023-01-10'
GROUP BY nome
ORDER BY num_tecnologias ASC
LIMIT 1;

SELECT COUNT(DISTINCT id_emp) FROM registro
INNER JOIN tecnologia ON registro.id_tec=tecnologia.ID
WHERE area_tec='back-end';

SELECT COUNT(DISTINCT id_emp) FROM registro
INNER JOIN tecnologia ON registro.id_tec=tecnologia.ID
WHERE area_tec!='back-end';
