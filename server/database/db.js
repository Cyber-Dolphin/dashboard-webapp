const Sequelize = require('sequelize')
const db = {}
const sequelize = new Sequelize('samm', 'samm_user', 'samm_user_Passw0rd!', {
  host: 'localhost',
  dialect: 'mysql',
  operatorsAliases: false,

  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
})

db.sequelize = sequelize
db.Sequelize = Sequelize

module.exports = db

