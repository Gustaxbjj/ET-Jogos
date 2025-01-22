const {DataTypes} = require('sequelize');
const database = require('../db');

const Jogos = database.define(
    'Jogos',
   {

       cod:{
            type: DataType.STRING,
            autoIncrement: false,
            allowNull: true,
            primaryKey: true
        },

        nome:{
            type:DataType.STRING,
            allowNull:true
        },

        descricao:{
            type: DataType.STRING,
            allowNull:true
        },

        imgDoJogo:{
            type:DataType.STRING,
            allowNull: true
        },

        lancamento:{
            type:DataType.DATE,
            allowNull:true
        }

   });      
   module.exports = Jogos