var usuarioModel = require("../models/usuarioModel");

var sessoes = [];

function testar(req, res) {
    console.log("ENTRAMOS NA usuarioController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function listar(req, res) {
    usuarioModel.listar()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

function entrar(req, res) {
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;

    if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está indefinida!");
    } else {
        
        usuarioModel.entrar(email, senha)
            .then(
                function (resultado) {
                    console.log(`\nResultados encontrados: ${resultado.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if (resultado.length == 1) {
                        console.log(resultado);
                        res.json(resultado[0]);
                    } else if (resultado.length == 0) {
                        res.status(403).send("Email e/ou senha inválido(s)");
                    } else {
                        res.status(403).send("Mais de um usuário com o mesmo login e senha!");
                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}

function cadastrar(req, res) {
    var nome = req.body.nomeServer;
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;
    var telefone = req.body.telefoneServer;

    if (nome == undefined) {
        res.status(400).send("Seu nome está undefined!");
    } else if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está undefined!");
    } else {
        
        usuarioModel.cadastrar(nome, email, senha, telefone)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

function anunciardoacao(req, res) {
    
    var animal = req.body.animalServer;
    var nomeAnimal = req.body.nomeAnimalServer;
    var sexo = req.body.sexoServer;
    var porte = req.body.porteServer;
    var idade = req.body.idadeServer;
    var sobre = req.body.sobreServer;
    var foto = req.body.fotoServer;
    var contato = req.body.contatoServer;
    var fk_usuario = req.body.fk_usuarioServer;
    
    if (animal == undefined) { 
        res.status(400).send("Seu animal está undefined!");
    } else if (nomeAnimal == undefined) {
        res.status(400).send("O nome do está undefined!");
    } else if (sexo == undefined) {
        res.status(400).send("Seu sexo está undefined!");    
    } else if (porte == undefined) {
        res.status(400).send("Seu porte está undefined!");   
    } else if (idade == undefined) {
        res.status(400).send("Sua idade está undefined!");   
    } else if (sobre == undefined) {
        res.status(400).send("Sua foto está undefined!");   
    } else if (foto == undefined) {
        res.status(400).send("Sua foto está undefined!");   
    } else if (contato == undefined) {
        res.status(400).send("Sua contato está undefined!");   
    } else {  
        usuarioModel.anunciardoacao(animal, nomeAnimal, sexo, porte, idade, sobre, foto, contato, fk_usuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    entrar,
    cadastrar,
    listar,
    testar,
    anunciardoacao
}