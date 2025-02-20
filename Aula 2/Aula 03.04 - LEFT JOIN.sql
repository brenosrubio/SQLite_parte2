-- LEFT JOIN
/*
 Agora, vamos criar uma nova consulta. Portanto, vamos selecionar uma nova aba. Assim como inserimos novos produtos, 
 também temos novos clientes a serem adicionados na nossa tabela de clientes. Vamos inserir "João Santos" e "Carla Ferreira" com seus respectivos ids e confirmar.
 
 Mas, antes, podemos passar um SELECT * FROM clientes para confirmar o último ID inserido. Isso é muito importante para não informarmos o ID errado, 
 já que estamos adicionando de forma manual. Está correto, podemos prosseguir.
 */

INSERT INTO Clientes (id, Nome, Telefone, Email, Endereco)
VALUES (28, 'João Santos', '215555678', 'joao.santos@email.com', 'Avenida Principal, 456, Cidade B'),
       (29, 'Carla Ferreira', '315557890', 'carla.ferreira@email.com', 'Travessa das Ruas, 789, Cidade C');
