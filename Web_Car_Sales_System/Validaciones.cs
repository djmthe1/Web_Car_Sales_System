using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.Reporting.WebForms;
using System.Data;

namespace Web_Car_Sales_System
{
    public static class Validaciones
    {
        public static int Entero(string s)
        {
            int variable = 0;
            int.TryParse(s, out variable);
            return variable;
        }

        public static void ShowToastr(this Page page, string message, string title, string type = "info")
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message",
                  String.Format("toastr.{0}('{1}', '{2}');", type.ToLower(), message, title), addScriptTags: true);
        }

        public static void Reporte(ReportViewer visor, string ruta, string DataSets, DataTable listado)
        {
            visor.LocalReport.DataSources.Clear();
            visor.ProcessingMode = ProcessingMode.Local;
            
            visor.LocalReport.ReportPath = ruta;
            ReportDataSource sourse = new ReportDataSource(DataSets, listado);

            visor.LocalReport.DataSources.Add(sourse);
            visor.LocalReport.Refresh();
        }
    }
}