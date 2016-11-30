using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Consultas
{
    public partial class ConsultaFacturasWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Filtro();
                Validar();
            }
        }

        private void Validar()
        {
            if (Session["Login"] != null)
            {
                Usuarios usuario = new Usuarios();
                usuario = (Usuarios)Session["Login"];
                if (usuario.Prioridad != 1)
                    Response.Redirect("/Default.aspx");
            }
            else
            {
                Response.Redirect("/Login.aspx");
            }
        }

        protected string Filtro()
        {
            Facturas factura = new Facturas();
            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = BuscarPorDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            ConsultaGridView.DataSource = factura.Listado("FacturaId, Fecha, CTS.NombreCompleto AS 'Cliente', VehiculoId, PagoInicialEfectivo, PagoInicialCheque, PrecioAPagar, AutorizadoPor", filtro, "");
            ConsultaGridView.DataBind();

            return filtro;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Filtro();
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {
            Facturas factura = new Facturas();
            Validaciones.dataset = "Facturas";
            Validaciones.reporte = @"Reportes\FacturasReport.rdlc";
            Validaciones.data = factura.Listado("*", Filtro(), "");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('/Reportes/VisorReportes.aspx');</script>");

        }
    }
}