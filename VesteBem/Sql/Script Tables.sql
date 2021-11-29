Create table tbl_login(
IdLogin int identity(1,1) primary key,
Usern varchar(max) not null,
Passw varchar(max) not null,
Funcionario varchar not null
);

Create table tblFuncao(
IdFuncao int identity(1,1) primary key,
Funcao varchar(100), --Nome da funcao
);

Create table tbl_Funcionario(
IdFuncionario int identity(1,1) primary key,
Id_Funcao int Foreign key references tblFuncao(idFuncao),
Nome varchar(max) not null,
Telemovel varchar(max) not null,
Id_Login int Foreign key references tbl_login(idLogin) ,
Icon Image
);

Create table tblSexo(
IdSexo int identity(1,1) primary key,
Sexo varchar(3) not null, -- Mas, Fem, N/S
);

Create table tblLoc(
IdLoc int identity(1,1) primary key,
Loc varchar(100) not null,
);

Create table tblEstado(
IdEstado int identity(1,1) primary key,
Estado varchar(100) not null, --Em loja, Nos ctts, ...
);

Create table tbl_Cliente(
IdCliente int identity(1,1) primary key,
Nome varchar(max) not null,
Id_Sexo int foreign key references tblSexo(IdSexo) not null,
Nif varchar(max) not null, --9 digitos
Id_Login int foreign key references tbl_login(idLogin) not null,
Morada varchar(max) not null,
CodPostal varchar(max) not null,
Id_Localidade int foreign key references tblLoc(IdLoc) not null,
DataNasc date not null,
Email varchar(max) not null,
Telefone varchar(max) not null, --9
Icon Image,
);

Create table tblEmpresa(
IdEmpresa int identity(1,1) primary key,
NomeEmpresa varchar(100)
);
Create table tblCat(
IdCat int identity(1,1) primary key,
NomeCat varchar(100)
);
Create table tblSubCat(
IdSubCat int identity(1,1) primary key,
NomeSubCat varchar(100)
);
Create table tbl_Produtos(
IdProduto int identity(1,1) primary key,
Nome varchar(100) not null,
Valor Decimal(7,2) not null,
NomedaEmpresa int foreign key references tblEmpresa(IdEmpresa),--NomedaEmpresa varchar(100) not null,
CategoriaCat int foreign key references tblCat(IdCat),--CategoriaClasse varchar(100), -- Setor Cal�as, Sapatos, Acess�rios
CategoriaSubCat int foreign key references tblSubCat(IdSubCat),--CategoriaSubClasse varchar(100), -- Tenis, botas, roupa desportiva
Sexo varchar(1) not null,
Icon Image not null
);

Create table tbl_Encomendas(
IdEncomendas int identity(1,1) primary key,
ValorEncomendas Decimal(7,2) not null,
EstadoEncomendas int foreign key references tblEstado(IdEstado),
DataEncomenda date not null,
Id_Cliente int foreign key references tbl_Cliente(idCliente)
);

Create table tblDetalheEncomendas(
Id_Encomendas int foreign key references tbl_Encomendas(IdEncomendas),
Id_Produtos int foreign key references tbl_Produtos(IdProduto),
QuantEnc int not null,
Primary key(Id_Encomendas, Id_Produtos)
);

Create table tblCarrinho(
IdCarrinho int identity(1,1) primary key,
Id_Cliente int foreign key references tbl_Cliente(idCliente),
Id_Produtos int foreign key references tbl_Produtos(IdProduto),
QuantCar int not null,
);
