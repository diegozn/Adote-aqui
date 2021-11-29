var petModel = require("../models/petModel");

function qtdcachorro(req, res) {

    var cachorro = req.params.cachorro;

    console.log(`Recuperando pets em tempo real`);

    petModel.qtdcachorro(cachorro).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas pets.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}


// inicio

var petModel = require("../models/petModel");

function qtdgato(req, res) {

    var gato = req.params.gato;

    console.log(`Recuperando pets em tempo real`);

    petModel.qtdgato(gato).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas pets.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}



module.exports = {
    qtdgato,
    qtdcachorro,
   

}