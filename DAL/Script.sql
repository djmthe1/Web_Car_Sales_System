--Nombre De La Base De Datos
Create database WebCarSalesDb;

--Marcas De Vehiculos
create table Marcas(
	MarcaId int identity primary key,
	Descripcion varchar(20)
)

--Modelos De Vehiculos
Create table Modelos(
	ModeloId int identity primary key,
	MarcaId int References Marcas(MarcaId),
	Descripcion varchar(30)
)

--Tipos De Vehiculos
create table TipoVehiculos(
	TipoVehiculoId int identity primary key,
	Descripcion varchar(30)
)

--Motores De Vehiculos
create table Motores(
	MotorId int identity primary key,
	Descripcion varchar(10)
)

--Colores De Vehiculos
create table Colores(
	ColorId int identity primary key,
	Descripcion varchar(10), 
)

--Usuarios
create table Usuarios(
	UsuarioId int identity primary key,
	Nombre varchar(30),
	NombreUsuario varchar(20),
	Password varchar (40),
	Prioridad int
)