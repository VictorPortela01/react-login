const Sequelize = require('sequelize')
const db = require('./db')
 

const Teste36 = db.define('teste36', {
  nome: {
    type: Sequelize.STRING,
    allowNull: false
  },
  codigo: {
    type: Sequelize.INTEGER,
    allowNull: false,
    unique: true
  },
  rating: {
    type: Sequelize.STRING,
    allowNull: true
  },
  tml: {
    type: Sequelize.STRING,
    allowNull: true
  },
  vales: {
    type: Sequelize.STRING,
    allowNull: true
  }
})

Teste36.sync({ force: false })  // Ou { alter: true } se for necessário atualizar a estrutura
  .then(() => console.log('Tabela Teste36 sincronizada com sucesso!'))
  .catch(err => console.error('Erro ao sincronizar tabela Teste36:', err));
  

module.exports = Teste36
