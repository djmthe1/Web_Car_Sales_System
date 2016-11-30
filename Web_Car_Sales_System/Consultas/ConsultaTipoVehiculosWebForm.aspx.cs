using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Consultas
{
    public partial class ConsultaTipoVehiculosWebForm : System.Web.UI.Page
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
            TipoVehiculos tipo = new TipoVehiculos();
            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = BuscarPorDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            ConsultaGridView.DataSource = tipo.Listado("TipoVehiculoId, Descripcion", filtro, "");
            ConsultaGridView.DataBind();

            return filtro;
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {
            TipoVehiculos tipo = new TipoVehiculos();
            Validaciones.dataset = "TipoVehiculos";
            Validaciones.reporte = @"Reportes\TipoVehiculosReport.rdlc";
            Validaciones.data = tipo.Listado("*", Filtro(), "");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('/Reportes/VisorReportes.aspx');</script>");
        }
    }
}