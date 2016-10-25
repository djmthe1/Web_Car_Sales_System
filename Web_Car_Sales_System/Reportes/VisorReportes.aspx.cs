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
        public string reporte { get; set; }
        public DataTable data { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Reportes();
            }
        }

        private void Reportes()
        {
            this.ReportViewer.Reset();
            this.ReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
            this.ReportViewer.LocalReport.ReportPath = this.reporte;
            ReportDataSource source = new ReportDataSource(this.data.TableName, this.data);
            this.ReportViewer.LocalReport.DataSources.Add(source);
            this.ReportViewer.DataBind();
        }
    }
}