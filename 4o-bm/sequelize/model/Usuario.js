const {DataTypes} = require('sequelize');
const database = require('../db');

const Usuario = database.define(
    'Usuario',
   {

       cpf:{
            type: DataTypes.STRING,
            autoIncrement: false,
            allowNull: false,
            primaryKey: true
        },

        senha:{
          type:DataTypes.STRING,
          allowNull:false
        },


        login:{
            type:DataTypes.STRING,
            allowNull:false
        },

        imgDoProduto:{
            type: DataTypes.STRING,
            allowNull:false
        }


   });
   module.exports = Usuario