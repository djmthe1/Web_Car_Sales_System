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
        public string nombre { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Reportes(ReportViewer);

                this.ReportViewer.Reset();
                this.ReportViewer.ProcessingMode = ProcessingMode.Local;
                this.ReportViewer.LocalReport.ReportPath = this.reporte;
                ReportDataSource source = new ReportDataSource(nombre, this.data);
                this.ReportViewer.LocalReport.DataSources.Add(source);
                this.ReportViewer.DataBind();
            }
        }

        private void Reportes(ReportViewer view)
        {
            view.LocalReport.DataSources.Clear();
            view.ProcessingMode = ProcessingMode.Local;
            view.LocalReport.ReportPath = reporte;
            ReportDataSource source = new ReportDataSource(nombre, this.data);
            view.LocalReport.DataSources.Add(source);
            view.LocalReport.Refresh();
        }
    }
}