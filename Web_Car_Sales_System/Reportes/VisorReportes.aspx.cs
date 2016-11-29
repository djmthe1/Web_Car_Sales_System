using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Microsoft.Reporting.WebForms;

namespace Web_Car_Sales_System.Reportes
{
    public partial class VisorReportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    cargar();

                }
            }

        public void cargar()
        {
            Validaciones.Reporte(ReportViewer, Validaciones.reporte, Validaciones.dataset, Validaciones.data);
        }

    }
}