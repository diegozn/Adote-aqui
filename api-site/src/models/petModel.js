var database = require("../database/config");


function qtdcachorro(cachorro) {
    instrucaoSql = `select count(animal) as qtd_cachorro from pet
     where animal = '${cachorro}';`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function qtdgato(gato) {
    instrucaoSql = `select count(animal) as qtd_gato from pet
     where animal = '${gato}';`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    qtdcachorro,
    qtdgato,
}