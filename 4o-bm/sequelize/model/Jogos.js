const {DataTypes} = require('sequelize');
const database = require('../db');

const Jogos = database.define(
    'Jogos',
   {

       cod:{
            type: DataTypes.STRING,
            autoIncrement: false,
            allowNull: false,
            primaryKey: true
        },

        nome:{
            type:DataType.STRING,
            allowNull:false
        },

        descricao:{
            type: DataType.STRING,
            allowNull:false
        },

        imgDoJogo:{
            type:DataType.STRING,
            allowNull: false
        },

        lancamento:{
            type:DataType.DATE,
            allowNull:false
        }

   });      
   module.exports = Jogos