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
            Colores color = new Colores();
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    if (color.Buscar(Validaciones.Entero(Request.QueryString["ID"].ToString())))
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
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
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
                    Response.Write("<script>alert('Id no encontrado')</script>");
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
                        Response.Write("<script>alert('Insertado correctamente')</script>");
                        Validaciones.ShowToastr(this, "Exito", "Insertado correctamente!", "success");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error al insertar')</script>");
                        Validaciones.ShowToastr(this, "Error", "Error al insertar", "error");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Debe llenar todos los campos, Error al insertar')</script>");
                }
            }
            else
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (color.Editar())
                    {
                        Limpiar();
                        Response.Write("<script>alert('Modificado correctamente')</script>");
                        Validaciones.ShowToastr(this, "Exito", "Modificado correctamente!", "success");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error al modificar')</script>");
                        Validaciones.ShowToastr(this, "Error", "Error al modificar", "error");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Debe llenar todos los campos, Error al modificar')</script>");
                }
            }

        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            ObtenerValores(color);
            if (ColorIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id')</script>");
            }
            else
            {
                if (color.Buscar(color.ColorId))
                {
                    if (color.Eliminar())
                    {
                        Response.Write("<script>alert('Eliminado correctamente')</script>");
                        Limpiar();
                    }
                    else
                    {
                        Response.Write("<script>alert('Error al eliminar')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Id no encontrado')</script>");
                    Limpiar();
                }
            }
        }
    }
}