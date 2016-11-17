using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroModelosWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            if (!IsPostBack)
            {
                ObtenerDropDownList();
                if (Request.QueryString["ID"] != null)
                {
                    int id = 0;
                    int.TryParse(Request.QueryString["ID"].ToString(), out id);

                    if (modelo.Buscar(id))
                    {
                        DevolverValores(modelo);
                    }
                }
            }
        }

        public void ObtenerDropDownList()
        {
            Marcas marca = new Marcas();
            MarcaDropDownList.DataSource = marca.Listado(" * ", " 1=1 ", " ");
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "MarcaId";
            MarcaDropDownList.DataBind();
            MarcaDropDownList.Items.Insert(0, "Seleccionar--");
        }

        private void Limpiar()
        {
            ModeloIdTextBox.Text = string.Empty;
            DescripcionTextBox.Text = string.Empty;
        }

        private void ObtenerValores(Modelos modelo)
        {
            modelo.ModeloId = Validaciones.Entero(ModeloIdTextBox.Text);
            modelo.MarcaId = Validaciones.Entero(MarcaDropDownList.SelectedValue);
            modelo.Descripcion = DescripcionTextBox.Text;
        }

        private void DevolverValores(Modelos modelo)
        {
            ModeloIdTextBox.Text = modelo.ModeloId.ToString();
            MarcaDropDownList.SelectedValue = modelo.MarcaId.ToString();
            DescripcionTextBox.Text = modelo.Descripcion;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            ObtenerValores(modelo);
            if (ModeloIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (modelo.Buscar(modelo.ModeloId))
                {
                    Limpiar();
                    DevolverValores(modelo);
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
            Modelos modelo = new Modelos();
            ObtenerValores(modelo);
            if (ModeloIdTextBox.Text == "")
            {
                if (MarcaDropDownList.Text != "" && DescripcionTextBox.Text != "")
                {
                    if (modelo.Insertar())
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
                if (MarcaDropDownList.Text != "" && DescripcionTextBox.Text != "")
                {
                    if (modelo.Editar())
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
            Modelos modelo = new Modelos();
            ObtenerValores(modelo);
            if (ModeloIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (modelo.Buscar(modelo.ModeloId))
                {
                    if (modelo.Eliminar())
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