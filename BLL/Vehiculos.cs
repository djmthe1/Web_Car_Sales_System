using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Vehiculos : ClaseMaestra
    {
        public int VehiculoId { set; get; }
        public int EstadoVehiculo { set; get; }
        public int MarcaId { set; get; }
        public int ModeloId { set; get; }
        public int MotorId { set; get; }
        public int ColorId { set; get; }
        public int Año { set; get; }
        public string NoChasis { set; get; }
        public int TipoVehiculoId { set; get; }
        public int Kilometraje { set; get; }
        public int Precio { set; get; }
        public string Placa { set; get; }
        public string Matricula { set; get; }
        public bool EspejoRetrovisorInterno { set; get; }
        public bool EspejoRetrovisorDerecho { set; get; }
        public bool EspejoRetrovisorIzquierdo { set; get; }
        public bool Radio { set; get; }
        public bool Gato { set; get; }
        public bool Gomas { set; get; }
        public bool GomaRepuesto { set; get; }
        public bool Alfombras { set; get; }
        public bool Botiquin { set; get; }
        public bool TaponGasolina { set; get; }
        public bool TaponRadiador { set; get; }
        public bool Encendedor { set; get; }
        public bool ManualDeUsuario { set; get; }
        public bool DuplicadoLlaveEncendido { set; get; }
        public bool LlaveRueda { set; get; }

        public Vehiculos(int vehiculoId, int estadoVehiculo, int marcaId, int modeloId, int motorId, int colorId, int año, string noChasis, int tipoVehiculoId, int kilometraje, int precio, string placa, string matricula, bool espejoRetrovisorInterno, bool espejoRetrovisorDerecho, bool espejoRetrovisorIzquierdo, bool radio, bool gato, bool gomas, bool gomaRepuesto, bool alfombras, bool botiquin, bool taponGasolina, bool taponRadiador, bool encendedor, bool manualDeUsuario, bool duplicadoLlaveEncendido, bool llaveRueda)
        {
            this.VehiculoId = vehiculoId;
            this.EstadoVehiculo = estadoVehiculo;
            this.MarcaId = marcaId;
            this.ModeloId = modeloId;
            this.MotorId = motorId;
            this.ColorId = colorId;
            this.Año = año;
            this.NoChasis = noChasis;
            this.TipoVehiculoId = tipoVehiculoId;
            this.Kilometraje = kilometraje;
            this.Precio = precio;
            this.Placa = placa;
            this.Matricula = matricula;
            this.EspejoRetrovisorInterno = espejoRetrovisorInterno;
            this.EspejoRetrovisorDerecho = espejoRetrovisorDerecho;
            this.EspejoRetrovisorIzquierdo = espejoRetrovisorIzquierdo;
            this.Radio = radio;
            this.Gato = gato;
            this.Gomas = gomas;
            this.GomaRepuesto = gomaRepuesto;
            this.Alfombras = alfombras;
            this.Botiquin = botiquin;
            this.TaponGasolina = taponGasolina;
            this.TaponRadiador = taponRadiador;
            this.Encendedor = encendedor;
            this.ManualDeUsuario = manualDeUsuario;
            this.DuplicadoLlaveEncendido = duplicadoLlaveEncendido;
            this.LlaveRueda = llaveRueda;
        }

        public Vehiculos()
        {

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("INSERT INTO Vehiculos (EstadoVehiculo, MarcaId, ModeloId, MotorId, ColorId, Año, NoChasis, TipoVehiculoId, Kilometraje, Precio, Placa, Matricula, EspejoRetrovisorInterno, EspejoRetrovisorDerecho, EspejoRetrovisorIzquierdo, Radio, Gato, Gomas, GomaRepuesto, Alfombras, Botiquin, TaponGasolina, TaponRadiador, Encendedor, ManualDeUsuario, DuplicadoLlaveEncendido, LlaveRueda) VALUES ({0},{1},{2},{3},{4},{5},'{6}',{7},{8},{9},'{10}','{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}')", this.EstadoVehiculo, this.MarcaId, this.ModeloId, this.MotorId, this.ColorId, this.Año, this.NoChasis, this.TipoVehiculoId, this.Kilometraje, this.Precio, this.Placa, this.Matricula, this.EspejoRetrovisorInterno, this.EspejoRetrovisorDerecho, this.EspejoRetrovisorIzquierdo, this.Radio, this.Gato, this.Gomas, this.GomaRepuesto, this.Alfombras, this.Botiquin, this.TaponGasolina, this.TaponRadiador, this.Encendedor, this.ManualDeUsuario, this.DuplicadoLlaveEncendido, this.LlaveRueda));
                return retorno;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("UPDATE Vehiculos SET EstadoVehiculo={0}, MarcaId={1}, ModeloId={2}, MotorId={3}, ColorId={4}, Año={5}, NoChasis='{6}', TipoVehiculoId={7}, Kilometraje={8}, Precio={9}, Placa='{10}', Matricula='{11}', EspejoRetrovisorInterno='{12}', EspejoRetrovisorDerecho='{13}', EspejoRetrovisorIzquierdo='{14}', Radio='{15}', Gato='{16}', Gomas='{17}', GomaRepuesto='{18}', Alfombras='{19}', Botiquin='{20}', TaponGasolina='{21}', TaponRadiador='{22}', Encendedor='{23}', ManualDeUsuario='{24}', DuplicadoLlaveEncendido='{25}', LlaveRueda='{26}' WHERE VehiculoId={27}", this.EstadoVehiculo, this.MarcaId, this.ModeloId, this.MotorId, this.ColorId, this.Año, this.NoChasis, this.TipoVehiculoId, this.Kilometraje, this.Precio, this.Placa, this.Matricula, this.EspejoRetrovisorInterno, this.EspejoRetrovisorDerecho, this.EspejoRetrovisorIzquierdo, this.Radio, this.Gato, this.Gomas, this.GomaRepuesto, this.Alfombras, this.Botiquin, this.TaponGasolina, this.TaponRadiador, this.Encendedor, this.ManualDeUsuario, this.DuplicadoLlaveEncendido, this.LlaveRueda, this.VehiculoId));
                return retorno;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno;
            try
            {
                retorno = conexion.Ejecutar(string.Format("DELETE FROM Vehiculos WHERE VehiculoId={0}", this.VehiculoId));
                return retorno;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();
            ConexionDb conexion = new ConexionDb();
            dt = conexion.ObtenerDatos("SELECT * FROM Vehiculos WHERE VehiculoId=" + IdBuscado);
            if (dt.Rows.Count > 0)
            {
                this.VehiculoId = (int)dt.Rows[0]["VehiculoId"];
                this.EstadoVehiculo = (int)dt.Rows[0]["EstadoVehiculo"];
                this.MarcaId = (int)dt.Rows[0]["MarcaId"];
                this.ModeloId = (int)dt.Rows[0]["ModeloId"];
                this.MotorId = (int)dt.Rows[0]["MotorId"];
                this.ColorId = (int)dt.Rows[0]["ColorId"];
                this.Año = (int)dt.Rows[0]["Año"];
                this.NoChasis = dt.Rows[0]["NoChasis"].ToString();
                this.TipoVehiculoId = (int)dt.Rows[0]["TipoVehiculoId"];
                this.Kilometraje = (int)dt.Rows[0]["Kilometraje"];
                this.Precio = (int)dt.Rows[0]["Precio"];
                this.Placa = dt.Rows[0]["Placa"].ToString();
                this.Matricula = dt.Rows[0]["Matricula"].ToString();
                this.EspejoRetrovisorInterno = (bool)dt.Rows[0]["EspejoRetrovisorInterno"];
                this.EspejoRetrovisorDerecho = (bool)dt.Rows[0]["EspejoRetrovisorDerecho"];
                this.EspejoRetrovisorIzquierdo = (bool)dt.Rows[0]["EspejoRetrovisorIzquierdo"];
                this.Radio = (bool)dt.Rows[0]["Radio"];
                this.Gato = (bool)dt.Rows[0]["Gato"];
                this.Gomas = (bool)dt.Rows[0]["Gomas"];
                this.GomaRepuesto = (bool)dt.Rows[0]["GomaRepuesto"];
                this.Alfombras = (bool)dt.Rows[0]["Alfombras"];
                this.Botiquin = (bool)dt.Rows[0]["Botiquin"];
                this.TaponGasolina = (bool)dt.Rows[0]["TaponGasolina"];
                this.TaponRadiador = (bool)dt.Rows[0]["TaponRadiador"];
                this.Encendedor = (bool)dt.Rows[0]["Encendedor"];
                this.ManualDeUsuario = (bool)dt.Rows[0]["ManualDeUsuario"];
                this.DuplicadoLlaveEncendido = (bool)dt.Rows[0]["DuplicadoLlaveEncendido"];
                this.LlaveRueda = (bool)dt.Rows[0]["LlaveRueda"];
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = " orden by  " + Orden;
            return conexion.ObtenerDatos(("SELECT " + Campos + " FROM Vehiculos WHERE " + Condicion + Orden));
        }
    }
}
