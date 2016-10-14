using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Modelos : ClaseMaestra
    {
        public ConexionDb conexion = new ConexionDb();
        public int ModeloId { set; get; }
        public int MarcaId { set; get; }
        public string Descripcion { set; get; }

        public Modelos(int modeloId, int marcaId, string descripcion)
        {
            this.ModeloId = modeloId ;
            this.MarcaId = marcaId;
            this.Descripcion = descripcion;
        }

        public Modelos()
        {

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("INSERT INTO Modelos (MarcaId, Descripcion) VALUES ({0},'{1}')", this.MarcaId, this.Descripcion));
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
                retorno = conexion.Ejecutar(string.Format("UPDATE Modelos SET MarcaId={0} Descripcion='{1}' WHERE ModeloId={2}", this.MarcaId, this.Descripcion, this.ModeloId));
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
                retorno = conexion.Ejecutar(string.Format("DELETE FROM Modelos WHERE ModeloId={0}", this.ModeloId));
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

            dt = conexion.ObtenerDatos("SELECT * FROM Modelos WHERE ModeloId=" + IdBuscado);
            if (dt.Rows.Count > 0)
            {
                this.ModeloId = (int)dt.Rows[0]["ModeloId"];
                this.MarcaId = (int)dt.Rows[0]["MarcaId"];
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
            return conexion.ObtenerDatos(("SELECT " + Campos + " FROM Modelos WHERE " + Condicion + Orden));
        }
    }
}
