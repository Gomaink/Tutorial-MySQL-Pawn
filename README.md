# Tutorial-MySQL-Pawn
> Um básico tutorial de MySQL aplicado em Pawn.

<br>

- 1. [Apresentação](#-Apresentação)

- 2. [O que são SQL, MySQL e XAMPP?(#-O que são SQL, MySQL e XAMPP?)

- 3. [Instalação](#-Instalação)

- 4. [XAMPP](#-XAMPP)

- 5. [Conexão](#-Conexão)
   
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

A função INSERT INTO é usada para inserir novos dados em uma tabela do banco de dados. Como o nome sugere, ela permite adicionar registros completos, especificando as colunas e seus respectivos valores.

### 1. Como funciona o INSERT INTO

A sintaxe básica de um comando INSERT INTO é:

```sql
INSERT INTO tabela (coluna1, coluna2, ...) VALUES (valor1, valor2, ...);  
```

Com isso, você pode adicionar dados diretamente nas colunas especificadas, criando um novo registro na tabela.

### 2. Exemplo no Gamemode

No contexto de um gamemode, um bom exemplo seria salvar os dados de um jogador que acabou de se registrar. Veja o exemplo abaixo:

<p align="center">
  <img src="/images/insert.png" width="750" title="Exemplo de uso do INSERT INTO">
</p>  


Aqui está o que acontece nesse exemplo:
- Usamos a função format para construir o comando SQL dinamicamente, substituindo as variáveis nome e senha pelos valores fornecidos pelo jogador.
- O comando resultante insere os dados na tabela contas, especificamente nas colunas Nome e Senha.

### 3. Diferença entre Inserir e Atualizar Dados

Lembre-se de que o INSERT INTO é usado exclusivamente para adicionar novos registros à tabela. Se você quiser modificar um registro já existente, será necessário usar a função UPDATE, que será explicada mais à frente.

### 4. Aplicação Prática

Essa funcionalidade é muito útil em cenários como:
- Registrar novos jogadores.
- Salvar configurações ou estatísticas iniciais.
- Registrar logs de eventos, como conexões e desconexões.

Com o comando INSERT INTO, você tem uma ferramenta poderosa para gerenciar os dados no seu projeto de forma simples e eficiente.

## 🚀 UPDATE

A função UPDATE é utilizada para modificar os valores de uma ou mais colunas em um registro específico de uma tabela. Como o próprio nome sugere, ela serve para “atualizar” informações já existentes.

Um exemplo clássico é o uso do UPDATE em sistemas de salvamento de contas, onde os dados de um jogador (como pontuação, skin, ou dinheiro) são atualizados no banco de dados.

### 1. Como funciona o UPDATE

A estrutura básica do comando é:

```sql
UPDATE tabela  
SET coluna1 = valor1, coluna2 = valor2  
WHERE condição;  
```

- SET: Define as colunas que serão alteradas e seus novos valores.
- WHERE: Especifica qual registro será atualizado, garantindo que apenas os dados corretos sejam modificados.

### 2. Exemplo no Gamemode

Veja abaixo um exemplo prático de uso no seu gamemode:

<p align="center">
  <img src="/images/update.png" width="500" title="Exemplo de uso do UPDATE">
</p>  


Neste caso:
- Usamos a função format do MySQL para montar a consulta de forma dinâmica.
- Atualizamos a tabela contas, alterando os valores das colunas Score, Skin, e Dinheiro.
- A condição WHERE garante que apenas o registro do jogador com o ID correspondente será atualizado.

### 3. Por que usar o ID como referência?

No exemplo acima, usamos o ID como referência para identificar o registro correto a ser atualizado. Isso é possível graças às configurações de AUTO_INCREMENT e PRIMARY KEY que criamos no módulo anterior:
- ID é único: Cada jogador possui um ID exclusivo na tabela. Isso evita erros ao atualizar dados.
- Alternativa com o Nome: Também é possível usar o nome do jogador como referência, mas o ID é geralmente mais confiável, pois evita problemas com nomes duplicados ou alterações de nome.

### 4. Dicas de Implementação

- Otimização de Consultas:
Atualize apenas os dados necessários. Por exemplo, não atualize colunas que não sofreram alterações. Isso reduz a carga no banco de dados.
- Evite Sobrescritas Acidentais:
Sempre use o WHERE para especificar qual registro deve ser atualizado. Um comando UPDATE sem WHERE irá alterar todos os registros da tabela, o que pode causar grandes problemas.

###5. Uso Prático

O comando UPDATE é ideal para diversas situações, como:
- Salvar o progresso de um jogador.
- Atualizar estatísticas (ex.: kills, mortes, dinheiro).
- Gerenciar alterações de configurações.

Com o UPDATE, você pode manter os dados do jogador sincronizados com o banco de dados, garantindo que nenhuma informação seja perdida entre sessões.

## 🚀 DELETE

A função DELETE é usada para remover registros de uma tabela. Como o próprio nome sugere, ela exclui dados específicos com base em uma condição. Por exemplo, você pode utilizá-la para excluir a conta de um jogador diretamente pelo gamemode, sem precisar acessar o banco de dados manualmente.

### 1. Como funciona o DELETE

A estrutura básica do comando é:

```sql
DELETE FROM tabela  
WHERE condição;  
```

- DELETE FROM: Define a tabela de onde os dados serão removidos.
- WHERE: Determina qual registro será excluído.

⚠ Atenção:
Sem o WHERE, o comando DELETE removerá todos os registros da tabela, o que pode causar perda de dados irreversível.

### 2. Exemplo no Gamemode

Veja um exemplo prático de como utilizar o DELETE:

<p align="center">
  <img src="/images/delete.png" width="750" title="Exemplo de uso do DELETE">
</p>  


O que acontece aqui?
- Utilizamos a função format para criar a consulta SQL.
- O comando instrui o banco de dados a deletar um registro da tabela jogadores cujo nome seja igual ao valor obtido (por exemplo, o nome do jogador que solicitou a exclusão).

Nesse caso, todos os dados do jogador na tabela serão removidos.

### 3. Por que usar DELETE?

O comando DELETE é útil em diversas situações, como:
- Excluir contas antigas ou inativas: Remova registros que não são mais necessários para liberar espaço no banco de dados.
- Remoção manual por comando: Permita que administradores deletem contas diretamente do jogo.
- Gestão de banimentos: Combine o DELETE com sistemas de punição para remover contas automaticamente.

### 4. Dicas e Boas Práticas
- Evite usar apenas o nome do jogador como referência:
Nomes podem ser alterados ou duplicados. Sempre que possível, use identificadores únicos, como o ID, para garantir que o registro correto seja deletado.


- Confirmação antes de deletar:
Em sistemas que permitem deletar contas, ofereça uma etapa de confirmação ao jogador, como um diálogo ou mensagem, antes de realizar a exclusão definitiva.
- Teste antes de usar em produção:
Sempre teste comandos DELETE em um ambiente seguro para evitar exclusões acidentais.

### 5. Conclusão

A função DELETE é poderosa, mas exige cuidado em seu uso. Com ela, você pode manter o banco de dados organizado e atualizado, removendo registros desnecessários ou indesejados de forma prática e eficiente.

## 🚀 SELECT

A função SELECT é uma das mais usadas no SQL, permitindo resgatar informações de um banco de dados. Com ela, você pode consultar dados específicos ou coletar informações completas de tabelas para processar no seu sistema.

### 1. Como funciona o SELECT?

A sintaxe básica do comando é:

```sql
SELECT colunas  
FROM tabela  
WHERE condição;  
```

- SELECT: Define quais colunas serão recuperadas.
- FROM: Especifica a tabela onde os dados estão armazenados.
- WHERE: Filtra os registros com base em condições específicas.

### 2. Exemplo no Gamemode

Veja como usar o SELECT em diferentes cenários:

#### a) Selecionando Todos os Dados de um Jogador

<p align="center">
  <img src="/images/select.png" width="750" title="Exemplo de SELECT com *">
</p>  


Nesse exemplo:
- O comando SELECT * instrui o banco de dados a retornar todas as colunas da tabela contas.
- A condição WHERE Nome = '%s' garante que apenas os dados do jogador com o nome fornecido serão retornados.

    - Nota: O asterisco (*) significa “todos” no SQL, ou seja, ele retorna todas as colunas da tabela.

#### b) Selecionando Apenas Uma Coluna

<p align="center">
  <img src="/images/select2.png" width="750" title="Exemplo de SELECT com coluna específica">
</p>  


Neste caso:
- Selecionamos apenas a coluna Dinheiro da tabela contas.
- Essa abordagem é útil quando você precisa de um único dado, economizando processamento e largura de banda.

#### c) Selecionando Múltiplas Colunas

<p align="center">
  <img src="/images/select3.png" width="750" title="Exemplo de SELECT com múltiplas colunas">
</p>  


Aqui:
- Selecionamos as colunas Dinheiro e Skin.
- Essa técnica permite recuperar somente os dados necessários, otimizando o desempenho da consulta.

### 3. Dicas de Uso
- Filtrando Dados com Precisão:
Sempre utilize o WHERE para especificar quais registros deseja buscar. Isso evita retornar informações desnecessárias.
- Lidando com Resultados:
Após executar o SELECT, você pode armazenar e processar os dados no seu sistema, como exibir o dinheiro do jogador ou carregar sua skin com funções como chache_get_value_name


- Evitando Sobrecarga no Banco de Dados:
Sempre que possível, prefira especificar as colunas que deseja retornar, em vez de usar o *. Isso reduz o tráfego entre o banco e o servidor.

### 4. Aplicação em Diversos Cenários

A função SELECT é essencial para:
- Carregar os dados do jogador ao conectar no servidor.
- Exibir estatísticas ou rankings.
- Verificar a existência de uma conta antes de registrá-la.

Com o SELECT, você tem o controle total sobre quais informações deseja acessar e como utilizá-las no seu sistema.
