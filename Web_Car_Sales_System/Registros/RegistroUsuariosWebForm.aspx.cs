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
            if (!IsPostBack)
            {
                Usuarios usuario = new Usuarios();
                PrioridadDropDownList.SelectedIndex = 0;
                if (Request.QueryString["UsuarioId"] != null)
                {
                    if (usuario.Buscar(Validaciones.Entero(Request.QueryString["UsuarioId"].ToString())))
                    {
                        DevolverValores(usuario);
                    }
                }
            }
        }

        private void Limpiar()
        {
            UsuarioIdTextBox.Text = string.Empty;
            NombreTextBox.Text = string.Empty;
            NombreUsuarioTextBox.Text = string.Empty;
            ContraseñaTextBox.Text = string.Empty;
            ConfirmarTextBox.Text = string.Empty;
            PrioridadDropDownList.SelectedIndex = 0;
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
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
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
            Usuarios usuario = new Usuarios();
            ObtenerValores(usuario);
            if (UsuarioIdTextBox.Text == "")
            {
                if (NombreTextBox.Text != "" && NombreUsuarioTextBox.Text != "" && ContraseñaTextBox.Text != "" && ConfirmarTextBox.Text != "" && PrioridadDropDownList.Text != "")
                {
                    if (usuario.Insertar())
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
                if (NombreTextBox.Text != "" && NombreUsuarioTextBox.Text != "" && ContraseñaTextBox.Text != "" && ConfirmarTextBox.Text != "" && PrioridadDropDownList.Text != "")
                {
                    if (usuario.Editar())
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
            Usuarios usuario = new Usuarios();
            ObtenerValores(usuario);
            if (UsuarioIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (usuario.Buscar(usuario.UsuarioId))
                {
                    if (usuario.Eliminar())
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