using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Data;

namespace Web_Car_Sales_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                Response.Redirect("/Default.aspx");
            }
        }

        protected void RegistrarseButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Registros/RegistroClientesGuestWebForm.aspx");
        }

        protected void EntrarButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            DataTable dt = new DataTable();

            dt = usuario.Listado("*", "NombreUsuario='" + UsuarioTextBox.Text + "' AND Password='" + PassTextBox.Text + "'", "");

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    usuario.Buscar((int)row["usuarioId"]);
                    Session["Login"] = usuario;
                    if (usuario.Prioridad == 1)
                    {
                        Response.Redirect("/Index.aspx");

                    }
                    else
                    {
                        Response.Redirect("/Default.aspx");
                    }
                }
            }
            else
            {
                Validaciones.ShowToastr(this, "Advertencia", "Datos Incorrectos", "warning");
            }
         }
    }
}