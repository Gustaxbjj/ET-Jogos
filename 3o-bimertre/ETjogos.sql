CREATE DATABASE etjogos;
USE etjogos;

create table usuario(
cpf varchar(14) primary key not null,
senh	a varchar(23) not null,
login varchar(12) not null,
email varchar(35)  not null
);

create table jogos(
cod varchar(11)  primary key not null,
nome varchar(100) not null,
descricao varchar(100),
lancamento date
);

create table genero(
cod varchar(10) primary key,
nome varchar(50)
);

create table produtos(
cod varchar(11) primary key not null,
descricao varchar(100),
nome varchar(50) not null,
preco double,
FK_cod_jogos varchar(11),
foreign key(FK_cod_jogos) references jogos(cod)
);

create table(

)
 
create table pagamento(

id varchar(8) primary key not null,
nome varchar(30),
FK_cpf_usuario varchar(14),
FK_cod_produtos varchar(11),
foreign key (FK_cpf_usuario) references usuario(cpf),
foreign key(FK_cod_produtos) references produtos(cod)
);

#----------------------------------

create table usuariojogos(
FK_cpf_usuario varchar(14),
FK_cod_jogos varchar(11),
foreign key(FK_cpf_usuario) references usuario(cpf),
foreign key(FK_cod_jogos) references jogos(cod),
primary key(FK_cod_jogos,FK_cpf_usuario)
);

create table usuariogenero(
FK_cpf_usuario varchar(14),
FK_cod_genero varchar(50),
foreign key(FK_cpf_usuario) references usuario(cpf),
foreign key(FK_cod_genero) references genero(cod),

primary key(FK_cpf_usuario,FK_cod_genero)

);

create table usuariopagamento(
FK_cpf_usuario varchar (14),
FK_id_pagamento varchar(8),
foreign key(FK_cpf_usuario) references usuario(cpf),
foreign key(FK_id_pagamento) references pagamento(id),

primary key(FK_cpf_usuario,FK_id_pagamento)
);

create table generojogo(
FK_cod_genero varchar (11),
FK_cod_jogos varchar(11),
foreign key(FK_cod_genero) references genero(cod),
foreign key(FK_cod_jogos) references jogos(cod),

primary key(FK_cod_genero, FK_cod_jogos)
);

create table usuariosprodutospagamento(
FK_cpf_usuario varchar(14),
FK_cod_produtos varchar(11),
FK_id_pagamento varchar(11),
foreign key(FK_cpf_usuario) references usuario(cpf),
foreign key(FK_cod_produtos) references produtos(cod),
foreign key(FK_id_pagamento) references pagamento(id),
primary key(FK_cpf_usuario,FK_cod_produtos,FK_id_pagamento)
)
