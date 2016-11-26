using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        }
    }
}