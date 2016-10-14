using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class TipoVehiculos : ClaseMaestra
    {

        public int TipoVehiculoId { set; get; }
        public string Descripcion { set; get; }

        public TipoVehiculos(int tipoVehiculoId, string descripcion)
        {
            this.TipoVehiculoId = tipoVehiculoId;
            this.Descripcion = descripcion;
        }

        public TipoVehiculos()
        {

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("INSERT INTO TipoVehiculos (Descripcion) VALUES ('{0}')", this.Descripcion));
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
                retorno = conexion.Ejecutar(string.Format("UPDATE TipoVehiculos SET Descripcion='{0}' WHERE TipoVehiculoId={1}", this.Descripcion, this.TipoVehiculoId));
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
                retorno = conexion.Ejecutar(string.Format("DELETE FROM TipoVehiculos WHERE TipoVehiculoId={0}", this.TipoVehiculoId));
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

            dt = conexion.ObtenerDatos("SELECT * FROM TipoVehiculos WHERE TipoVehiculoId=" + IdBuscado);
            if (dt.Rows.Count > 0)
            {
                this.TipoVehiculoId = (int)dt.Rows[0]["TipoVehiculoId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = " orden by  " + Orden;
            return conexion.ObtenerDatos(("SELECT " + Campos + " FROM TipoVehiculos WHERE " + Condicion + Orden));
        }
    }
}
