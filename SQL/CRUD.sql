INSERT INTO alunos (nome, email, data_nascimento) 
VALUES ('Rodrigo Faro', 'rodrigo.faro@ficticio.com', '1985-10-20');

SELECT id_aluno, nome, email, data_nascimento 
FROM alunos 
WHERE email = 'rodrigo.faro@ficticio.com';

UPDATE alunos 
SET email = 'rodrigo.faro.atualizado@ficticio.com' 
WHERE email = 'rodrigo.faro@ficticio.com';

DELETE FROM alunos 
WHERE email = 'rodrigo.faro.atualizado@ficticio.com';