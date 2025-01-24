const {DataTypes} = require('sequelize');
const database = require('../db');

const Genero = database.define(
    'Genero',
   {

       cod:{
            type: DataTypes.STRING,
            autoIncrement: false,
            allowNull: false,
            primaryKey: true
        },
        nome:{
            type:DataTypes.STRING,
            allowNull:false
        }
   });
   module.exports = Genero