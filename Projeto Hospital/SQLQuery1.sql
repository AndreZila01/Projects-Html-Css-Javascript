Create table tblcargo(
Idcargo int identity(1,1) primary key,
cargo varchar(100),
)

Insert into tblCargo(cargo) values('Secretaria/o')
Insert into tblCargo(cargo) values('Enfermeira/o')
Insert into tblCargo(cargo) values('Ciurgia/ão')
Insert into tblCargo(cargo) values('Medica/o')
Insert into tblCargo(cargo) values('Psicologa/o')
Insert into tblCargo(cargo) values('Fisioterapeuta')
Insert into tblCargo(cargo) values('SemCargo')


Create table tblUser(
IdUser int identity(1,1) primary key,
nomecompleto varchar(350) not null,
sexo varchar(1) not null,
altura float not null,
nutentedesaude varchar(9) not null,
icon image,
Nascimento date not null,
telemovel varchar(9) not null,
fichatecnica varchar(max)  not null,
IdMedicoFamilia int
)


Create table tblDoutor(
IdDoutor int identity(1,1) primary key,
idUser int Foreign Key references tblUser(idUser),
nOrdemDosMedicos int not null,
IdCargo int Foreign key references tblcargo(Idcargo),
horasTrabalhadas int not null,
primeiravez date not null, -- Primeira vez que começou a trabalhar no hospital
inicioTrabalho datetime, -- primeira vez que fez login
fimdetrabalho datetime, -- ultimo login do dia
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
linkvideo varchar(100),
data datetime not null,
autor varchar(70) not null,
categoria varchar(250) not null,
)

insert tblUser([nomecompleto],[sexo],[altura],[nutentedesaude],[icon],[Nascimento]      ,[telemovel]
      ,[fichatecnica],[IdMedicoFamilia]) values('Pedro Manuel da Silva', 'M', 1.80, 
	  50001, '', '2001-02-04T10:00:00.000Z', 999999999, 'Asma', 500)

insert tblUser([nomecompleto],[sexo],[altura],[nutentedesaude],[icon],[Nascimento]      ,[telemovel]
      ,[fichatecnica],[IdMedicoFamilia]) values('Maria Isabel', 'F', 1.65, 
	  50002, '', '1945-08-10T10:00:00.000Z', 999999991, '---', 500)

insert tblUser([nomecompleto],[sexo],[altura],[nutentedesaude],[icon],[Nascimento]      ,[telemovel]
      ,[fichatecnica],[IdMedicoFamilia]) values('Marta Marquês', 'F', 1.60, 
	  40002, '', '1965-02-15T10:00:00.000Z', 999999992, '---', 500)

insert tbldoutor([idUser], [nOrdemDosMedicos], [IdCargo], [horasTrabalhadas], [primeiravez], [inicioTrabalho], [fimdetrabalho])
  values (1, 500, 4, 0, '2020-02-04T10:00:00.000Z', '2023-06-30T07:00:00.000Z', '2023-06-30T20:00:00.000Z')
  insert tbldoutor([idUser], [nOrdemDosMedicos], [IdCargo], [horasTrabalhadas], [primeiravez], [inicioTrabalho], [fimdetrabalho])
  values (3, 4, 0, '2020-02-04T10:00:00.000Z', '2023-06-30T07:00:00.000Z', '2023-06-30T20:00:00.000Z') 

