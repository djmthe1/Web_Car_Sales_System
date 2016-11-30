using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Consultas
{
    public partial class ConsultaVehiculosWebForm : System.Web.UI.Page
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

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Filtro();
        }

        protected string Filtro()
        {
            Vehiculos vehiculo = new Vehiculos();
            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = BuscarPorDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            VehiculosDatalist.DataSource = vehiculo.Listado("VehiculoId, EstadoVehiculo, MRC.Descripcion AS 'Marca', MDL.Descripcion AS 'Modelo', CLR.Descripcion AS 'Color', MTR.Descripcion AS 'Motor', Año, NoChasis, TVS.Descripcion AS 'TipoVehiculo', Kilometraje, Precio, Placa, Matricula", filtro, "");
            VehiculosDatalist.DataBind();

            return filtro;
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {
            Vehiculos vehiculo = new Vehiculos();
            Validaciones.dataset = "Vehiculos";
            Validaciones.reporte = @"Reportes\VehiculosReport.rdlc";
            Validaciones.data = vehiculo.Listado("*", Filtro(), "");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('/Reportes/VisorReportes.aspx');</script>");
        }
    }
}