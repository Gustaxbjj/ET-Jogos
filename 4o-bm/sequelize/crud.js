const database = require('./db');
const Genero = require('./model/Genero');   
const Jogos = require('./model/Jogos');
const Pagamento = require('./model/Pagamento');
const Produto = require('./model/Produto');
const Usuario = require('./model/Usuario');


const setupRelacoes = require ('./model/Relacoes');

(async () =>{
    try{
        //  setupRelacoes();
         await database.sync({ force: true });
         console.log('Banco de dados sincronizado.');

         console.log('DB sync');
    } catch (error){
        console.log("ERRO!", error);
    }
})()