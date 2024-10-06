CREATE VIEW AlunosDisciplinas AS
SELECT 
    alunos.nome AS Nome_Aluno,
    disciplinas.nome AS Disciplina,
    cursos.nome AS Curso
FROM 
    alunos
JOIN 
    matriculas ON alunos.id = matriculas.aluno_id
JOIN 
    disciplinas ON matriculas.disciplina_id = disciplinas.id
JOIN 
    cursos ON disciplinas.curso_id = cursos.id;
    
    
    CREATE VIEW TotalAlunosPorDisciplina AS
SELECT 
    disciplinas.nome AS Disciplina,
    COUNT(matriculas.aluno_id) AS Total_Alunos
FROM 
    disciplinas
LEFT JOIN 
    matriculas ON disciplinas.id = matriculas.disciplina_id
GROUP BY 
    disciplinas.nome;
    
    
    CREATE VIEW AlunosStatusMatriculas AS
SELECT 
    alunos.nome AS Nome_Aluno,
    disciplinas.nome AS Disciplina,
    matriculas.status AS Status_Matricula
FROM 
    alunos
JOIN 
    matriculas ON alunos.id = matriculas.aluno_id
JOIN 
    disciplinas ON matriculas.disciplina_id = disciplinas.id;
    
    CREATE VIEW ProfessoresTurmas AS
SELECT 
    professores.nome AS Nome_Professor,
    disciplinas.nome AS Disciplina,
    turmas.horario AS Horario_Turma
FROM 
    professores
JOIN 
    disciplinas ON professores.id = disciplinas.professor_id
JOIN 
    turmas ON disciplinas.id = turmas.disciplina_id;
    
    
    CREATE VIEW AlunosMaioresDe20 AS
SELECT 
    nome,
    data_nascimento
FROM 
    alunos
WHERE 
    DATEDIFF(CURDATE(), data_nascimento) / 365 > 20;
    
    
    CREATE VIEW DisciplinasCargaHorariaPorCurso AS
SELECT 
    cursos.nome AS Curso,
    COUNT(disciplinas.id) AS Quantidade_Disciplinas,
    SUM(disciplinas.carga_horaria) AS Carga_Horaria_Total
FROM 
    cursos
LEFT JOIN 
    disciplinas ON cursos.id = disciplinas.curso_id
GROUP BY 
    cursos.nome;
    
    
    CREATE VIEW ProfessoresESpecialidades AS
SELECT 
    professores.nome AS Nome_Professor,
    especialidades.nome AS Especialidade
FROM 
    professores
JOIN 
    especialidades ON professores.id = especialidades.professor_id;
    
    
    CREATE VIEW AlunosMultiplasDisciplinas AS
SELECT 
    alunos.nome AS Nome_Aluno,
    COUNT(matriculas.disciplina_id) AS Total_Disciplinas
FROM 
    alunos
JOIN 
    matriculas ON alunos.id = matriculas.aluno_id
GROUP BY 
    alunos.id
HAVING 
    COUNT(matriculas.disciplina_id) > 1;
    
    
    CREATE VIEW AlunosDisciplinasConcluidas AS
SELECT 
    alunos.nome AS Nome_Aluno,
    COUNT(matriculas.disciplina_id) AS Total_Disciplinas_Concluidas
FROM 
    alunos
JOIN 
    matriculas ON alunos.id = matriculas.aluno_id
WHERE 
    matriculas.status = 'Concluído'
GROUP BY 
    alunos.id;
    
    
    CREATE VIEW TurmasPorSemestre AS
SELECT 
    turmas.nome AS Nome_Turma,
    turmas.horario AS Horario_Turma,
    turmas.semestre AS Semestre
FROM 
    turmas
WHERE 
    turmas.semestre = '2024.1';
    
    
    CREATE VIEW AlunosMatriculasTrancadas AS
SELECT 
    alunos.nome AS Nome_Aluno
FROM 
    alunos
JOIN 
    matriculas ON alunos.id = matriculas.aluno_id
WHERE 
    matriculas.status = 'Trancado';
    
    
    CREATE VIEW DisciplinasSemAlunos AS
SELECT 
    disciplinas.nome AS Disciplina
FROM 
    disciplinas
LEFT JOIN 
    matriculas ON disciplinas.id = matriculas.disciplina_id
WHERE 
    matriculas.aluno_id IS NULL;
    
    
    
    CREATE VIEW QuantidadeAlunosPorStatus AS
SELECT 
    matriculas.status AS Status_Matricula,
    COUNT(matriculas.aluno_id) AS Total_Alunos
FROM 
    matriculas
GROUP BY 
    matriculas.status;
    
    
    CREATE VIEW TotalProfessoresPorEspecialidade AS
SELECT 
    especialidades.nome AS Especialidade,
    COUNT(professores.id) AS Total_Professores
FROM 
    especialidades
LEFT JOIN 
    professores ON especialidades.id = professores.especialidade_id
GROUP BY 
    especialidades.nome;
    
    
    CREATE VIEW AlunosEIdades AS
SELECT 
    nome AS Nome_Aluno,
    FLOOR(DATEDIFF(CURDATE(), data_nascimento) / 365) AS Idade
FROM 
    alunos;
    
    
    CREATE VIEW AlunosUltimasMatriculas AS
SELECT 
    alunos.nome AS Nome_Aluno,
    MAX(matriculas.data_matricula) AS Ultima_Matricula
FROM 
    alunos
JOIN 
    matriculas ON alunos.id = matriculas.aluno_id
GROUP BY 
    alunos.id;
    
    
    CREATE VIEW DisciplinasEngenhariaDeSoftware AS
SELECT 
    disciplinas.nome AS Disciplina
FROM 
    disciplinas
JOIN 
    cursos ON disciplinas.curso_id = cursos.id
WHERE 
    cursos.nome = 'Engenharia de Software';
    
    
    CREATE VIEW ProfessoresSemTurmas AS
SELECT 
    professores.nome AS Nome_Professor
FROM 
    professores
LEFT JOIN 
    turmas ON professores.id = turmas.professor_id
WHERE 
    turmas.id IS NULL;
    
    
    CREATE VIEW AlunosCPFEmail AS
SELECT 
    nome AS Nome_Aluno,
    cpf AS CPF,
    email AS Email
FROM 
    alunos;
    
    
    CREATE VIEW TotalDisciplinasPorProfessor AS
SELECT 
    professores.nome AS Nome_Professor,
    COUNT(disciplinas.id) AS Total_Disciplinas
FROM 
    professores
LEFT JOIN 
    disciplinas ON professores.id = disciplinas.professor_id
GROUP BY 
    professores.id;