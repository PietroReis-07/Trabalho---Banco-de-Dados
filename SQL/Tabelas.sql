CREATE TABLE instrutores (
    id_instrutor SERIAL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    sobrenome VARCHAR(60) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE especialidades (
    id_especialidade SERIAL PRIMARY KEY,
    id_instrutor INT REFERENCES instrutores(id_instrutor) ON DELETE CASCADE,
    nome_especialidade VARCHAR(60) NOT NULL
);

CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    preco NUMERIC(10, 2) NOT NULL DEFAULT 0.00,
    carga_horaria INT NOT NULL,
    id_instrutor INT REFERENCES instrutores(id_instrutor) ON DELETE SET NULL
);

CREATE TABLE modulos (
    id_modulo SERIAL PRIMARY KEY,
    titulo_modulo VARCHAR(100) NOT NULL,
    ordem INT NOT NULL, 
    id_curso INT REFERENCES cursos(id_curso) ON DELETE CASCADE
);

CREATE TABLE alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE matriculas (
    id_matricula SERIAL PRIMARY KEY,
    id_aluno INT REFERENCES alunos(id_aluno) ON DELETE CASCADE,
    id_curso INT REFERENCES cursos(id_curso) ON DELETE CASCADE,
    data_inicio DATE DEFAULT CURRENT_DATE,
    progresso INT DEFAULT 0 CHECK (progresso >= 0 AND progresso <= 100),
    CONSTRAINT unica_matricula_aluno_curso UNIQUE (id_aluno, id_curso)
);

CREATE TABLE certificados (
    id_certificado SERIAL PRIMARY KEY,
    codigo_autenticidade VARCHAR(64) UNIQUE NOT NULL,
    data_emissao DATE DEFAULT CURRENT_DATE,
    id_matricula INT UNIQUE REFERENCES matriculas(id_matricula) ON DELETE RESTRICT
);