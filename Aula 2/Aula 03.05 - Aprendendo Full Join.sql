-- FULL JOIN

/*
Vamos trabalhar com mais um JOIN para realizar nossas consultas.

Já conhecemos o INNER JOIN, que retorna todos os dados onde há correspondência nas duas tabelas. Ou seja, uma pessoa cliente precisa 
ter feito um pedido e um pedido precisa ter uma pessoa cliente identificada nele para que essas informações sejam retornadas.

O RIGHT JOIN retorna todos os dados da tabela da direita e apenas aqueles que correspondem na tabela da esquerda. 
O LEFT JOIN faz algo bem semelhante ao RIGHT JOIN, só que retorna todas as informações da nossa tabela da esquerda.

No entanto, temos outro JOIN que retorna tudo isso junto, que é o FULL JOIN ou FULL OUTER JOIN. Com ele, obteremos um retorno de todas as informações, 
desde que haja uma correspondência nas duas tabelas.

Por exemplo, temos pedidos e clientes. Se executarmos uma consulta, ela retornará todos os clientes, independentemente de termos realizado um pedido ou não, 
e todos os pedidos, não importa se o pedido possui um cliente associado ou não. Vamos entender na prática como o FULL JOIN funciona.

Primeiro, vamos limpar nossa aba de consulta. Em seguida, executaremos a seguinte consulta: SELECT * FROM clientes. Nossa intenção é unir a tabela de 
clientes com a de pedidos. Então, faremos o seguinte:

*/
SELECT * FROM clientes;

SELECT c.nome, p.id 
FROM clientes c
FULL JOIN pedidos p
ON c.id = p.idcliente;

/*
Aqui, nós estamos trazendo o nome e o ID de nossas pessoas clientes. Ele retornará todas as pessoas clientes que possuem pedido.

Podemos até aplicar um filtro de data.
*/

SELECT c.nome, p.id 
FROM clientes c
FULL JOIN pedidos p
ON c.id = p.idcliente
WHERE strftime('%m', p.datahorapedido) = '10';

