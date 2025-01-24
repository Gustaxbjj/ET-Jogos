const {DataTypes} = require('sequelize');
const database = require('../db');

const Produto = database.define(
    'Produto',
   {

       cod:{
            type: DataTypes.STRING,
            autoIncrement: false,
            allowNull: false,
            primaryKey: true
        },

        descricao:{
          type:DataTypes.STRING,
          allowNull:false
        },


        nome:{
            type:DataTypes.STRING,
            allowNull:false
        },

        quantidade:{
            type:DataTypes.STRING,
            allowNull:false,
        },

        preco:{
            type: DataTypes.DOUBLE,
            allowNull:false
        },

        imgDoProduto:{
            type: DataTypes.STRING,
            allowNull:false
        }


   });
   module.exports = Produto