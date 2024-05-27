SELECT *
FROM nome
WHERE especialidade;

SELECT *
FROM nome
WHERE especialidade = 'Cardiologia';

SELECT *
FROM Medicos
WHERE data_contratacao >= 2020;

SELECT *
FROM Medicos
ORDER BY data_contratacao BETWEEN <= 2020;

SELECT *
FROM Medicos
WHERE especializacoes_adicionais = 'Cirurgia';

SELECT *
FROM Medicos
WHERE nome AND email LIKE 'A$';

SELECT *
FROM Medicos
WHERE horario_trabalho BETWEEN 12:00 AND 20:00, 11:00 AND 19:00;

SELECT *
FROM Medicos
WHERE telefone LIKE '$8901';

SELECT *
FROM Medicos
WHERE salario BETWEEN 15000 AND 16000;

SELECT *
FROM Medicos
WHERE COUNT(salario);