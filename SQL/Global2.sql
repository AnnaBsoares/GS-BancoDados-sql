--Anna Beatriz Soares Camargo - RM99814 ----
 --Mel Maia Rodrigues - RM98266----
--Pedro Sena Borges Martinazzo - RM98021---
--Lucas Pinheiro de Melo- rm97707--



-- DROP TABLES (em ordem reversa para evitar conflitos de chave estrangeira)
DROP TABLE Comunicacao CASCADE CONSTRAINTS;
DROP TABLE Exame CASCADE CONSTRAINTS;
DROP TABLE Medico CASCADE CONSTRAINTS;
DROP TABLE Paciente CASCADE CONSTRAINTS;




-- Tabela de Paciente: Armazena informações sobre os  Paciente
CREATE TABLE Paciente (
  ID_Paciente NUMBER CONSTRAINT paciente_id_pk PRIMARY KEY,
  Nome VARCHAR2(100) CONSTRAINT paciente_nome_nn NOT NULL,
  Data_Nascimento DATE CONSTRAINT paciente_data_nascimento_nn NOT NULL,
  Email VARCHAR2(255) CONSTRAINT paciente_email_nn NOT NULL,
  Senha VARCHAR2(40) CONSTRAINT paciente_senha_nn NOT NULL
);

-- Tabela de Medico: Armazena informações sobre os Médicos
CREATE TABLE Medico (
  ID_Medico NUMBER CONSTRAINT medico_id_pk PRIMARY KEY,
  Nome_Medico VARCHAR2(100) CONSTRAINT medico_nome_nn NOT NULL,
  Especialidade VARCHAR2(50), 
  Data_Nascimento DATE CONSTRAINT medico_data_nascimento_nn NOT NULL,
  Email VARCHAR2(255) CONSTRAINT medico_email_nn NOT NULL,
  Senha VARCHAR2(40) CONSTRAINT medico_senha_nn NOT NULL
);

-- Tabela de Exame: Armazena informações sobre os Exames
CREATE TABLE Exame (
  ID_Exame NUMBER CONSTRAINT exame_id_pk PRIMARY KEY,
  Tipo_Exame VARCHAR2(50) CONSTRAINT exame_tipo_nn NOT NULL,
  Resultado VARCHAR2(255) CONSTRAINT exame_resultado_nn NOT NULL,
  ID_Paciente NUMBER,
  FOREIGN KEY (ID_Paciente) REFERENCES Paciente(ID_Paciente)
);

-- Tabela de Comunicacao: Armazena informações sobre as Comunicações
CREATE TABLE Comunicacao (
  ID_Comunicacao NUMBER CONSTRAINT comunicacao_id_pk PRIMARY KEY,
  Tipo_Comunicacao VARCHAR2(50) CONSTRAINT comunicacao_tipo_nn NOT NULL,
  Mensagem VARCHAR2(1000) CONSTRAINT comunicacao_mensagem_nn NOT NULL,
  Data_Envio DATE CONSTRAINT comunicacao_data_envio_nn NOT NULL,
  ID_Paciente NUMBER,
  ID_Medico NUMBER,
  FOREIGN KEY (ID_Paciente) REFERENCES Paciente(ID_Paciente),
  FOREIGN KEY (ID_Medico) REFERENCES Medico(ID_Medico)
);





--------------------- Inserções de Dados---------------------------------------


-- Inserindo dados em Paciente

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (1, 'João Silva', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'joao.silva@email.com', '12345678');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (2, 'Maria Oliveira', TO_DATE('1980-05-15', 'YYYY-MM-DD'), 'maria.oliveira@email.com', '87654321');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (3, 'Carlos Pereira', TO_DATE('1985-08-22', 'YYYY-MM-DD'), 'carlos.pereira@email.com', '12348765');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (4, 'Ana Oliveira', TO_DATE('1995-03-10', 'YYYY-MM-DD'), 'ana.oliveira@email.com', '87651234');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (5, 'Carlos Souza', TO_DATE('1985-08-10', 'YYYY-MM-DD'), 'carlos.souza@email.com', 'senha5');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (6, 'Mariana Costa', TO_DATE('1992-09-25', 'YYYY-MM-DD'), 'mariana.costa@email.com', 'senha6');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (7, 'Gabriel Oliveira', TO_DATE('1988-07-12', 'YYYY-MM-DD'), 'gabriel.oliveira@email.com', 'senha7');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (8, 'Fernanda Santos', TO_DATE('1993-03-18', 'YYYY-MM-DD'), 'fernanda.santos@email.com', 'senha8');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (9, 'Rafael Pereira', TO_DATE('1990-11-08', 'YYYY-MM-DD'), 'rafael.pereira@email.com', 'senha9');

INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Email, Senha)
VALUES (10, 'Julia Souza', TO_DATE('1987-05-02', 'YYYY-MM-DD'), 'julia.souza@email.com', 'senha10');

--------------

-- Inserindo dados em Medico

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (1, 'Dr. Silva', 'Neurologia', TO_DATE('1980-01-15', 'YYYY-MM-DD'), 'dr.silva@email.com', 'senha1');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (2, 'Dra. Oliveira', 'Oncologia', TO_DATE('1975-08-22', 'YYYY-MM-DD'), 'dra.oliveira@email.com', 'senha2');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (3, 'Dra. Santos', 'Cardiologia', TO_DATE('1982-03-10', 'YYYY-MM-DD'), 'dra.santos@email.com', 'senha3');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (4, 'Dr. Costa', 'Ortopedia', TO_DATE('1978-06-05', 'YYYY-MM-DD'), 'dr.costa@email.com', 'senha4');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (5, 'Dra. Lima', 'Neurologia', TO_DATE('1985-11-18', 'YYYY-MM-DD'), 'dra.lima.neuro@email.com', 'senha5');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (6, 'Dr. Martins', 'Neurologia', TO_DATE('1972-09-30', 'YYYY-MM-DD'), 'dr.martins.neuro@email.com', 'senha6');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (7, 'Dra. Pereira', 'Neurologia', TO_DATE('1988-04-25', 'YYYY-MM-DD'), 'dra.pereira.neuro@email.com', 'senha7');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (8, 'Dr. Santos', 'Neurologia', TO_DATE('1983-07-12', 'YYYY-MM-DD'), 'dr.santos.neuro@email.com', 'senha8');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (9, 'Dra. Costa', 'Neurologia', TO_DATE('1979-02-28', 'YYYY-MM-DD'), 'dra.costa.neuro@email.com', 'senha9');

INSERT INTO Medico (ID_Medico, Nome_Medico, Especialidade, Data_Nascimento, Email, Senha)
VALUES (10, 'Dr. Oliveira', 'Neurologia', TO_DATE('1987-12-08', 'YYYY-MM-DD'), 'dr.oliveira.neuro@email.com', 'senha10');

-------------------------

-- Inserindo dados em Exame

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES  (1, 'Ressonância Magnética', 'Normal', 1);
  
INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES  (2, 'Tomografia', 'Irregular', 2);

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES  (3, 'Exame de Sangue', 'Negativo', 1);

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES  (4, 'Biopsia', 'Positivo', 2);

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES (5, 'Eletrocardiograma', 'Normal', 3);

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES (6, 'Radiografia', 'Sem anomalias', 4);


INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES (7, 'Eletroencefalograma', 'Anormal', 7);

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES (8, 'Ressonância Magnética', 'Irregular', 8);

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES (9, 'Hemograma', 'Normal', 9);

INSERT INTO Exame (ID_Exame, Tipo_Exame, Resultado, ID_Paciente)
VALUES (10, 'Ultrassonografia', 'Negativo', 10);


------------------------------------


-- Inserindo dados em Comunicaçao

INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (1, 'E-mail', 'Resultado do exame disponível', TO_DATE('2023-02-01', 'YYYY-MM-DD'), 1, 1);

INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (2, 'SMS', 'Lembrete de consulta', TO_DATE('2023-03-15', 'YYYY-MM-DD'), 2, 2);


INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (3, 'E-mail', 'Resultados do exame indicam boa recuperação. Parabéns!', TO_DATE('2023-04-10', 'YYYY-MM-DD'), 3, 3);


INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (4, 'SMS', 'Os resultados indicam a necessidade de uma consulta presencial. Favor agendar retorno.', TO_DATE('2023-05-22', 'YYYY-MM-DD'), 4, 4);


INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (5, 'E-mail', 'Seus resultados de exame são positivos. Continue com os cuidados!', TO_DATE('2023-06-05', 'YYYY-MM-DD'), 5, 5);


INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (6, 'SMS', 'Solicitamos que retorne ao consultório para uma avaliação adicional.', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 6, 6);

INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (7, 'E-mail', 'Os resultados são positivos. Continue com o tratamento conforme orientado.', TO_DATE('2023-08-20', 'YYYY-MM-DD'), 7, 7);

INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (8, 'SMS', 'É recomendado um retorno ao consultório para avaliação presencial.', TO_DATE('2023-09-10', 'YYYY-MM-DD'), 8, 8);


INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (9, 'E-mail', 'Os resultados são bons. Continue seguindo as recomendações.', TO_DATE('2023-10-05', 'YYYY-MM-DD'), 9, 9);


INSERT INTO Comunicacao (ID_Comunicacao, Tipo_Comunicacao, Mensagem, Data_Envio, ID_Paciente, ID_Medico)
VALUES (10, 'SMS', 'Solicitamos que retorne ao consultório para discussão dos resultados.', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 10, 10);
--------------------------------------


  
-- Consultas




-- Relatório 01: Simples envolvendo SELECT/FROM/WHERE/ORDER BY.
SELECT ID_Paciente, Nome, Data_Nascimento, Email
FROM Paciente
ORDER BY Nome;


-- Relatório 02: Consulta envolvendo uma ou mais junções de tabela.
--Nesta consulta, estamos selecionando o nome do paciente, o nome do médico, o tipo de exame e a mensagem da comunicação. 
SELECT P.Nome AS Nome_Paciente, M.Nome_Medico, E.Tipo_Exame, C.Mensagem
FROM Paciente P
JOIN Exame E ON P.ID_Paciente = E.ID_Paciente
JOIN Comunicacao C ON P.ID_Paciente = C.ID_Paciente
JOIN Medico M ON C.ID_Medico = M.ID_Medico;



-- Relatório 03: Consulta envolvendo função de grupo e agrupamento.
--Nesta consulta, estamos contando o número total de exames para cada paciente e médico. 

SELECT P.Nome AS Nome_Paciente, M.Nome_Medico, COUNT(E.ID_Exame) AS Total_Exames
FROM Paciente P
JOIN Exame E ON P.ID_Paciente = E.ID_Paciente
JOIN Medico M ON E.ID_Paciente = M.ID_Medico
GROUP BY P.Nome, M.Nome_Medico;


-- Relatório 04: Nesta consulta, estamos contando o número total de exames para cada paciente e médico, 
--e estamos usando a cláusula HAVING para filtrar os resultados para incluir apenas aqueles com dois ou mais exames.
SELECT P.Nome AS Nome_Paciente, M.Nome_Medico, COUNT(E.ID_Exame) AS Total_Exames
FROM Paciente P
JOIN Exame E ON P.ID_Paciente = E.ID_Paciente
JOIN Medico M ON E.ID_Paciente = M.ID_Medico
GROUP BY P.Nome, M.Nome_Medico
HAVING COUNT(E.ID_Exame) >= 2;


-- Relatório 05: nessa consulta conta o número total de comunicações associadas a cada médico e filtra os resultados para incluir apenas aqueles com um ou mais registros
SELECT M.ID_Medico, M.Nome_Medico, COUNT(Co.ID_Comunicacao) AS Total_Comunicacoes
FROM Medico M
LEFT JOIN Comunicacao Co ON M.ID_Medico = Co.ID_Medico
GROUP BY M.ID_Medico, M.Nome_Medico
HAVING COUNT(Co.ID_Comunicacao) >= 1;

--------------------------------------------------------------------------------

    SELECT * FROM Paciente;
    SELECT * FROM Exame ;
    SELECT * FROM Medico;
    SELECT * FROM Comunicacao;

