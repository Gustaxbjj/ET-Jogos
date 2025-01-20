const {Sequelize} = require('sequelize');
const sequelize = new Sequelize(
     'etjogos',
     'aluno.ifal',
     'aluno.ifal22',
    {
        host:'localhost',
        dialect:',mysql2'
    }
);
module.exports = sequelize
