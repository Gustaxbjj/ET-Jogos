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