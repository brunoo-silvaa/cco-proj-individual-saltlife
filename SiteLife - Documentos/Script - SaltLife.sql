create database SaltLifeBD;
use SaltLifeBD;

create table tb_Moderador (
	idModerador int primary key auto_increment,
    emailMod varchar(45),
    senhaMod varchar(15),
    nomeMod varchar(45),
    dataNascMod date
) auto_increment = 2020;
select * from tb_moderador;
insert into tb_Moderador values (null, "adim@gmail.com", "adim123", "Adiministrador", "2000-05-21"), (null, "bruno@gmail.com", "190203", "Bruno Leonardo", "2003-02-19");

create table tb_Postagem (
	idPostagem int primary key auto_increment,
    nomeTenis varchar(45),
    marcaTenis varchar(25),
    dataLancamento date,
    `drop` varchar(15),
    numDrop int,
    dataPostagem date,
    fkModerador int,
    foreign key (fkModerador) references tb_Moderador(idModerador)
) auto_increment = 1000;
-- select nomeTenis, marcaTenis, dataLancamento, `drop`, numDrop, dataPostagem, fkModerador from tb_postagem;
select * from tb_postagem;

create table tb_Usuario (
	idUsuario int primary key auto_increment,
    emailUsuario varchar(45),
    senhaUsuario varchar(15),
    nomeUsuario varchar(45),
    dataNasc date,
    tenisFavorito varchar(25)
) auto_increment = 1010;
insert into tb_Usuario values (null, "rafael@gmail.com", "rafael123", "Rafael Souza", "1999-04-12", "Nike Dunk Ice Blue");
select * from tb_Usuario;

create table tb_Favorito ( -- TABELA LIGANDO 'USUARIO + POSTAGEM'
	fkUsuario int,
    foreign key (fkUsuario) references tb_Usuario(idUsuario),
    fkPostagem int,
    foreign key (fkPostagem) references tb_Postagem(idPostagem),
    dataFavoritado date,
    primary key (fkUsuario, fkPostagem)
);
insert into tb_favorito values (1011, 1000, '2021-05-22');
select * from tb_favorito;