new Query[5000];
mysql_format(DBConnection, Query, sizeof(Query), "SELECT * FROM `jogadores` WHERE Nome = '%s'", GetPlayerNameEx(playerid));
mysql_query(DBConnection, Query);

new Query[5000];
mysql_format(DBConnection, Query, sizeof(Query), "SELECT Dinheiro FROM `jogadores` WHERE Nome = '%s'", GetPlayerNameEx(playerid));
mysql_query(DBConnection, Query);

new Query[5000];
mysql_format(DBConnection, Query, sizeof(Query), "SELECT Dinheiro, Skin FROM `jogadores` WHERE Nome = '%s'", GetPlayerNameEx(playerid));
mysql_query(DBConnection, Query);