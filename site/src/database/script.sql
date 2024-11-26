create database projetoindividual;
use projetoIndividual;
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

select usuario.*, senhaUsuario.* from usuario join senhaUsuario on idUsuario = fkUsuario;

CREATE TABLE projetoindividual.votos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    atleta VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL DEFAULT 0 
);

SELECT * FROM projetoindividual.votos;

SELECT
	(SELECT votos.atleta FROM votos
		WHERE (SELECT MAX(quantidade) FROM votos) = quantidade) AS maisVotado,
	(SELECT votos.atleta FROM votos
		WHERE (SELECT MIN(quantidade) FROM votos) = quantidade) AS menosVotado;

INSERT INTO projetoindividual.votos (atleta) VALUES 
('Vinicius Junior'),
('Lionel Messi'),
('Cristiano Ronaldo'),
('Neymar Junior'),
('Kylian Mbappe'),
('Antoine Griezmann');


