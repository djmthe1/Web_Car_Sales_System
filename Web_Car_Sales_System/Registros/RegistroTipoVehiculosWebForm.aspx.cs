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
        TipoVehiculos tipo = new TipoVehiculos();
        int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        private void Limpiar()
        {
            ((TextBox)TipoVehiculoIdTextBox).Text = string.Empty;
            ((TextBox)DescripcionTextBox).Text = string.Empty;
        }

        private void ObtenerValores()
        {
            int.TryParse(TipoVehiculoIdTextBox.Text, out id);
            tipo.TipoVehiculoId = id;
            tipo.Descripcion = DescripcionTextBox.Text;
        }

        private void DevolverValores()
        {
            TipoVehiculoIdTextBox.Text = tipo.TipoVehiculoId.ToString();
            DescripcionTextBox.Text = tipo.Descripcion;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            ObtenerValores();
            if (TipoVehiculoIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
            }
            else
            {
                if (tipo.Buscar(tipo.TipoVehiculoId))
                {
                    Limpiar();
                    DevolverValores();
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
            ObtenerValores();
            if (TipoVehiculoIdTextBox.Text == "")
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (tipo.Insertar())
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
                    if (tipo.Editar())
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
            ObtenerValores();
            if (TipoVehiculoIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id')</script>");
            }
            else
            {
                if (tipo.Buscar(tipo.TipoVehiculoId))
                {
                    if (tipo.Eliminar())
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