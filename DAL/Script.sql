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
	Fecha Date(10),
	VehiculoId int References Vehiculos(VehiculoId),
	PagoInicialEnEfectivo int,
	PagoInicialEnCheque int,
	PrecioAPagar int,
	AutorizadoPor varchar(20)
)

--Clientes
create table Clientes(--Revisar
	ClienteId int identity primary key,
	NombreCompleto varchar(30),
	NombreUsuario varchar(20),
	Password varchar (40),
	Direccion varchar(30),
	Cedula varchar(20),
	Nacionalidad varchar(10),
	Ocupacion varchar(30),
	LugarDeNacimiento varchar(20),
	Sexo int
)

--TelefonosClientes
create table NumerosTelefono(
	TelefonoId int identity primary key,
	ClienteId int References Clientes(ClienteId),
	TipoTelefono varchar(12),--revisar
	Numero varchar(12)
)

--Vehiculos
create table Vehiculos(
	VehiculoId int identity primary key,
	EstadoDelVehiculo int,
	ModeloId int References Modelos(ModeloId),
	MarcaId int References Marcas(MarcaId),
	MotorId int References Motores(MotorId),
	ColorId int References Colores(ColorId),
	Año int,
	NoChasis int,
	TipoVehiculoId int References TipoDeVehiculos(TipoDeVehiculoId),
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
	GomaDeRepuesto bit,
	Alfombras bit,
	Botiquin bit,
	TaponDeGasolina bit,
	TaponDeRadiador bit,
	Encendedor bit,
	ManualDeUsuario bit,
	DuplicadoDeLlaveDeEncendido bit,
	LlaveDeRueda bit
)