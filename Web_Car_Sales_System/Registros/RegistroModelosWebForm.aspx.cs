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
        Modelos modelo = new Modelos();
        int id, marca = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ObtenerDropDownList();
            }
        }

        public void ObtenerDropDownList()
        {
            Marcas marca = new Marcas();
            MarcaDropDownList.DataSource = marca.Listado(" * ", " 1=1 ", " ");
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "MarcaId";
            MarcaDropDownList.DataBind();
        }

        private void Limpiar()
        {
            ((TextBox)ModeloIdTextBox).Text = string.Empty;
            ((TextBox)DescripcionTextBox).Text = string.Empty;
        }

        private void ObtenerValores()
        {
            int.TryParse(ModeloIdTextBox.Text, out id);
            modelo.ModeloId = id;
            int.TryParse(MarcaDropDownList.SelectedValue, out marca);
            modelo.MarcaId = marca;
            modelo.Descripcion = DescripcionTextBox.Text;
        }

        private void DevolverValores()
        {
            ModeloIdTextBox.Text = modelo.ModeloId.ToString();
            DescripcionTextBox.Text = modelo.Descripcion;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            ObtenerValores();
            if (ModeloIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
            }
            else
            {
                if (modelo.Buscar(modelo.ModeloId))
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
            if (ModeloIdTextBox.Text == "")
            {
                if (MarcaDropDownList.Text != "" && DescripcionTextBox.Text != "")
                {
                    if (modelo.Insertar())
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
                if (MarcaDropDownList.Text != "" && DescripcionTextBox.Text != "")
                {
                    if (modelo.Editar())
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
            if (ModeloIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id')</script>");
            }
            else
            {
                if (modelo.Buscar(modelo.ModeloId))
                {
                    if (modelo.Eliminar())
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