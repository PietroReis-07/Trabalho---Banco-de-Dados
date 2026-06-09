# Trabalho---Banco-de-Dados
Trabalho de modelagem de banco de dados DSM -1 (FATEC)

*CENÁRIO:

Plataforma Web de Ensino (EduTech)

O sistema gerencia uma plataforma de cursos livres. Alunos se cadastram para assistir aulas de diferentes instrutores. Cada curso pertence a uma categoria e, ao concluir todas as exigências de um curso, o aluno recebe um certificado exclusivo de conclusão.

---Entidades:

Instrutor: Possui um identificador (Chave: id_instrutor), nome completo (Composto: Nome e Sobrenome), e-mail e suas especialidades (Multivalorado). Se relaciona com: Curso (1:N).

Curso: Possui um identificador (Chave: id_curso), título, preço e carga horária em horas. Se relaciona com: Instrutor (1:N), Aulas (1:N), Aluno (N:N).

Aluno: Possui um identificador (Chave: id_aluno), nome, e-mail, data de nascimento e a idade (Atributo Derivado: calculada dinamicamente a partir da data de nascimento). Se relaciona com: Curso (N:N).

Matrícula (Item de União): Possui um identificador (Chave: id_matricula), data de início e o progresso atual do aluno em porcentagem (de 0 a 100). Se relaciona com: Certificado (1,1).

Certificado: Possui um identificador (Chave: id_certificado), código de autenticidade único e data de emissão. Se relaciona com: Matícula (1:1).

Aulas: Possui um identificador (Chave: numero de aulas), título. Se relaciona com: Curso (1:N).

*MODELAGEM CONCEITUAL:

<img width="1350" height="684" alt="Captura de tela 2026-06-08 212833" src="https://github.com/user-attachments/assets/0ae560c9-df30-460a-aab3-1b4d63acd601" />

*MODELAGEM LÓGICA:

<img width="1271" height="856" alt="Captura de tela 2026-06-08 212332" src="https://github.com/user-attachments/assets/226b79be-22cb-41e4-acbd-5c33d4aa0493" />


*MODELAGEM FÍSICA:

---Criação das tabelas:

Tabelas-Instrutores e Especialidades:
<img width="1539" height="880" alt="CREATE-INSTRUTORES-ESPECIALIDADES" src="https://github.com/user-attachments/assets/d12b1c16-6957-480b-b261-d77b5fe7c884" />

Tabelas-Cursos e Módulos:
<img width="1542" height="862" alt="CREATE-CURSOS-MODULOS" src="https://github.com/user-attachments/assets/a7116e37-2687-40b0-9134-050bf519455c" />

Tabelas-Alunos, Matrículas e Certificados:
<img width="1540" height="866" alt="CREATE-ALUNOS-MATRÍCULAS-CERTIFICADOS" src="https://github.com/user-attachments/assets/a33b8e34-5ba7-40fa-a23b-44e26533d995" />

---Inserção de dados:

Tabela-Instrutores:
<img width="1542" height="793" alt="INSERT-INSTRUTORES" src="https://github.com/user-attachments/assets/1803e3b2-96bc-4ae5-9117-aae0dfd5c05a" />

Tabela-Especialidades:
<img width="1541" height="772" alt="INSERT-ESPECIALIDADES" src="https://github.com/user-attachments/assets/c98cc2c5-76aa-48e7-a872-1ee3cc353506" />

Tabela-Cursos:
<img width="1540" height="804" alt="INSERT-CURSOS" src="https://github.com/user-attachments/assets/323ca845-8a0d-497d-82e6-36d2a0519d39" />

Tabela-Módulos:
<img width="1541" height="776" alt="INSERT-MODULOS" src="https://github.com/user-attachments/assets/24ab22b6-ee4e-4c48-bdc9-74a5dcc15642" />

Tabela-Alunos:
<img width="1539" height="767" alt="INSERT-ALUNOS" src="https://github.com/user-attachments/assets/a2b56915-1440-4c67-abc9-665eabcf31e9" />

Tabela-Matrículas:
<img width="1536" height="784" alt="INSERT-MATRÍCULAS" src="https://github.com/user-attachments/assets/bc13017f-8e0a-48fb-a9f0-d6d6ea2817e9" />

Tabela-Certificados:
<img width="1544" height="794" alt="INSERT-CERTIFICADOS" src="https://github.com/user-attachments/assets/44dc6df4-ba0f-40a1-a660-d3ad61b67682" />





