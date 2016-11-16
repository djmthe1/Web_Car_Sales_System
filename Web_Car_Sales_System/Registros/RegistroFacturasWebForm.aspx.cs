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
        protected void Page_Load(object sender, EventArgs e)
        {
            Facturas factura = new Facturas();
            if (!IsPostBack)
            {
                FechaTextBox.Text = DateTime.Now.ToString("dd/MM/yyyy");
                ObtenerDropDownList();
                if (Request.QueryString["ID"] != null)
                {
                    int id = 0;
                    int.TryParse(Request.QueryString["ID"].ToString(), out id);

                    if (factura.Buscar(id))
                    {
                        DevolverValores(factura);
                    }
                }
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
            FacturaIdTextBox.Text = string.Empty;
            InicialEfectivoTextBox.Text = string.Empty;
            InicialChequeTextBox.Text = string.Empty;
            PrecioAPagarTextBox.Text = string.Empty;
            AutorizadoTextBox.Text = string.Empty;
        }

        private void ObtenerValores(Facturas factura)
        {
            factura.FacturaId = Validaciones.Entero(FacturaIdTextBox.Text);
            factura.Fecha = FechaTextBox.Text;
            factura.ClienteId = Validaciones.Entero(ClienteDropDownList.SelectedValue);
            factura.VehiculoId = Validaciones.Entero(VehiculoDropDownList.SelectedValue);
            factura.PagoInicialEfectivo = Validaciones.Entero(InicialEfectivoTextBox.Text);
            factura.PagoInicialCheque = Validaciones.Entero(InicialChequeTextBox.Text);
            factura.PrecioAPagar = Validaciones.Entero(PrecioAPagarTextBox.Text);
            factura.AutorizadoPor = Validaciones.Entero(AutorizadoTextBox.Text);
        }

        private void DevolverValores(Facturas factura)
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
            Facturas factura = new Facturas();
            ObtenerValores(factura);
            if (FacturaIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
            }
            else
            {
                if (factura.Buscar(factura.FacturaId))
                {
                    Limpiar();
                    DevolverValores(factura);
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
            Facturas factura = new Facturas();
            ObtenerValores(factura);
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
            Facturas factura = new Facturas();
            ObtenerValores(factura);
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