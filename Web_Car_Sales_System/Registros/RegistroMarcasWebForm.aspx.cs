using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroMarcasWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int id = 0;
                    int.TryParse(Request.QueryString["ID"].ToString(), out id);

                    if (marca.Buscar(id))
                    {
                        DevolverValores(marca);
                    }
                }
            }
        }

        private void Limpiar()
        {
            MarcaIdTextBox.Text = string.Empty;
            DescripcionTextBox.Text = string.Empty;
        }

        private void ObtenerValores(Marcas marca)
        {
            marca.MarcaId = Validaciones.Entero(MarcaIdTextBox.Text);
            marca.Descripcion = DescripcionTextBox.Text;
        }

        private void DevolverValores(Marcas marca)
        {
            MarcaIdTextBox.Text = marca.MarcaId.ToString();
            DescripcionTextBox.Text = marca.Descripcion;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            ObtenerValores(marca);
            if (MarcaIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (marca.Buscar(marca.MarcaId))
                {
                    Limpiar();
                    DevolverValores(marca);
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
            Marcas marca = new Marcas();
            ObtenerValores(marca);
            if (MarcaIdTextBox.Text == "")
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (marca.Insertar())
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
                    if (marca.Editar())
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
            Marcas marca = new Marcas();
            ObtenerValores(marca);
            if (MarcaIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (marca.Buscar(marca.MarcaId))
                {
                    if (marca.Eliminar())
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