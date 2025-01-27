const Usuario = require('./Usuario')
const Jogos = require('./Jogos')
const Genero = require('./Genero')
const Pagamento = require('./Pagamento');
const Produto = require('./Produto');


module.exports = () => {
    Usuario.belongsToMany(Usuario, {foreignKey: 'UsuarioJogos'});
    Jogos.belongsToMany(Jogos, {foreignKey: 'UsuarioJogos'});

    Usuario.belongsToMany(Usuario, {foreignKey: 'Usuariogenero'});
    Genero.belongsToMany(Genero, {foreignKey: 'Usuariogenero'});

    Usuario.belongsToMany(Usuario, {foreignKey: 'Usuariopagamento'});
    Pagamento.belongsToMany(Pagamento, {foreignKey: 'Usuariopagamento'});

    Genero.belongsToMany(Genero, {foreignKey: 'Generojogos'});
    Jogos.belongsToMany(Jogos, {foreignKey: 'GenerosJogos'});

    Usuario.belongsToMany(Usuario, {foreignKey: 'Usuarioprodutospagamentos'});
    Produto.belongsToMany(Produto, {foreignKey: 'Usuarioprodutospagamentos'})
    Pagamento.belongsToMany(Pagamento, {foreignKey: 'Usuarioprodutospagamentos'});

    Produto.hasMany(Produto, {foreignKey:'Produtojogos'})
    Jogos.belongsToMany(Jogos, {foreignKey: 'Produtojogos'});


    Pagamento.hasMany(Pagamento, {foreignKey: 'Pagamentousuario'});
    Usuario.belongsToMany(Usuario, {foreignKey: 'Pagamentousuario'});

    Pagamento.hasMany(Pagamento, {foreignKey: 'Pagamentoproduto'});
    Produto.belongsToMany(Produto, {foreignKey: 'Pagamentoproduto'})


  };


