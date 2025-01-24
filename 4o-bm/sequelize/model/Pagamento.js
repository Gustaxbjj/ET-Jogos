const {DataTypes} = require('sequelize');
const database = require('../db');

const Pagamento = database.define(
    'Pagamento',
   {

       id:{
            type: DataTypes.STRING,
            autoIncrement: false,
            allowNull: false,
            primaryKey: true
        },

        nome:{
            type:DataTypes.STRING,
            allowNull:false
        },

        descricao:{
            type: DataTypes.STRING,
            allowNull:false
        },

        imgDoJogo:{
            type:DataTypes.STRING,
            allowNull: false
        },

        lancamento:{
            type:DataTypes.DATE,
            allowNull:false
        }

   });      
   module.exports = Pagamento