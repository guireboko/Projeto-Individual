Create database projetoindividual;
Use projetoindividual;

Create Table usuario(
idUsuario int primary key auto_increment,
userName varchar(45),
email varchar(45)
);

create table senhaUsuario(
idSenha int auto_increment,
senha varchar(45),
fkUsuario int,
constraint foreign key (fkUsuario) references usuario(idUsuario),
constraint primary key (idSenha, fkUsuario)
);

select usuario.*, senhaUsuario.* from usuario join senhaUsuario on idUsuario = fkUsuario where senha = 'asd' and userName = 'asd';

