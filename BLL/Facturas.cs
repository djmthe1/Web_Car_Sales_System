using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Facturas : ClaseMaestra
    {
        public int FacturaId { set; get; }
        public string Fecha { set; get; }
        public int ClienteId { set; get; }
        public int VehiculoId { set; get; }
        public int PagoInicialEfectivo { get; set; }
        public int PagoInicialCheque { get; set; }
        public int PrecioAPagar { get; set; }
        public int AutorizadoPor { get; set; }

        public Facturas(int facturaId, string fecha, int clienteId, int vehiculoId, int pagoInicialEfectivo, int pagoInicialCheque, int precioAPagar, int autorizadoPor)
        {
            this.FacturaId = facturaId;
            this.Fecha = fecha;
            this.ClienteId = clienteId;
            this.VehiculoId = vehiculoId;
            this.PagoInicialEfectivo = pagoInicialEfectivo;
            this.PagoInicialCheque = pagoInicialCheque;
            this.PrecioAPagar = precioAPagar;
            this.AutorizadoPor = autorizadoPor;
        }

        public Facturas()
        {

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("INSERT INTO Facturas (Fecha, ClienteId, VehiculoId, PagoInicialEfectivo, PagoInicialCheque, PrecioAPagar, AutorizadoPor) VALUES ('{0}',{1},{2},{3},{4},{5},{6})", this.Fecha, this.ClienteId, this.VehiculoId, this.PagoInicialEfectivo, this.PagoInicialCheque, this.PrecioAPagar, this.AutorizadoPor));
                if (retorno)
                {
                    conexion.Ejecutar(string.Format("UPDATE Vehiculos SET Vendido=True WHERE VehiculoId={0}", this.VehiculoId));
                }
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
                retorno = conexion.Ejecutar(string.Format("UPDATE Facturas SET Fecha='{0}', ClienteId={1}, VehiculoId={2}, PagoInicialEfectivo={3}, PagoInicialCheque={4}, PrecioAPagar={5}, AutorizadoPor={6} WHERE FacturaId={7}", this.Fecha, this.ClienteId, this.VehiculoId, this.PagoInicialEfectivo, this.PagoInicialCheque, this.PrecioAPagar, this.AutorizadoPor, this.FacturaId));
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
                retorno = conexion.Ejecutar(string.Format("DELETE FROM Facturas WHERE FacturaId={0}", this.FacturaId));
                if (retorno)
                {
                    conexion.Ejecutar(string.Format("UPDATE Vehiculos SET Vendido=False WHERE VehiculoId={0}", this.VehiculoId));
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

            dt = conexion.ObtenerDatos("SELECT * FROM Facturas WHERE FacturaId=" + IdBuscado);
            if (dt.Rows.Count > 0)
            {
                this.FacturaId = (int)dt.Rows[0]["FacturaId"];
                this.Fecha = dt.Rows[0]["Fecha"].ToString();
                this.ClienteId = (int)dt.Rows[0]["ClienteId"];
                this.VehiculoId = (int)dt.Rows[0]["VehiculoId"];
                this.PagoInicialEfectivo = (int)dt.Rows[0]["PagoInicialEfectivo"];
                this.PagoInicialCheque = (int)dt.Rows[0]["PagoInicialCheque"];
                this.PrecioAPagar = (int)dt.Rows[0]["PrecioAPagar"];
                this.AutorizadoPor = (int)dt.Rows[0]["AutorizadoPor"];
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
        string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = " orden by  " + Orden;
            return conexion.ObtenerDatos(("SELECT " + Campos + " FROM Facturas AS FA INNER JOIN Clientes AS CTS on FA.ClienteId = CTS.ClienteId WHERE " + Condicion + Orden));
        }
}
}
