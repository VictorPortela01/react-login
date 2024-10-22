const Sequelize = require('sequelize')
const db = require('./db')
const { type } = require('os')

const User = db.define("usuarios", {
    id : {
        type:Sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },
    cpf: {
        type: Sequelize.STRING(11),
        allowNull: false,
        unique: true
    },
    nome: {
        type: Sequelize.STRING,
        allowNull: false
    },
    senha: {
        type: Sequelize.STRING,
        allowNull: false
    }
})

//Verificar se há alguma diferença na tabela, realizada a alteração
//User.sync({ alter: true })
   // .then(() => {
   //     console.log("Tabela sicronizada com sucesso.")
   // })
   // .catch(err => {
   //     console.error("Erro ao sicronizar tabela:",err)
  //  })

module.exports = User
