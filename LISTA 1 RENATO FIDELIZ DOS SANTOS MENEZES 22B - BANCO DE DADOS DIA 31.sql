INSERT INTO Livros
VALUES(null, "As Crônicas de Nárnia", 'de C.S. Lewis', publicado em 1950, TRUE, disponível, na categoria "Fantasia", com ISBN '978-0064471190', editora "HarperCollins", 768 páginas, idioma "Inglês");

INSERT INTO Livros
VALUES(3, "Cem Anos de Solidão", 'Gabriel Garcia Marquez', 1967, TRUE, disponível, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol",
"Harry Potter e a Pedra Filosofal", 'J.K. Rowling', 1997, TRUE, disponível, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês",
"O Senhor dos Anéis: A Sociedade do Anel", 'J.R.R. Tolkien', 1954, TRUE, disponível, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

INSERT INTO Livros
SET categoria = 'História';

UPDATE Livros
SET ano_publicacao ='2000 >= FALSE';


UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

UPDATE Livros
SET idioma = 'inglês'
WHERE editora = 'Plume Books';

UPDATE Livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE id = '978-0439708180';

DELETE *
FROM cadegoria = 'Terror'
WHERE Livros

DELETE Livros
FROM idioma = 'Francês'
WHERE ano_publicacao < '1970';

SELECT *
FROM Livros
WHERE autor = 'George Orwell';

SELECT *
FROM Livros
WHERE titulo AND idioma = 'Inglês';

UNION

SELECT *
FROM Livros
WHERE titulo AND idioma = 'Português';

SELECT *
FROM Livros
ORDER BY ano_publicacao DESC;

SELECT *
FROM Livros
WHERE ano_publicacao MIN(1900);

SELECT *
FROM Livros
WHERE ano_publicacao MAX(2024);

SELECT *
FROM Livros
WHERE ano_publicacao = AVG;

SELECT *
FROM Livros
WHERE categoria = 'Drama' AND numero_paginas = COUNT(AVG);

SELECT *
FROM Livros
WHERE livro LIMIT 5;

SELECT *
FROM Livros
GROUP BY COUNT(categoria);

SELECT *
FROM Livros
WHERE numero_paginas >= 500;


