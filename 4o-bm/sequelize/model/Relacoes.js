const Usuario = require('./Usuario')
const Jogos = require('./Jogos')
const Genero = require('./Genero')
const Pagamento = require('./Pagamento');
const Produto = require('./Produto');


module.exports = () => {
    Usuario.belongsToMany(Jogos, {through: 'UsuarioJogos'});
    Jogos.belongsToMany(Usuario, {through: 'UsuarioJogos'});

    Usuario.belongsToMany(Genero, {through: 'Usuariogenero'});
    Genero.belongsToMany(Usuario, {through: 'Usuariogenero'});

    Usuario.belongsToMany(Pagamento, {through: 'Usuariopagamento'});
    Pagamento.belongsToMany(Usuario, {through: 'Usuariopagamento'});

    Genero.belongsToMany(Jogos, {through: 'Generojogos'});
    Jogos.belongsToMany(Genero, {through: 'GenerosJogos'});

    // Usuario.belongsToMany(Usuario, {through: 'Usuarioprodutospagamentos'});
    // Produto.belongsToMany(Produto, {through: 'Usuarioprodutospagamentos'})
    // Pagamento.belongsToMany(Pagamento, {through: 'Usuarioprodutospagamentos'});

    Produto.hasMany(Jogos, {foreignKey:'codProduto'});
    Jogos.hasMany (Produto, {foreignKey: 'codProduto'});


    Pagamento.hasMany(Usuario, {foreignKey: 'id'});
    Usuario.belongsTo(Pagamento, {foreignKey: 'id'});

    Pagamento.hasMany(Produto, {foreignKey: 'id'});
    Produto.belongsTo(Pagamento, {foreignKey: 'id'})


  };


