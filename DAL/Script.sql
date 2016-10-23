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

--Factura de ventas
create table Facturas(
	FacturaId int identity primary key,
	Fecha varchar(12),
	VehiculoId int References Vehiculos(VehiculoId),
	ClienteId int References Clientes(ClienteId),
	PagoInicialEfectivo int,
	PagoInicialCheque int,
	PrecioAPagar int,
	AutorizadoPor Int
)

--Clientes
create table Clientes(--Revisar
	ClienteId int identity primary key,
	NombreCompleto varchar(30),
	NombreUsuario varchar(20),
	Password varchar(40),
	Direccion varchar(30),
	Cedula varchar(20),
	Nacionalidad varchar(10),
	LugarDeNacimiento varchar(20),
	Ocupacion varchar(30),
	Sexo int
)

--TelefonosClientes
create table ClientesTelefonos(
	TelefonoId int identity primary key,
	ClienteId int References Clientes(ClienteId),
	Tipo varchar(12),
	Telefono varchar(12)
)

--Vehiculos
create table Vehiculos(
	VehiculoId int identity primary key,
	EstadoVehiculo int,
	MarcaId int References Marcas(MarcaId),
	ModeloId int References Modelos(ModeloId),
	MotorId int References Motores(MotorId),
	ColorId int References Colores(ColorId),
	Año int,
	NoChasis int,
	TipoVehiculoId int References TipoVehiculos(TipoVehiculoId),
	Kilometraje int,
	Precio int,
	Placa varchar(20),
	Matricula varchar(20),
	EspejoRetrovisorInterno bit,
	EspejoRetrovisorDerecho bit,
	EspejoRetrovisorIzquierdo bit,
	Radio bit,
	Gato bit,
	Gomas bit,
	GomaRepuesto bit,
	Alfombras bit,
	Botiquin bit,
	TaponGasolina bit,
	TaponRadiador bit,
	Encendedor bit,
	ManualDeUsuario bit,
	DuplicadoLlaveEncendido bit,
	LlaveRueda bit
)