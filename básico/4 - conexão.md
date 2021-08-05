3. Estabelecendo conexão.

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

com a função mysql_errno() verificamos se não existe nenhum erro na hora de se conectar ao database e damos um imprimimos se tudo ocorreu corretamente caso contrário irá imprimir uma mensagem de erro.

Após isso basta chamar a public em OnGamemodeInit.