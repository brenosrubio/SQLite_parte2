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

/*
Já sabemos aqui que vamos buscar informações da tabela de clientes, e também da nossa tabela de pedidos. Para essa consulta, usaremos o SELECT * FROM clientes, 
a cláusula JOIN e o alias, tanto em pedidos como em clientes.
*/


SELECT * 
FROM clientes c
JOIN 
pedidos p;


/*
Conhecemos até agora duas cláusulas, tanto a INNER JOIN como a RIGHT JOIN. E se usássemos aqui a RIGHT JOIN, estaríamos passando as nossas tabelas de forma inversa,
porque o cliente teria que estar após a cláusula RIGHT JOIN para ser considerado a nossa tabela da direita. 
Resolveríamos de forma simples, só precisaríamos inverter a posição das duas tabelas.

Mas temos outra cláusula JOIN que podemos usar aqui, que é a LEFT JOIN. E ela é bem semelhante à cláusula RIGHT JOIN. 
A diferença entre uma e outra é que com a RIGHT JOIN trazemos todos os dados da tabela da direita e apenas os que correspondem à tabela da esquerda, e com a LEFT JOIN, 
traremos todos os dados da tabela da esquerda e apenas os que correspondem à nossa tabela da direita.

Então, usando o LEFT JOIN, podemos deixar o cliente do lado esquerdo. Com o comando ON, vamos trazer, de clientes, o ID, ou seja, c.id, e da 
tabela de pedidos o p.idcliente.

Também vamos especificar o nome do nosso cliente e o id do nosso pedido: c.nome, p.id.
*/


SELECT * FROM clientes;
 
SELECT c.nome, p.id
FROM clientes c 
LEFT JOIN Pedidos p 
ON c.id = p.idcliente;


/*
Vamos executar e analisar o que recebemos como retorno. Visualizando o retorno, ao fim da tabela, na última linha, 
verificamos que "Paulo Souza", "João Santo"s e "Carla Ferreira" não têm nenhum pedido associado a eles. Temos os dois clientes que acabamos de inserir e 
outro cliente que também não possuía nenhuma venda e constam como "NULL". Informação bem interessante!

Mas, como já buscamos na nossa tabela de produtos, queremos apenas identificar quais clientes não realizaram o pedido em um determinado mês. 
Então, voltaremos à nossa consulta anterior e selecionaremos o WHERE strftime com datahorapedido e executar.
*/

SELECT c.nome, p.id
FROM clientes c 
LEFT JOIN Pedidos p 
ON c.id = p.idcliente
WHERE strftime('%m', p.datahorapedido) = '10' ;


