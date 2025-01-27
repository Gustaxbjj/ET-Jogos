const sequelize= require('./db');
const setupRelacoes = require ('./model/Relacoes');
const Usuario = require('./model/Usuario');


(async () => {
    try {
   
      setupRelacoes();
  

      await sequelize.sync({ force: true });
      console.log('Banco de dados sincronizado.');
  
      
      const Usuario = await Usuario.create({ login: 'Gustavo', senha: '12345' });
    
    const  Usuariojogos = await Usuariojogos.create({

    });

    });

    

    