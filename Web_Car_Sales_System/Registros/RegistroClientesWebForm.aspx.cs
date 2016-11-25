using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroClientesWebForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clientes cliente = new Clientes();
                InsertarColumnas();
                if (Request.QueryString["ClienteId"] != null)
                {
                    if (cliente.Buscar(Validaciones.Entero(Request.QueryString["ClienteId"].ToString())))
                    {
                        DevolverValores(cliente);
                    }
                }
            }
        }

        private void Limpiar()
        {
            ClienteIdTextBox.Text = string.Empty;
            NombreCompletoTextBox.Text = string.Empty;
            NombreUsuarioTextBox.Text = string.Empty;
            ContraseñaTextBox.Text = string.Empty;
            RepetirTextBox.Text = string.Empty;
            DireccionTextBox.Text = string.Empty;
            CedulaTextBox.Text = string.Empty;
            NacionalidadTextBox.Text = string.Empty;
            NacimientoTextBox.Text = string.Empty;
            OcupacionTextBox.Text = string.Empty;
            TelefonoTextBox.Text = string.Empty;
            telefonosGridView.DataSource = null;
            InsertarColumnas();
            ObtenerValoresGridView();
        }

        public void InsertarColumnas()
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Tipo"), new DataColumn("Numero") });
            ViewState["Detalle"] = dt;
        }

        public void ObtenerValoresGridView()
        {
            telefonosGridView.DataSource = (DataTable)ViewState["Detalle"];
            telefonosGridView.DataBind();
        }

        private void ObtenerValores(Clientes cliente)
        {
            cliente.ClienteId = Validaciones.Entero(ClienteIdTextBox.Text);
            cliente.NombreCompleto = NombreCompletoTextBox.Text;
            cliente.NombreUsuario = NombreUsuarioTextBox.Text;
            cliente.Password = ContraseñaTextBox.Text;
            cliente.Direccion = DireccionTextBox.Text;
            cliente.Cedula = CedulaTextBox.Text;
            cliente.Nacionalidad = NacionalidadTextBox.Text;
            cliente.LugarDeNacimiento = NacimientoTextBox.Text;
            cliente.Ocupacion = OcupacionTextBox.Text;
            cliente.Sexo  = Validaciones.Entero(SexoDropDownList.SelectedValue);
            foreach (GridViewRow row in telefonosGridView.Rows)
            {
                cliente.InsertarTelefono(row.Cells[0].Text, row.Cells[1].Text);
            }
        }

        private void DevolverValores(Clientes cliente)
        {
            ClienteIdTextBox.Text = cliente.ClienteId.ToString();
            NombreCompletoTextBox.Text = cliente.NombreCompleto;
            NombreUsuarioTextBox.Text = cliente.NombreUsuario;
            ContraseñaTextBox.Text = cliente.Password;
            RepetirTextBox.Text = cliente.Password;
            DireccionTextBox.Text = cliente.Direccion;
            CedulaTextBox.Text = cliente.Cedula;
            NacionalidadTextBox.Text = cliente.Nacionalidad;
            NacimientoTextBox.Text = cliente.LugarDeNacimiento;
            OcupacionTextBox.Text = cliente.Ocupacion;
            SexoDropDownList.SelectedValue = cliente.Sexo.ToString();
            foreach (var item in cliente.telefonos)
            {
                DataTable dt = (DataTable)ViewState["Detalle"];
                dt.Rows.Add(item.Tipo, item.Telefono);
                ViewState["Detalle"] = dt;
                ObtenerValoresGridView();
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
            ObtenerValores(cliente);
            if (ClienteIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (cliente.Buscar(cliente.ClienteId))
                {
                    Limpiar();
                    DevolverValores(cliente);
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Id no encontrado", "warning");
                    Limpiar();
                }
            }
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (Validaciones.Entero(TipoDropDownList.SelectedValue) >= 0)
                {
                    DataTable dt = (DataTable)ViewState["Detalle"];
                    DataRow Valores;

                    Valores = dt.NewRow();
                    Valores["Tipo"] = TipoDropDownList.SelectedValue;
                    Valores["Numero"] = TelefonoTextBox.Text;

                    dt.Rows.Add(Valores);
                    ViewState["Detalle"] = dt;
                    ObtenerValoresGridView();

                    TelefonoTextBox.Text = string.Empty;
                    TipoDropDownList.SelectedIndex = -1;
                }
                else
                {
                    Validaciones.ShowToastr(this, "Advertencia", "Debe seleccionar un tipo de telefono", "warning");
                }
            }
            catch (Exception)
            {
                Validaciones.ShowToastr(this, "Error", "Error al insertar", "error");
            }
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
            ObtenerValores(cliente);
            if (ClienteIdTextBox.Text == "")
            {
                if (NombreCompletoTextBox.Text != "")
                {
                    if (cliente.Insertar())
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
                if (NombreCompletoTextBox.Text != "")
                {
                    if (cliente.Editar())
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
            Clientes cliente = new Clientes();
            ObtenerValores(cliente);
            if (ClienteIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (cliente.Buscar(cliente.ClienteId))
                {
                    if (cliente.Eliminar())
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