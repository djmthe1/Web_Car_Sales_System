using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Clientes : ClaseMaestra
    {
        public int ClienteId { set; get; }
        public string NombreCompleto { set; get; }
        public string NombreUsuario { set; get; }
        public string Password { get; set; }
        public string Direccion { set; get; }
        public string Cedula { set; get; }
        public string Nacionalidad { set; get; }
        public string Ocupacion { set; get; }
        public string LugarDeNacimiento { set; get; }
        public int Sexo { set; get; }
        public List<ClientesTelefonos> telefonos { get; set; }

        public Clientes(int clienteId, string nombreCompleto, string nombreUsuario, string password, string direccion, string cedula, string nacionalidad, string ocupacion, string lugarDeNacimiento, int sexo, int facturaId)
        {
            this.ClienteId = clienteId;
            this.NombreCompleto = nombreCompleto;
            this.NombreUsuario = nombreUsuario;
            this.Password = password;
            this.Cedula = cedula;
            this.Direccion = direccion;
            this.Cedula = cedula;
            this.Nacionalidad = nacionalidad;
            this.Ocupacion = ocupacion;
            this.LugarDeNacimiento = lugarDeNacimiento;
            this.Sexo = sexo;
        }

        public Clientes()
        {
            telefonos = new List<ClientesTelefonos>();
        }

        public void InsertarTelefono(int ClienteId, string Tipo, string Telefono)
        {
            this.telefonos.Add(new ClientesTelefonos(ClienteId, Tipo, Telefono));
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            int retorno = 0;
            object Identity;
            try
            {
                Identity = conexion.ObtenerValor(string.Format("INSERT INTO Clientes (NombreCompleto, NombreUsuario, Password, Direccion, Cedula, Nacionalidad, Ocupacion, LugarDeNacimiento, Sexo) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',{8})", this.NombreCompleto, this.NombreUsuario, this.Password, this.Direccion, this.Cedula, this.Nacionalidad, this.Ocupacion, this.LugarDeNacimiento, this.Sexo));
                int.TryParse(Identity.ToString(), out retorno);
                if (retorno > 0)
                {
                    foreach (ClientesTelefonos numeros in telefonos)
                    {
                        conexion.Ejecutar(string.Format("INSERT INTO ClientesTelefonos (ClienteId, Tipo, Telefono) VALUES ({0},'{1}','{2}')", retorno, numeros.Tipo, numeros.Telefono));
                    }
                }
                return retorno > 0;
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
                retorno = conexion.Ejecutar(string.Format("UPDATE Clientes SET NombreCompleto='{0}', NombreUsuario='{1}', Password='{2}', Direccion='{3}', Cedula='{4}', Nacionalidad='{5}', Ocupacion='{6}', LugarDeNacimiento='{7}', Sexo={8} WHERE ClienteId={9}", this.NombreCompleto, this.NombreUsuario, this.Password, this.Direccion, this.Cedula, this.Nacionalidad, this.Ocupacion, this.LugarDeNacimiento, this.Sexo, this.ClienteId));
                if (retorno)
                {
                    conexion.Ejecutar(string.Format("DELETE FROM ClientesTelefonos WHERE ClienteId={0}", this.ClienteId));
                    foreach (ClientesTelefonos numeros in telefonos)
                    {
                        conexion.Ejecutar(string.Format("INSERT INTO ClientesTelefonos (ClienteId, Tipo, Telefono) VALUES ({0},'{1}','{2}')", retorno, numeros.Tipo, numeros.Telefono));
                    }
                }
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
                retorno = conexion.Ejecutar(string.Format("DELETE FROM ClientesTelefonos WHERE ClienteId={0}", this.ClienteId));
                if (retorno)
                {
                    conexion.Ejecutar(string.Format("DELETE FROM Clientes WHERE ClienteId={0}", this.ClienteId));
                }
                return retorno;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();
            DataTable dtTelefonos = new DataTable();

            dt = conexion.ObtenerDatos("SELECT * FROM Clientes WHERE ClienteId=" + IdBuscado);
            if (dt.Rows.Count > 0)
            {
                this.ClienteId = (int)dt.Rows[0]["ClienteId"];
                this.NombreCompleto = dt.Rows[0]["NombreCompleto"].ToString();
                this.NombreUsuario = dt.Rows[0]["NombreUsuario"].ToString();
                this.Password = dt.Rows[0]["Password"].ToString();
                this.Direccion = dt.Rows[0]["Direccion"].ToString();
                this.Cedula = dt.Rows[0]["Cedula"].ToString();
                this.Nacionalidad = dt.Rows[0]["Nacionalidad"].ToString();
                this.Ocupacion = dt.Rows[0]["Ocupacion"].ToString();
                this.LugarDeNacimiento = dt.Rows[0]["LugarDeNacimiento"].ToString();
                this.Sexo = (int)dt.Rows[0]["Sexo"];

                dtTelefonos = conexion.ObtenerDatos("SELECT * FROM ClientesTelefonos WHERE ClienteId=" + IdBuscado);
                foreach (DataRow row in dtTelefonos.Rows)
                {
                    this.InsertarTelefono((int)dtTelefonos.Rows[0]["ClienteId"], row["Tipo"].ToString(), row["Telefono"].ToString());
                }
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = " orden by  " + Orden;
            return conexion.ObtenerDatos(("SELECT " + Campos + " FROM Clientes WHERE " + Condicion + ordenar));
        }
    }
}
