const Sequelize = require('sequelize')

const sequelize = new Sequelize('primeirotest','root', '', {
    host:"localhost",
    dialect:"mysql",
})


sequelize.authenticate()
.then(function(){
    console.log("Conexão com o banco de dados realizada com sucesso!")
}).catch(function(){
  console.log("ERRO: Conexão com o banco de dados não reazliada com sucesso!")
})


module.exports = sequelize;