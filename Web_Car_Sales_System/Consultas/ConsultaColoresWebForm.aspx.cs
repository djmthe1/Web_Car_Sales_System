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
           
            Colores color = new Colores();
            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = BuscarPorDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            ConsultaGridView.DataSource = color.Listado("ColorId, Descripcion", filtro, "");
            ConsultaGridView.DataBind();

            return filtro;
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            Validaciones.dataset = "Colores";
            Validaciones.reporte = @"Reportes\ColoresReport.rdlc";
            Validaciones.data = color.Listado("*", Filtro(), "");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('/Reportes/VisorReportes.aspx');</script>");
        }
    }
}