# Tutorial-MySQL-Pawn
> Um básico tutorial de MySQL aplicado em Pawn.

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

Percebi que a comunidade de SA:MP carece de orientações claras sobre como integrar e usar MySQL em gamemodes. Por isso, decidi criar este tutorial para ajudar quem deseja instalar e trabalhar com MySQL em seus projetos.

Antes de começarmos, quero destacar que, ao longo deste tutorial, utilizaremos uma estrutura padrão para todos os exemplos e módulos, garantindo consistência e clareza.

Pré-requisitos:
Este tutorial foca exclusivamente no uso do MySQL com SA:MP. Portanto, é importante que você já tenha familiaridade com variáveis e funções nativas do SA:MP, pois não abordaremos esses conceitos aqui.

Créditos:
Desenvolvido por Gomaink.

## 🚀 O que são SQL, MySQL e XAMPP?

Para trabalhar com MySQL no desenvolvimento de gamemodes ou qualquer outro tipo de aplicação, é essencial entender alguns conceitos fundamentais:

### 1. SQL (Structured Query Language):

SQL é uma linguagem padrão utilizada para gerenciar e manipular bancos de dados relacionais. Com SQL, você pode criar tabelas, inserir dados, atualizá-los, excluí-los e realizar consultas complexas. É a base de quase todas as interações com bancos de dados, independentemente do software utilizado.

### 2. MySQL:

MySQL é um sistema de gerenciamento de banco de dados (SGBD) que utiliza a linguagem SQL. Ele é amplamente utilizado por sua eficiência, escalabilidade e simplicidade. O MySQL permite que você armazene e recupere informações de forma organizada e segura, sendo ideal para aplicações que requerem o armazenamento de grandes volumes de dados, como websites, sistemas de gerenciamento e gamemodes no SA:MP.

### 3. XAMPP:

XAMPP é um pacote de software que inclui um servidor web (Apache), um banco de dados (MySQL/MariaDB) e interpretadores para linguagens como PHP e Perl. Ele é uma solução prática para configurar um ambiente de desenvolvimento local em seu computador, permitindo testar aplicações que utilizam bancos de dados e servidores web sem a necessidade de configurá-los manualmente.

Com o XAMPP, você pode instalar e gerenciar o MySQL de forma fácil, além de realizar testes e desenvolvimento local de forma rápida e eficiente.

Resumo:
- SQL: Linguagem para interagir com bancos de dados.
- MySQL: Sistema de gerenciamento de bancos de dados que utiliza SQL.
- XAMPP: Ambiente de desenvolvimento local que facilita o uso do MySQL e de outras ferramentas.

## 🚀 Instalação

O processo de instalação do MySQL no seu gamemode é simples. A seguir, explicarei como realizar a instalação no Windows. No entanto, o mesmo procedimento pode ser adaptado para Linux.

### 1.	Baixe os arquivos necessários:

Acesse o repositório oficial do plugin no GitHub pelo link:
https://github.com/pBlueG/SA-MP-MySQL/releases.

Baixe a versão R41-4 (arquivo mysql-R41-4-win32.zip).

<p align="center">
  <img src="/images/mysql.png" width="350" title="Tela de download do MySQL">
</p>  



### 2.	Extraia e copie os arquivos:

Após baixar o arquivo, extraia o conteúdo. Em seguida, copie os arquivos extraídos para a pasta do seu gamemode.

<p align="center">
  <img src="/images/mysql2.png" width="350" title="Arquivos MySQL extraídos">
</p>  

Com isso, o plugin MySQL estará pronto para ser utilizado no seu projeto.

## 🚀 XAMPP

Para acessar e gerenciar um banco de dados local, utilizaremos o XAMPP, uma ferramenta que facilita a instalação e execução de servidores web e bancos de dados no Windows.

### 1. Baixando e instalando o XAMPP

- Acesse o site oficial do XAMPP: https://www.apachefriends.org/pt_br/index.html.
- Baixe a versão adequada ao seu sistema operacional e prossiga com a instalação. O processo é simples e não exige configurações avançadas.

<p align="center">
  <img src="/images/xampp.png" width="350" title="Tela de instalação do XAMPP">
</p>  


### 2. Iniciando os serviços necessários

- Após instalar, abra o Painel de Controle do XAMPP.
- Você verá várias opções, como Apache, MySQL e outros serviços. Para este tutorial, utilizaremos apenas o Apache e o MySQL.
- Clique no botão Start para iniciar ambos os serviços.

<p align="center">
  <img src="/images/xampp2.png" width="350" title="Tela do Painel de Controle do XAMPP">
</p>  


### 3. Acessando o PhpMyAdmin

- Com o serviço MySQL em execução, clique no botão Admin ao lado dele. Isso abrirá o PhpMyAdmin em seu navegador. O PhpMyAdmin é uma interface gráfica que permite gerenciar bancos de dados facilmente.

### 4. Criando um banco de dados

- No lado esquerdo do PhpMyAdmin, clique em Novo ou New.
- Insira um nome para o banco de dados. Por exemplo, database (sem espaços ou caracteres especiais).
- Certifique-se de que a opção Colação (collation) permaneça como está (geralmente definida como utf8_general_ci por padrão).
- Clique em Criar para finalizar.

<p align="center">
  <img src="/images/php.png" width="350" title="Criando um novo banco de dados no PhpMyAdmin">
</p>  

<p align="center">
  <img src="/images/php2.png" width="350" title="Banco de dados criado no PhpMyAdmin">
