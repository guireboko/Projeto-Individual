var database = require("../database/config");

function atualizarVoto(nomeJogador) {
  var instrucaoSql = `
        UPDATE votos
        SET quantidade = quantidade + 1
        WHERE atleta = '${nomeJogador}'
    `;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function buscarVotos() {
  var instrucaoSql = `SELECT quantidade FROM votos`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function buscarVotosQuantidade() {
  var instrucaoSql = `
  SELECT
	(SELECT votos.atleta FROM votos
		WHERE (SELECT MAX(quantidade) FROM votos) = quantidade LIMIT 1) AS maisVotado,
	(SELECT votos.atleta FROM votos
		WHERE (SELECT MIN(quantidade) FROM votos) = quantidade LIMIT 1) AS menosVotado;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);  
}

module.exports = {
  atualizarVoto,
  buscarVotos,
  buscarVotosQuantidade
};
