using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                repeater();
                Session.Clear();
            }
        }

        protected void BUttonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }

        protected void repeater()
        {
            Vehiculos vehiculo = new Vehiculos();
            VehiculosDataList.DataSource = vehiculo.Listado("TOP 6 EstadoVehiculo, MRC.Descripcion AS 'Marca', MDL.Descripcion AS 'Modelo', Año", "1=1", "");
            VehiculosDataList.DataBind();
        }
    }
}