</p>  


### Dica Extra
- O XAMPP também permite configurar senhas e permissões para usuários no MySQL. Para maior segurança, considere configurar uma senha para o usuário root nas opções do PhpMyAdmin.

Com o banco de dados criado e configurado, você já pode integrá-lo ao seu gamemode.

## 🚀 Conexão

Nesta etapa, aprenderemos como criar um banco de dados, configurar uma conexão simples e verificar se ela foi estabelecida com sucesso.

### 1. Criando uma variável para a conexão

No seu gamemode, crie uma variável para gerenciar a conexão com o banco de dados. É recomendável usar um prefixo que identifique claramente a relação com o MySQL, como:

`new MySQL:Connection;`

Essa variável será usada para armazenar os dados da conexão ativa com o banco de dados.

### 2. Criando a função de inicialização da conexão

Agora, crie uma função pública responsável por estabelecer a conexão com o banco de dados. Um exemplo prático seria:

<p align="center">
  <img src="/images/conexao.png" width="350" title="Função de inicialização do banco de dados">
</p>  


### 3. Estabelecendo a conexão

Dentro dessa função, usaremos a função mysql_connect para estabelecer a conexão. Ela recebe os seguintes parâmetros:

- IP: Endereço do servidor onde o banco está hospedado (ex.: localhost para conexões locais).
- Usuário: Nome de usuário do banco de dados (ex.: root, padrão no XAMPP).
- Senha: Senha do usuário (no XAMPP, geralmente não há senha configurada por padrão).
- Nome do banco: Nome do banco de dados que criamos anteriormente.

Um exemplo seria:

<p align="center">
  <img src="/images/conexao2.png" width="350" title="Exemplo de conexão MySQL no gamemode">
</p>  


### 4. Verificando se a conexão foi bem-sucedida

Após tentar a conexão, é fundamental verificar se houve sucesso. Isso pode ser feito com a função mysql_errno(), que retorna o código do erro, caso exista.

A verificação pode ser feita assim:

<p align="center">
  <img src="/images/conexao3.png" width="350" title="Verificação da conexão MySQL">
</p>  


- Caso a conexão seja bem-sucedida: Exibimos uma mensagem informando que tudo está funcionando corretamente.
- Caso haja erro: Exibimos a mensagem de erro e abortamos o processo.

### 5. Chamando a função no OnGameModeInit

Por fim, chame a função de inicialização da conexão no callback OnGameModeInit, garantindo que o banco de dados seja configurado assim que o gamemode for carregado.

## 🚀 CREATE-TABLE

Agora que já configuramos a conexão com o banco de dados, aprenderemos como criar uma tabela utilizando a função CREATE TABLE. Essa função é usada para definir a estrutura da tabela, incluindo colunas, tipos de dados e restrições.

Para mais detalhes sobre CREATE TABLE, você pode conferir este link:
Guia de CREATE TABLE - W3Schools

### 1. Definindo a tabela com CREATE TABLE

Para criar uma tabela no MySQL a partir do seu gamemode, utilizaremos a função mysql_query, que permite enviar comandos SQL diretamente ao banco de dados.

No exemplo abaixo, criamos uma tabela chamada jogadores, mas só se ela ainda não existir (usando IF NOT EXISTS):

<p align="center">
  <img src="/images/table.png" width="350" title="Código de criação de tabela">
</p>  


### 2. Definindo as colunas da tabela

Aqui está a explicação das colunas que criamos no exemplo:

- ID:
    - Tipo: int (inteiro).
    - Características: É a Primary Key (chave primária) da tabela, ou seja, identifica cada registro de forma única. Também é configurada como AUTO_INCREMENT, o que faz com que o valor seja gerado automaticamente para cada novo registro.

```sql
`ID` int AUTO_INCREMENT PRIMARY KEY
```

- Nome:
    - Tipo: varchar(24) (string com limite de 24 caracteres).
    - Restrição: NOT NULL, ou seja, o campo não pode ficar vazio.

```sql
`Nome` varchar(24) NOT NULL  
```

- Senha:
    - Mesma configuração da coluna Nome, pois também é uma string limitada a 24 caracteres e não pode ser nula.

```sql
`Senha` varchar(24) NOT NULL  
```

- Skin:
    - Tipo: int (inteiro).
    - Características: Tem um valor padrão de 230.

```sql
`Skin` int DEFAULT 230  
```

- Dinheiro:
    - Tipo: int (inteiro).
    - Características: Valor padrão de 2000.

```sql
`Dinheiro` int DEFAULT 2000  
```

### 3. Executando o comando no banco de dados

Com o comando SQL pronto, usamos a função mysql_query para enviá-lo ao banco de dados, utilizando a variável Connection que criamos anteriormente para estabelecer a conexão.

O parâmetro false no final indica que não queremos armazenar o resultado da consulta no cache, já que estamos apenas criando uma tabela.

### 4. Resultado

Com esses passos, sua tabela jogadores será criada com sucesso no banco de dados. Ela estará pronta para receber informações como ID, nome, senha, skin e dinheiro dos jogadores.

### Dica Extra

Se precisar criar mais tabelas no futuro, lembre-se de sempre usar o CREATE TABLE IF NOT EXISTS para evitar erros ao executar o comando em um banco de dados que já contém a tabela.

Viu como é simples criar uma tabela no MySQL? Agora você pode organizar os dados do seu projeto de forma estruturada e eficiente!

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
