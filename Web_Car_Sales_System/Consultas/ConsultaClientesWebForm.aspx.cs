using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Consultas
{
    public partial class ConsultaClientesWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Filtro();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Filtro();
        }

        protected string Filtro()
        {

            Clientes cliente = new Clientes();
            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = BuscarPorDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            ConsultaGridView.DataSource = cliente.Listado("ClienteId, NombreCompleto, NombreUsuario, Direccion, Cedula, Nacionalidad, LugarDeNacimiento, Ocupacion, Sexo ", filtro, "");
            ConsultaGridView.DataBind();

            return filtro;
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
            Validaciones.dataset = "Clientes";
            Validaciones.reporte = @"Reportes\ClientesReport.rdlc";
            Validaciones.data = cliente.Listado("*", Filtro(), "");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('/Reportes/VisorReportes.aspx');</script>");
        }
    }
}