SELECT *
FROM Livros
WHERE disponivel = 'empréstimo';

SELECT *
FROM Livros
WHERE editora = 'HarperCollins';

SELECT *
FROM Livros
WHERE ano_publicacao BETWEEN 2000 AND 2010;

SELECT *
FROM Livros
WHERE COUNT(disponivel) = '>= 3';

SELECT *
FROM Livros
WHERE titulo LIKE 'Senhor';

SELECT *
FROM Livros
WHERE categoria IN  ('Fantasia' 'Ficcção Cientifica' OR 'Fábula');

SELECT DISTINCT idioma
FROM Livros;

SELECT *
FROM Livros
WHERE quantidade_paginas BETWEEN 200 AND 400;

SELECT *
FROM Livros
ORDER BY titulo < ano_publicacao;