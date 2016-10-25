using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using BLL;
using System.Data;

namespace Web_Car_Sales_System.Consultas
{
    public partial class ConsultaColoresWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = BuscarPorDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            ConsultaGridView.DataSource = color.Listado("ColorId, Descripcion", filtro, "");
            ConsultaGridView.DataBind();
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {
            Reportes.VisorReportes Visor = new Reportes.VisorReportes();
            DataTable dt = new DataTable();

            dt = (DataTable)ConsultaGridView.DataSource;
            dt.TableName = "Colores";
            Visor.reporte = "Reportes/ColoresReport.rdlc";
            Visor.data = dt;
            Visor.DataBind();
            
        }
    }
}