--R1
SELECT c.titulo AS nome_curso, 
       CONCAT(i.nome, ' ', i.sobrenome) AS professor,
       m.ordem AS numero_modulo, 
       m.titulo_modulo AS nome_modulo
FROM cursos c
INNER JOIN instrutores i ON c.id_instrutor = i.id_instrutor
INNER JOIN modulos m ON c.id_curso = m.id_curso
ORDER BY c.titulo ASC, m.ordem ASC;

--R2
SELECT nome, email, data_nascimento,
       EXTRACT(YEAR FROM AGE(CURRENT_DATE, data_nascimento)) AS idade_calculada
FROM alunos
WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE, data_nascimento)) >= 18
ORDER BY idade_calculada ASC;

--R3
SELECT c.titulo AS curso, COUNT(m.id_matricula) AS total_alunos_inscritos
FROM cursos c
LEFT JOIN matriculas m ON c.id_curso = m.id_curso
GROUP BY c.id_curso, c.titulo
ORDER BY total_alunos_inscritos DESC;


--R4
SELECT a.nome AS nome_aluno, 
       c.titulo AS curso_concluido, 
       cert.codigo_autenticidade AS chave_validacao, 
       cert.data_emissao
FROM certificados cert
INNER JOIN matriculas m ON cert.id_matricula = m.id_matricula
INNER JOIN alunos a ON m.id_aluno = a.id_aluno
INNER JOIN cursos c ON m.id_curso = c.id_curso
ORDER BY cert.data_emissao DESC;

--R5
SELECT CONCAT(i.nome, ' ', i.sobrenome) AS instrutor, 
       e.nome_especialidade AS especialidade
FROM instrutores i
INNER JOIN especialidades e ON i.id_instrutor = e.id_instrutor
ORDER BY instrutor ASC;

--R6
SELECT c.titulo AS curso, 
       c.preco AS preco_unitario,
       COUNT(m.id_matricula) AS quantidade_vendas,
       SUM(c.preco) AS faturamento_total
FROM cursos c
INNER JOIN matriculas m ON c.id_curso = m.id_curso
GROUP BY c.id_curso, c.titulo, c.preco
ORDER BY faturamento_total DESC;

--R7
SELECT a.nome AS aluno, a.email, c.titulo AS curso, m.progresso, m.data_inicio
FROM matriculas m
INNER JOIN alunos a ON m.id_aluno = a.id_aluno
INNER JOIN cursos c ON m.id_curso = c.id_curso
WHERE m.progresso < 20
ORDER BY m.progresso ASC, m.data_inicio ASC;

--R8
SELECT CONCAT(i.nome, ' ', i.sobrenome) AS instrutor,
       COUNT(c.id_curso) AS total_cursos_criados,
       SUM(c.carga_horaria) AS carga_horaria_acumulada_horas,
       ROUND(AVG(c.preco), 2) AS preco_medio_dos_cursos
FROM instrutores i
INNER JOIN cursos c ON i.id_instrutor = c.id_instrutor
GROUP BY i.id_instrutor, i.nome, i.sobrenome
ORDER BY carga_horaria_acumulada_horas DESC;

--R9
SELECT a.nome AS aluno, c.titulo AS curso, m.progresso
FROM matriculas m
INNER JOIN alunos a ON m.id_aluno = a.id_aluno
INNER JOIN cursos c ON m.id_curso = c.id_curso
WHERE (c.titulo LIKE '%SQL%' OR c.titulo LIKE '%Data Science%') 
  AND m.progresso > 50
ORDER BY m.progresso DESC;

--R10
SELECT a.nome AS aluno_inativo, a.email, a.data_nascimento
FROM alunos a
LEFT JOIN matriculas m ON a.id_aluno = m.id_aluno
WHERE m.id_matricula IS NULL
ORDER BY a.nome ASC;