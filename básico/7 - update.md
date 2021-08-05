7. UPDATE

A função UPDATE nada mais é do que o próprio nome diz, "Atualizar", com ela nós podemos atualizar dados inseridos em colunas, e é com ela que fazemos por exemplo um sistema de salvamento de contas.

Um exemplo de como você pode usa-la: 

<p align="center">
  <img src="/images/update.png" width="500" title="hover text">
</p>

Acima nós usamos novamente a função de format do MySQL e nela nós atualizamos a tabela contas e setamos valores nas colunas Score, Skin, e Dinheiro, ENQUANTO o ID do jogador for igual ao ID dele da tabela.

Para facilitar o entendimento, lembra do AUTO_INCREMENT e PRIMARY KEY que colocamos na coluna ID no modulo 5? Ele é algo único cada Player tem o seu e você pode criar sistemas de ID FIXO por exemplo, então nós atualizamos a tabela contas, setamos valores nas colunas e setamos no jogador da tabela que tem o ID formatado, em vez de ID você pode usar o nome dele, porém considero mais fácil da forma acima.

Você pode ver mais sobre a função UPDATE aqui: https://www.w3schools.com/php/php_mysql_update.asp
