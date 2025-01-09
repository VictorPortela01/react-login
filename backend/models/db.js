const Sequelize = require('sequelize')

const sequelize = new Sequelize('metas','root', '', {
    host:process.env.DB_HOST,
    user:process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    dialect:"mysql"
})



module.exports = sequelize;