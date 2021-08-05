4. Criando uma tabela

Para criarmos uma tabela, iremos utilizar a função CREATE TABLE, você poder ver a função mais a fundo por este link: https://www.w3schools.com/sql/sql_create_table.asp

<p align="center">
  <img src="/images/table.png" width="350" title="hover text">
</p>

Com a função mysql_query executamos uma função no MySQL, então estamos pedindo pra o MySQL conectando-se aos valores que foram estabelecidos na variavel Connection, criar uma tabela se ela não existir chamada jogadores (CREATE TABLE IF NOT EXISTS `jogadores`) 

Após isso definimos as colunas da tabela, ID recebendo um valor inteiro e sendo uma primary key e sendo auto incrementando (`ID` int AUTO_INCREMENT PRIMARY KEY)

Uma coluna chamada Nome sendo ela uma string limitada a 24 caracteres e ela irá receber um valor nulo (`Nome` varchar(24) NOT NULL,\) 

Com a senha fazemos a mesma coisa que o Nome

Após isso criamos uma coluna chamada skin de valor inteiro limitado a 20 numeros tendo um valor padrão de 230 e a coluna dinheiro de valor inteiro limitado a 20 numeros como o valor padrão de 2000. Após isso nós definimos se queremos ou não receber o cache retornado como não queremos deixamos false.

Viu como é fácil criar um banco de dados e uma tabela em MySQL?