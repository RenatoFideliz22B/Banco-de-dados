INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
("As cronicas de Narnia", 1950, "Fantasia", "978-0064471190", "HarperCollins", 768, "Ingles");

UPDATE * TABLE Livros
SET ano_publicacao is FALSE
WHERE ano_publicacao '2000';

UPDATE * TABLE Livros
SET edutoraName = 'Plume Books'
WHERE ano_publicacao = '1984';

SELECT * TABLE
FROM Livros
WHERE quantidade_paginas = '500+';

SELECT * TABLE
FROM Livros
WHERE categoria;

RENATO FIDELIZ DOS SANTOS MENEZES 22B