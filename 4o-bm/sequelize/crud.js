const database = require('./db');
const Genero = require('./model/Genero');
const Generojogo = require('./model/Generojogo')
const Jogos = require('./model/Jogos');
const Pagamento = require('./model/Pagamento');
const Produto = require('./model/Produto');
const Usuario = require('./model/Usuario');
const Usuariogenero = require('./model/Usuariogenero');
const Usuariojogos = require('./model/Usuariojogos');
const Usuariopagamento = require('./model/Usuariopagamento');
const Usuarioprodutospagameto = require('./model/Usuarioprodutospagamento')

const setupRelacoes = require ('./model/relacoes');

(async () =>{
    try{
         setupRelacoes();

         await database.sync();
         console.log('DB sync');
    } catch (error){
        console.log("ERRO!, error");
    }
})()