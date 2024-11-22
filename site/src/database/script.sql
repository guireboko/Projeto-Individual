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
CREATE TABLE jogador (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    atleta VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL DEFAULT 0 
);

INSERT INTO jogador (atleta) VALUES 
('Vinicius Junior'),
('Lionel Messi'),
('Cristiano Ronaldo'),
('Neymar Junior'),
('Kylian Mbappe'),
('Antoine Griezmann');

SELECT * FROM jogador;
