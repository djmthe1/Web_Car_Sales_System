using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroColoresWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Colores color = new Colores();
                if (Request.QueryString["ColorId"] != null)
                {
                    if (color.Buscar(Validaciones.Entero(Request.QueryString["ColorId"].ToString())))
                    {
                        DevolverValores(color);
                    }
                }
            }
        }

        private void Limpiar()
        {
            ColorIdTextBox.Text = string.Empty;
            DescripcionTextBox.Text = string.Empty;
        }

        private void ObtenerValores(Colores color)
        {
            color.ColorId = Validaciones.Entero(ColorIdTextBox.Text);
            color.Descripcion = DescripcionTextBox.Text;
        }

        private void DevolverValores(Colores color)
        {
            ColorIdTextBox.Text = color.ColorId.ToString();
            DescripcionTextBox.Text = color.Descripcion;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            ObtenerValores(color);
            if (ColorIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (color.Buscar(color.ColorId))
                {
                    Limpiar();
                    DevolverValores(color);
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
            Colores color = new Colores();
            ObtenerValores(color);
            if (ColorIdTextBox.Text == "")
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (color.Insertar())
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
                    if (color.Editar())
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
            Colores color = new Colores();
            ObtenerValores(color);
            if (ColorIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (color.Buscar(color.ColorId))
                {
                    if (color.Eliminar())
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