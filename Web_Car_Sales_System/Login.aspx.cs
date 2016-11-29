using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;

namespace Web_Car_Sales_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegistrarseButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Registros/RegistroClientesGuestWebForm.aspx");
        }

        protected void EntrarButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            usuario.NombreUsuario = UsuarioTextBox.Text;
            usuario.Password = PassTextBox.Text;
            if (usuario.Login())
            {
                FormsAuthentication.RedirectFromLoginPage(UsuarioTextBox.Text, RecuerdarCheckBox.Checked);
            }
            else
            {
                Validaciones.ShowToastr(this, "Advertencia", "Datos Incorrectos", "warning");
            }
        }
    }
}