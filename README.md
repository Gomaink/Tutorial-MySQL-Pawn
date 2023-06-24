# Tutorial-MySQL-Pawn
> Um básico curso de MySQL aplicado em Pawn.

<br>

- 1. [Apresentação](#-Apresentação)

- 2. [Instalação](#-Instalação)

- 3. [XAMPP](#-XAMPP)

- 4. [Conexão](#-Conexão)
   
- 6. [CREATE-TABLE](#-CREATE-TABLE)

- 7. [INSERT-INTO](#-INSERT-INTO)

- 8. [UPDATE](#-UPDATE)

- 9. [DELETE](#-DELETE)

- 10. [SELECT](#-SELECT)

<br>

## 🚀 Apresentação

Olá. Recentemente vi que na comunidade SA:MP está faltando orientações em questão ao MySQL então resolvi dar partida e montar um "tutorial" de como Instalar e Utilizar MySQL em seu Gamemode.

Quero deixar bem claro que em todos os módulos do tutorial iremos utilizar a mesma estrutura de sistema.

Neste tutorial você precisa se certificar de que já sabe como usar variaveis e funções nativas do SAMP, será um tutorial focado no MySQL e não em funções nativas.

Créditos: github.com/Gomaink

## 🚀 Instalação

Para instalar o MySQL em seu GM é fácil, irei explicar como instalar ele no OS Windows, mas o mesmo pode ser feito no Linux.
Acesse o link: https://github.com/pBlueG/SA-MP-MySQL/releases e instale a versão R41-4 mysql-R41-4-win32.zip.

<p align="center">
  <img src="/images/mysql.png" width="350" title="hover text">
</p>

Após a instalação, extraia o arquivo copie os arquivos e cole na pasta do seu gamemode.

<p align="center">
  <img src="/images/mysql2.png" width="350" title="hover text">
</p>

## 🚀 XAMPP

Para você poder acessar um banco de dados local você irá precisar do XAMPP no Windows.

Baixe e instale por este link: https://www.apachefriends.org/pt_br/index.html (É uma instalação normal, apenas prossiga)

<p align="center">
  <img src="/images/xampp.png" width="350" title="hover text">
</p>

Após a instalação abra o XAMPP, você irá se deparar com uma tela com opções como Apache, MySQL, FileZilla e entre outros, nós só iremos precisar do Apache e do MySQL, clique em start no Apache e no MySQL após isso clique em admin no MySQL e você já vai poder ter acesso ao PhpMyAdmin.
<p align="center">
  <img src="/images/xampp2.png" width="350" title="hover text">
</p>

Na esquerda irá ter um botão chamado "Novo DB", coloque um nome pro database, você pode optar por: database (Não coloque espaços e não altere a colação) após isso clique em criar.

<p align="center">
  <img src="/images/php.png" width="350" title="hover text">
</p>

<p align="center">
  <img src="/images/php2.png" width="350" title="hover text">
</p>

## 🚀 Conexão

Nesta parte iremos aprender a como criar um banco de dados e uma simples tabela.
Em sua GM crie uma variavel com o prefix de MySQL, você pode optar por algo como: "new MySQL:Connection" é por esta variavel que iremos estabelecer uma conexao com o banco de dados.

Após isso crie uma public, ela vai iniciar o banco de dados, você pode optar por algo como: 

<p align="center">
  <img src="/images/conexao.png" width="350" title="hover text">
</p>

Nela vamos estabelecer a conexão da seguinte forma:

<p align="center">
  <img src="/images/conexao2.png" width="350" title="hover text">
</p>

Aqui estamos a variavel Connection que criamos vai guardar a conexão com a função mysql_connect onde recebe os parametros, ip, user, password, database.
No caso localhost por que estamos em uma conexão local, root por que é o user padrão de conexão local, senha não precisamos e database é o nome do database que você criou a alguns segundos atrás, lembra?

Após isso iremos fazer uma verificação pra ver se tivemos sucesso ao tentar estabelecer a conexão da seguinte forma: 

<p align="center">
  <img src="/images/conexao3.png" width="350" title="hover text">
</p>

com a função mysql_errno() verificamos se não existe nenhum erro na hora de se conectar ao database e imprimimos se tudo ocorreu corretamente caso contrário irá imprimir uma mensagem de erro.

Após isso basta chamar a public em OnGamemodeInit.

## 🚀 CREATE-TABLE

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

## 🚀 INSERT-INTO

A função INSERT INTO funciona como proprio nome diz, "INSERIR EM" com ela você pode inserir dados em uma tabela.

Um exemplo de INSERT INTO é ao o jogador passar por uma tela de registro os dados deles serem inseridos na tabela, por exemplo:

<p align="center">
  <img src="/images/insert.png" width="750" title="hover text">
</p>

Acima nós formatamos uma string com a própria função format do MySQL, nela nós inserimos em contas nas colunas Nome, Senha os valores formatados, no caso o Nome e o que o usuário supostamente digitou em um input. É uma função bem simples e bem poderosa.

Lembrando que você está inserindo dados e não atualizando-os, existe uma função especifica para atualizar dados que iremos ver mais pare frente.

Mais sobre a função INSERT INTO: https://www.w3schools.com/sql/sql_insert.asp

## 🚀 UPDATE

A função UPDATE nada mais é do que o próprio nome diz, "Atualizar", com ela nós podemos atualizar dados inseridos em colunas, e é com ela que fazemos por exemplo um sistema de salvamento de contas.

Um exemplo de como você pode usa-la: 

<p align="center">
  <img src="/images/update.png" width="500" title="hover text">
</p>

Acima nós usamos novamente a função de format do MySQL e nela nós atualizamos a tabela contas e setamos valores nas colunas Score, Skin, e Dinheiro, ENQUANTO o ID do jogador for igual ao ID dele da tabela.

Para facilitar o entendimento, lembra do AUTO_INCREMENT e PRIMARY KEY que colocamos na coluna ID no modulo 5? Ele é algo único cada Player tem o seu e você pode criar sistemas de ID FIXO por exemplo, então nós atualizamos a tabela contas, setamos valores nas colunas e setamos no jogador da tabela que tem o ID formatado, em vez de ID você pode usar o nome dele, porém considero mais fácil da forma acima.

Você pode ver mais sobre a função UPDATE aqui: https://www.w3schools.com/php/php_mysql_update.asp

## 🚀 DELETE

A função DELETE é auto explicativa, ela deleta dados de uma coluna, com ela você pode por exemplo deletar a conta de um jogador sem precisar ir manualmente ao database.

Um exemplo de como você pode usa-la:

<p align="center">
  <img src="/images/delete.png" width="750" title="hover text">
</p>

Acima nós usamos a função format nativa e deletados da tabela jogadores enquanto o nome for igual a o valor getado.

Então nós deletamos todos os dados do jogador cujo o nome foi getado e que estava na tabela jogadores.

Você pode ver mais sobre a função DELETE aqui: https://www.w3schools.com/php/php_mysql_delete.asp

## 🚀 SELECT

A função SELECT serve na maioria das vezes para resgatar um dado do database.

Você pode utiliza-lo das seguintes formas:

<p align="center">
  <img src="/images/select.png" width="750" title="hover text">
</p>

Acima nós selecionamos tudo da tabela contas enquanto cujo o nome foi getado.

Devo deixar bem claro que o símbolo de asterisco (*) simboliza "all" ou "tudo" no SQL.

Após essa consulta podemos puxar dados de uma tabela por exemplo, vocês veram mais sobre ainda.

Você também pode utilizar da seguinte forma:

<p align="center">
  <img src="/images/select2.png" width="750" title="hover text">
</p>

Aí você estaria selecionado apenas UMA coluna, que seria a coluna de Dinheiro.

Você também pode utilizar com diversas tabelas como:

<p align="center">
  <img src="/images/select3.png" width="750" title="hover text">
</p>

Aí você estaria selecionado duas colunas, no caso a Dinheiro e a Skin.

Você pode ver mais sobre a função SELECT aqui: https://www.w3schools.com/php/php_mysql_select.asp
