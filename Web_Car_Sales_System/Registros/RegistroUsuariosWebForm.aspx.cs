using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroUsuariosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            if (!IsPostBack)
            {
                
            }
        }

        private void Limpiar()
        {
            UsuarioIdTextBox.Text = string.Empty;
            NombreTextBox.Text = string.Empty;
            NombreUsuarioTextBox.Text = string.Empty;
            ContraseñaTextBox.Text = string.Empty;
            ConfirmarTextBox.Text = string.Empty;
            PrioridadDropDownList.SelectedIndex = -1;
        }

        private void ObtenerValores(Usuarios usuario)
        {
            usuario.UsuarioId = Validaciones.Entero(UsuarioIdTextBox.Text);
            usuario.Nombre = NombreTextBox.Text;
            usuario.NombreUsuario = NombreUsuarioTextBox.Text;
            usuario.Password = ContraseñaTextBox.Text;
            usuario.Prioridad = Validaciones.Entero(PrioridadDropDownList.SelectedValue);
        }

        private void DevolverValores(Usuarios usuario)
        {
            UsuarioIdTextBox.Text = usuario.UsuarioId.ToString();
            NombreTextBox.Text = usuario.Nombre;
            NombreUsuarioTextBox.Text = usuario.NombreUsuario;
            ContraseñaTextBox.Text = usuario.Password;
            PrioridadDropDownList.SelectedValue = usuario.Prioridad.ToString();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            ObtenerValores(usuario);
            if (UsuarioIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
            }
            else
            {
                if (usuario.Buscar(usuario.UsuarioId))
                {
                    Limpiar();
                    DevolverValores(usuario);
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
            Usuarios usuario = new Usuarios();
            ObtenerValores(usuario);
            if (UsuarioIdTextBox.Text == "")
            {
                if (NombreTextBox.Text != "" && NombreUsuarioTextBox.Text != "" && ContraseñaTextBox.Text != "" && ConfirmarTextBox.Text != "" && PrioridadDropDownList.Text != "")
                {
                    if (usuario.Insertar())
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
                if (NombreTextBox.Text != "" && NombreUsuarioTextBox.Text != "" && ContraseñaTextBox.Text != "" && ConfirmarTextBox.Text != "" && PrioridadDropDownList.Text != "")
                {
                    if (usuario.Editar())
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
            Usuarios usuario = new Usuarios();
            ObtenerValores(usuario);
            if (UsuarioIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id')</script>");
            }
            else
            {
                if (usuario.Buscar(usuario.UsuarioId))
                {
                    if (usuario.Eliminar())
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