var express = require("express");
var router = express.Router();

var petController = require("../controllers/petController");

router.get("/qtdcachorro/:cachorro", function (req, res) {
    petController.qtdcachorro(req, res);
});


router.get("/tempo-real/:idAquario", function (req, res) {
    petController.buscarpetsEmTempoReal(req, res);
})

module.exports = router;