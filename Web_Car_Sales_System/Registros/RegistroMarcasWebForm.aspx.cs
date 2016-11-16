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
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
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
            Marcas marca = new Marcas();
            ObtenerValores(marca);
            if (MarcaIdTextBox.Text == "")
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (marca.Insertar())
                    {
                        Limpiar();
                        Response.Write("<script>alert('Insertado correctamente')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error al insertar')</script>");
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
                    if (marca.Editar())
                    {
                        Limpiar();
                        Response.Write("<script>alert('Modificado correctamente')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error al modificar')</script>");
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
            Marcas marca = new Marcas();
            ObtenerValores(marca);
            if (MarcaIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id')</script>");
            }
            else
            {
                if (marca.Buscar(marca.MarcaId))
                {
                    if (marca.Eliminar())
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