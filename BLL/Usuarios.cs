using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Usuarios : ClaseMaestra
    {
        public int UsuarioId { get; set; }
        public string Nombre { set; get; }
        public string Password { set; get; }
        public int Prioridad { set; get; }

        public Usuarios(int usuarioId, string nombre, string password, int prioridad)
        {
            this.UsuarioId = usuarioId;
            this.Nombre = nombre;
            this.Password = password;
            this.Prioridad = prioridad;
        }

        public Usuarios()
        {

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("INSERT INTO Usuarios (Nombre, Password, Prioridad) VALUES ('{0}','{1}',{2})", this.Nombre, this.Password, this.Prioridad));
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
                retorno = conexion.Ejecutar(string.Format("UPDATE Usuarios SET Nombre='{0}', Password='{1}', Prioridad={2} WHERE UsuarioId={3}", this.Nombre, this.Password, this.Prioridad, this.UsuarioId));
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
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("DELETE FROM Usuarios WHERE UsuarioId={0}", this.UsuarioId));
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
            dt = conexion.ObtenerDatos("SELECT * FROM Usuarios WHERE UsuarioId=" + IdBuscado);
            if (dt.Rows.Count > 0)
            {
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                this.Nombre = dt.Rows[0]["Nombre"].ToString();
                this.Password = dt.Rows[0]["Password"].ToString();
                this.Prioridad = (int)dt.Rows[0]["Prioridad"];
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = " orden by  " + Orden;
            return conexion.ObtenerDatos(("SELECT " + Campos + " FROM Usuarios WHERE " + Condicion + Orden));
        }
    }
}
