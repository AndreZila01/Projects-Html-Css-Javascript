Create table tblcargo(
Idcargo int identity(1,1) primary key,
cargo varchar(100),
)

Insert into tblCargo(cargos) values('Secretaria/o')
Insert into tblCargo(cargos) values('Enfermeira/o')
Insert into tblCargo(cargos) values('Ciurgia/ão')
Insert into tblCargo(cargos) values('Medica/o')
Insert into tblCargo(cargos) values('Psicologa/o')
Insert into tblCargo(cargos) values('Fisioterapeuta')
Insert into tblCargo(cargos) values('SemCargo')

Create table tblDoutor(
IdDoutor int identity(1,1) primary key,
nOrdemDosMedicos int not null,
nome varchar(350),
IdCargo int Foreign key references tblcargo(Idcargo),
horasTrabalhadas datetime not null,
primeiravez date not null, -- Primeira vez que começou a trabalhar no hospital
inicioTrabalho datetime, -- primeira vez que fez login
fimdetrabalho datetime, -- ultimo login do dia
)


Create table tblUser(
IdUser int identity(1,1) primary key,
nomecompleto varchar(350) not null,
sexo varchar(1) not null,
altura float not null,
nutentedesaude varchar(9) not null
icon image,
Nascimento date not null,
telemovel varchar(9) not null,
fichatecnica varchar(max)  not null,
IdMedicoFamilia int Foreign key references tblDoutor(IdDoutor) not null
)

Create table tblLogin(
IdLogin int identity(1,1) primary key,
username varchar(max),
password varchar(max),
IdUser int Foreign key references tblUser(idUser),
)

Create table tblNews(
idNew int identity(1,1) primary key,
titulo varchar(50) not null,
descricao varchar(500) not null,
img1 image not null,
img2 image,
img3 image,
img4 image,
linkvideo varchar(100)
data datetime not null,
autor varchar(70) not null,
categoria varchar(250) not null,
)
