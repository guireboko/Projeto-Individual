var express = require("express");
var router = express.Router();

var votoController = require("../controllers/votoController");

router.post("/votar/:nomeJogador", function (req, res) {
  votoController.votarPorNome(req, res); 
});

router.get("/ultimos", function (req, res) {
  votoController.obterVotosAtualizados(req, res); 
});

router.get("/buscarPorQuantidade", function (req, res) {
  votoController.buscarVotosQuantidade(req, res); 
});



module.exports = router;
