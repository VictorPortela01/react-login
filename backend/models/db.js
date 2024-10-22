const Sequelize = require('sequelize')

const sequelize = new Sequelize('primeirotest','root', '', {
    host:"localhost",
    dialect:"mysql",
    pool : {
      max: 5, //Número máximo de conexões no pool
      min: 0, // Número mínimo de conexões no pool
      acquire: 10000, // Tempo máximo, em milissegundos, que uma conexão pode ser mantida antes do timeout (10 segundos)
      idle: 10000 // Tempo máximo que uma conexão pode ficar ociosa antes de ser liberada
    }
})


sequelize.authenticate()
.then(function(){
    console.log("Conexão com o banco de dados realizada com sucesso!")
}).catch(function(){
  console.log("ERRO: Conexão com o banco de dados não reazliada com sucesso!",err)
})


module.exports = sequelize;