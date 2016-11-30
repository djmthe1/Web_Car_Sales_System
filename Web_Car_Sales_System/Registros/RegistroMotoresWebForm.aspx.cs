using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroMotoresWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Validar();
                Motores motor = new Motores();
                if (Request.QueryString["MotorId"] != null)
                {
                    int id = 0;
                    int.TryParse(Request.QueryString["MotorId"].ToString(), out id);

                    if (motor.Buscar(id))
                    {
                        DevolverValores(motor);
                    }
                }
            }
        }

        private void Validar()
        {
            if (Session["Login"] != null)
            {
                Usuarios usuario = new Usuarios();
                usuario = (Usuarios)Session["Login"];
                if (usuario.Prioridad != 1)
                    Response.Redirect("/Default.aspx");
            }
            else
            {
                Response.Redirect("/Login.aspx");
            }
        }

        private void Limpiar()
        {
            MotorIdTextBox.Text = string.Empty;
            DescripcionTextBox.Text = string.Empty;
        }

        private void ObtenerValores(Motores motor)
        {
            motor.MotorId = Validaciones.Entero(MotorIdTextBox.Text);
            motor.Descripcion = DescripcionTextBox.Text;
        }

        private void DevolverValores(Motores motor)
        {
            MotorIdTextBox.Text = motor.MotorId.ToString();
            DescripcionTextBox.Text = motor.Descripcion;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Motores motor = new Motores();
            ObtenerValores(motor);
            if (MotorIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (motor.Buscar(motor.MotorId))
                {
                    Limpiar();
                    DevolverValores(motor);
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
            Motores motor = new Motores();
            ObtenerValores(motor);
            if (MotorIdTextBox.Text == "")
            {
                if (DescripcionTextBox.Text != "")
                {
                    if (motor.Insertar())
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
                    if (motor.Editar())
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
            Motores motor = new Motores();
            ObtenerValores(motor);
            if (MotorIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (motor.Buscar(motor.MotorId))
                {
                    if (motor.Eliminar())
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