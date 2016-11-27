using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Consultas
{
    public partial class ConsultaTodosVehiculosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Datalist();
        }

        protected void Datalist()
        {
            Vehiculos vehiculo = new Vehiculos();
            VehiculosDataList.DataSource = vehiculo.Listado("EstadoVehiculo, MRC.Descripcion AS 'Marca', MDL.Descripcion AS 'Modelo', CLR.Descripcion AS 'Color', MTR.Descripcion AS 'Motor', Año, TVS.Descripcion AS 'TipoVehiculo', Kilometraje, Precio", "1=1", "");
            VehiculosDataList.DataBind();
        }
    }
}