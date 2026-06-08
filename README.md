# Trabalho---Banco-de-Dados
Trabalho de modelagem de banco de dados DSM -1 (FATEC)

*CENÁRIO:

Plataforma Web de Ensino (EduTech)

O sistema gerencia uma plataforma de cursos livres. Alunos se cadastram para assistir aulas de diferentes instrutores. Cada curso pertence a uma categoria e, ao concluir todas as exigências de um curso, o aluno recebe um certificado exclusivo de conclusão.

ENTIDADES:

Instrutor: Possui um identificador (Chave: id_instrutor), nome completo (Composto: Nome e Sobrenome), e-mail e suas especialidades (Multivalorado). Se relaciona com: Curso (1:N).

Curso: Possui um identificador (Chave: id_curso), título, preço e carga horária em horas. Se relaciona com: Instrutor (1:N), Aulas (1:N), Aluno (N:N).

Aluno: Possui um identificador (Chave: id_aluno), nome, e-mail, data de nascimento e a idade (Atributo Derivado: calculada dinamicamente a partir da data de nascimento). Se relaciona com: Curso (N:N).

Matrícula (Item de União): Possui um identificador (Chave: id_matricula), data de início e o progresso atual do aluno em porcentagem (de 0 a 100). Se relaciona com: Certificado (1,1).

Certificado: Possui um identificador (Chave: id_certificado), código de autenticidade único e data de emissão. Se relaciona com: Matícula (1:1).

Aulas: Possui um identificador (Chave: numero de aulas), título. Se relaciona com: Curso (1:N).

*MODELAGEM CONCEITUAL:



