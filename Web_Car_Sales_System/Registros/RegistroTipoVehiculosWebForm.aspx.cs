using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroTipoVehiculosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TipoVehiculos tipo = new TipoVehiculos();
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    if (tipo.Buscar(Validaciones.Entero(Request.QueryString["ID"].ToString())))
                    {
                        DevolverValores(tipo);
                    }
                }
            }
        }

        private void Limpiar()
        {
            TipoVehiculoIdTextBox.Text = string.Empty;
            DescripcionTextBox.Text = string.Empty;
        }

        private void ObtenerValores(TipoVehiculos tipo)
        {
            tipo.TipoVehiculoId = Validaciones.Entero(TipoVehiculoIdTextBox.Text);
            tipo.Descripcion = DescripcionTextBox.Text;
        }

        private void DevolverValores(TipoVehiculos tipo)
        {
            TipoVehiculoIdTextBox.Text = tipo.TipoVehiculoId.ToString();
            DescripcionTextBox.Text = tipo.Descripcion;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            TipoVehiculos tipo = new TipoVehiculos();
            ObtenerValores(tipo);
            if (TipoVehiculoIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (tipo.Buscar(tipo.TipoVehiculoId))
                {
                    Limpiar();
                    DevolverValores(tipo);
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");
                    Limpiar();
                }
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            TipoVehiculos tipo = new TipoVehiculos();
            ObtenerValores(tipo);
            if (TipoVehiculoIdTextBox.Text == "")
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (tipo.Insertar())
                    {
                        Limpiar();
                        Validaciones.ShowToastr(this, "Exito", "Insertado correctamente!", "success");
                    }
                    else
                    {
                        Validaciones.ShowToastr(this, "Error", "Error al insertar", "error");
                    }
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Debe llenar todos los campos", "warning");
                }
            }
            else
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (tipo.Editar())
                    {
                        Limpiar();
                        Validaciones.ShowToastr(this, "Exito", "Modificado correctamente!", "success");
                    }
                    else
                    {
                        Validaciones.ShowToastr(this, "Error", "Error al modificar", "error");
                    }
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Debe llenar todos los campos", "warning");
                }
            }
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            TipoVehiculos tipo = new TipoVehiculos();
            ObtenerValores(tipo);
            if (TipoVehiculoIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (tipo.Buscar(tipo.TipoVehiculoId))
                {
                    if (tipo.Eliminar())
                    {
                        Validaciones.ShowToastr(this, "Exito", "Eliminado correctamente!", "success");
                        Limpiar();
                    }
                    else
                    {
                        Validaciones.ShowToastr(this, "Error", "Error al eliminar", "error");
                    }
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");
                    Limpiar();
                }
            }
        }
    }
}