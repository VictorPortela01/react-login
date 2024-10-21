const Sequelize = require('sequelize')
const db = require('./db')

const User = db.define("usuarios", {
    cpf: {
        type: Sequelize.STRING,
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
//User.sync({alter: true})

module.exports = User
