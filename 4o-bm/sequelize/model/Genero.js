const {DataTypes} = require('sequelize');
const database = require('../db');

const Genero = database.define(
    'Genero',
   {

       cod:{
            type: DataType.STRING,
            autoIncrement: false,
            allowNull: false,
            primaryKey: true
        },
        nome:{
            type:DataType.STRING,
            allowNull:true
        }
   })