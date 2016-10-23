using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroFacturasWebForm : System.Web.UI.Page
    {
        Facturas factura = new Facturas();
        int id, clienteId, vehiculoId, efectivo, cheque, pagar, autorizadoPor = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FechaTextBox.Text = DateTime.Now.ToString("dd/MM/yyyy");
                ObtenerDropDownList();
            }
        }

        public void ObtenerDropDownList()
        {
            Clientes cliente = new Clientes();
            ClienteDropDownList.DataSource = cliente.Listado(" * ", " 1=1 ", " ");
            ClienteDropDownList.DataTextField = "NombreCompleto";
            ClienteDropDownList.DataValueField = "ClienteId";
            ClienteDropDownList.DataBind();

            Vehiculos vehiculo = new Vehiculos();
            VehiculoDropDownList.DataSource = vehiculo.Listado(" * ", " 1=1 ", " ");
            VehiculoDropDownList.DataTextField = "VehiculoId";
            VehiculoDropDownList.DataValueField = "VehiculoId";
            VehiculoDropDownList.DataBind();
        }

        private void Limpiar()
        {
            ((TextBox)FacturaIdTextBox).Text = string.Empty;
            ((TextBox)InicialEfectivoTextBox).Text = string.Empty;
            ((TextBox)InicialChequeTextBox).Text = string.Empty;
            ((TextBox)PrecioAPagarTextBox).Text = string.Empty;
            ((TextBox)AutorizadoTextBox).Text = string.Empty;
        }

        private void ObtenerValores()
        {
            int.TryParse(FacturaIdTextBox.Text, out id);
            factura.FacturaId = id;
            factura.Fecha = FechaTextBox.Text;
            int.TryParse(ClienteDropDownList.SelectedValue, out clienteId);
            factura.ClienteId = clienteId;
            int.TryParse(VehiculoDropDownList.SelectedValue, out vehiculoId);
            factura.VehiculoId = vehiculoId;
            int.TryParse(InicialEfectivoTextBox.Text, out efectivo);
            factura.PagoInicialEfectivo = efectivo;
            int.TryParse(InicialChequeTextBox.Text, out cheque);
            factura.PagoInicialCheque = cheque;
            int.TryParse(PrecioAPagarTextBox.Text, out pagar);
            factura.PrecioAPagar = pagar;
            int.TryParse(AutorizadoTextBox.Text, out autorizadoPor);
            factura.AutorizadoPor = autorizadoPor;
        }

        private void DevolverValores()
        {
            FacturaIdTextBox.Text = factura.FacturaId.ToString();
            FechaTextBox.Text = factura.Fecha;
            ClienteDropDownList.SelectedValue = factura.ClienteId.ToString();
            VehiculoDropDownList.SelectedValue = factura.VehiculoId.ToString();
            InicialEfectivoTextBox.Text = factura.PagoInicialEfectivo.ToString();
            InicialChequeTextBox.Text = factura.PagoInicialCheque.ToString();
            PrecioAPagarTextBox.Text = factura.PrecioAPagar.ToString();
            AutorizadoTextBox.Text = factura.AutorizadoPor.ToString();
        }
        
        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            ObtenerValores();
            if (FacturaIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
            }
            else
            {
                if (factura.Buscar(factura.FacturaId))
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
            if (FacturaIdTextBox.Text == "")
            {
                if (VehiculoDropDownList.Text != "")
                {
                    if (factura.Insertar())
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
                if (VehiculoDropDownList.Text != "")
                {
                    if (factura.Editar())
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
            if (FacturaIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id')</script>");
            }
            else
            {
                if (factura.Buscar(factura.FacturaId))
                {
                    if (factura.Eliminar())
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