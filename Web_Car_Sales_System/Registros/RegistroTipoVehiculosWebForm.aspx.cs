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
        int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            TipoVehiculos tipo = new TipoVehiculos();
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int id = 0;
                    int.TryParse(Request.QueryString["ID"].ToString(), out id);

                    if (tipo.Buscar(id))
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
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
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
            TipoVehiculos tipo = new TipoVehiculos();
            ObtenerValores(tipo);
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
            TipoVehiculos tipo = new TipoVehiculos();
            ObtenerValores(tipo);
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