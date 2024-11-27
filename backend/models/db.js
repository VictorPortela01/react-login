const Sequelize = require('sequelize')

const sequelize = new Sequelize('metas','root', '', {
    host:"10.1.1.120",
    dialect:"mysql"
})



module.exports = sequelize;