const {Sequelize} = require('sequelize')
const sequelize = new Sequelize(
     'etjogos',
     'aluno.ifal',
     'aluno.ifal',
    {
        host:'localhost',   
        dialect:'mysql'
    }
);
module.exports = sequelize
