﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Consultas
{
    public partial class ConsultaVehiculosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Vehiculos vehiculo = new Vehiculos();
            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = BuscarPorDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            ConsultaGridView.DataSource = vehiculo.Listado("VehiculoId, EstadoVehiculo, MarcaId, ModeloId, MotorId, ColorId, Año, NoChasis, TipoVehiculoId, Kilometraje, Precio, Placa, Matricula", filtro, "");
            ConsultaGridView.DataBind();
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {

        }
    }
}