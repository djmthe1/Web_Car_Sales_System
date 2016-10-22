using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web_Car_Sales_System.Registros
{
    public partial class RegistroVehiculosWebForm : System.Web.UI.Page
    {
        Vehiculos vehiculo = new Vehiculos();
        int id, estado, marcaId, modeloId, motorId, colorId, año, tipoVehiculoId, kilometraje, precio = 0;

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

            Modelos modelo = new Modelos();
            MarcaDropDownList.DataSource = modelo.Listado(" * ", " 1=1 ", " ");
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "ModeloId";
            MarcaDropDownList.DataBind();

            Motores motor = new Motores();
            MarcaDropDownList.DataSource = motor.Listado(" * ", " 1=1 ", " ");
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "MotorId";
            MarcaDropDownList.DataBind();

            Colores color = new Colores();
            MarcaDropDownList.DataSource = color.Listado(" * ", " 1=1 ", " ");
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "ColorId";
            MarcaDropDownList.DataBind();

            TipoVehiculos tipo = new TipoVehiculos();
            MarcaDropDownList.DataSource = tipo.Listado(" * ", " 1=1 ", " ");
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "TipoVehiculoId";
            MarcaDropDownList.DataBind();
        }

        private void Limpiar()
        {
            ((TextBox)VehiculoIdTextBox).Text = string.Empty;
            ((TextBox)AñoTextBox).Text = string.Empty;
            ((TextBox)ChasisTextBox).Text = string.Empty;
            ((TextBox)KilometrajeTextBox).Text = string.Empty;
            ((TextBox)PrecioTextBox).Text = string.Empty;
            ((TextBox)PlacaTextBox).Text = string.Empty;
            ((TextBox)MatriculaTextBox).Text = string.Empty;
            ((RadioButton)RetrovisorInternoCheckBox).Checked = false;
            ((RadioButton)RetrovisorDerechoCheckBox).Checked = false;
            ((RadioButton)RetrovisorIzquierdoCheckBox).Checked = false;
            ((RadioButton)GomasCheckBox).Checked = false;
            ((RadioButton)GatoCheckBox).Checked = false;
            ((RadioButton)RadioCheckBox).Checked = false;
            ((RadioButton)LlaveRuedaCheckBox).Checked = false;
            ((RadioButton)GomaRepuestoCheckBox).Checked = false;
            ((RadioButton)AlfombrasCheckBox).Checked = false;
            ((RadioButton)BotiquinCheckBox).Checked = false;
            ((RadioButton)TaponGasolinaCheckBox).Checked = false;
            ((RadioButton)TaponRadiadorCheckBox).Checked = false;
            ((RadioButton)EncendedorCheckBox).Checked = false;
            ((RadioButton)ManualDeUsuarioCheckBox).Checked = false;
            ((RadioButton)DuplicadoLlaveEncendidoCheckBox).Checked = false;
        }

        private void ObtenerValores()
        {
            int.TryParse(VehiculoIdTextBox.Text, out id);
            vehiculo.VehiculoId = id;
            int.TryParse(EstadoDropDownList.SelectedValue, out estado);
            vehiculo.EstadoVehiculo = estado;
            int.TryParse(MarcaDropDownList.SelectedValue, out marcaId);
            vehiculo.MarcaId = marcaId;
            int.TryParse(ModeloDropDownList.SelectedValue, out modeloId);
            vehiculo.ModeloId = modeloId;
            int.TryParse(MotorDropDownList.SelectedValue, out motorId);
            vehiculo.MotorId = motorId;
            int.TryParse(ColorDropDownList.SelectedValue, out colorId);
            vehiculo.ColorId = colorId;
            int.TryParse(AñoTextBox.Text, out año);
            vehiculo.Año = año;
            vehiculo.NoChasis = ChasisTextBox.Text;
            int.TryParse(TipoDropDownList.SelectedValue, out tipoVehiculoId);
            vehiculo.TipoVehiculoId = tipoVehiculoId;
            int.TryParse(KilometrajeTextBox.Text, out kilometraje);
            vehiculo.Kilometraje = kilometraje;
            int.TryParse(PrecioTextBox.Text, out precio);
            vehiculo.Precio = precio;
            vehiculo.Placa = PlacaTextBox.Text;
            vehiculo.Matricula = MatriculaTextBox.Text;

            if (DuplicadoLlaveEncendidoCheckBox.Checked)
            {
                vehiculo.DuplicadoLlaveEncendido = true;
            }
            else
            {
                vehiculo.DuplicadoLlaveEncendido = false;
            }

            if (RetrovisorDerechoCheckBox.Checked)
            {
                vehiculo.EspejoRetrovisorDerecho = true;
            }
            else
            {
                vehiculo.EspejoRetrovisorDerecho = false;
            }

            if (RetrovisorIzquierdoCheckBox.Checked)
            {
                vehiculo.EspejoRetrovisorIzquierdo = true;
            }
            else
            {
                vehiculo.EspejoRetrovisorIzquierdo = false;
            }

            if (RetrovisorInternoCheckBox.Checked)
            {
                vehiculo.EspejoRetrovisorInterno = true;
            }
            else
            {
                vehiculo.EspejoRetrovisorInterno = false;
            }

            if (ManualDeUsuarioCheckBox.Checked)
            {
                vehiculo.ManualDeUsuario = true;
            }
            else
            {
                vehiculo.ManualDeUsuario = false;
            }

            if (TaponGasolinaCheckBox.Checked)
            {
                vehiculo.TaponGasolina = true;
            }
            else
            {
                vehiculo.TaponGasolina = false;
            }

            if (TaponRadiadorCheckBox.Checked)
            {
                vehiculo.TaponRadiador = true;
            }
            else
            {
                vehiculo.TaponRadiador = false;
            }

            if (GomaRepuestoCheckBox.Checked)
            {
                vehiculo.GomaRepuesto = true;
            }
            else
            {
                vehiculo.GomaRepuesto = false;
            }

            if (BotiquinCheckBox.Checked)
            {
                vehiculo.Botiquin = true;
            }
            else
            {
                vehiculo.Botiquin = false;
            }

            if (GomasCheckBox.Checked)
            {
                vehiculo.Gomas = true;
            }
            else
            {
                vehiculo.Gomas = false;
            }

            if (RadioCheckBox.Checked)
            {
                vehiculo.Radio = true;
            }
            else
            {
                vehiculo.Radio = false;
            }

            if (GatoCheckBox.Checked)
            {
                vehiculo.Gato = true;
            }
            else
            {
                vehiculo.Gato = false;
            }

            if (AlfombrasCheckBox.Checked)
            {
                vehiculo.Alfombras = true;
            }
            else
            {
                vehiculo.Alfombras = false;
            }

            if (EncendedorCheckBox.Checked)
            {
                vehiculo.Encendedor = true;
            }
            else
            {
                vehiculo.Encendedor = false;
            }

            if (LlaveRuedaCheckBox.Checked)
            {
                vehiculo.LlaveRueda = true;
            }
            else
            {
                vehiculo.LlaveRueda = false;
            }
        }

        private void DevolverValores()
        {
            VehiculoIdTextBox.Text = vehiculo.VehiculoId.ToString();
            EstadoDropDownList.SelectedValue = vehiculo.EstadoVehiculo.ToString();
            ModeloDropDownList.SelectedValue = vehiculo.ModeloId.ToString();
            MotorDropDownList.SelectedValue = vehiculo.MotorId.ToString();
            ColorDropDownList.SelectedValue = vehiculo.ColorId.ToString();
            AñoTextBox.Text = vehiculo.Año.ToString();
            ChasisTextBox.Text = vehiculo.NoChasis.ToString();
            TipoDropDownList.SelectedValue = vehiculo.TipoVehiculoId.ToString();
            KilometrajeTextBox.Text = vehiculo.Kilometraje.ToString();
            PrecioTextBox.Text = vehiculo.Precio.ToString();
            PlacaTextBox.Text = vehiculo.Placa.ToString();
            MatriculaTextBox.Text = vehiculo.Matricula.ToString();
            if (vehiculo.DuplicadoLlaveEncendido == true)
            {
                DuplicadoLlaveEncendidoCheckBox.Checked = true;
            }

            if (vehiculo.EspejoRetrovisorDerecho == true)
            {
                RetrovisorDerechoCheckBox.Checked = true;
            }

            if (vehiculo.EspejoRetrovisorIzquierdo == true)
            {
                RetrovisorIzquierdoCheckBox.Checked = true;
            }

            if (vehiculo.EspejoRetrovisorInterno == true)
            {
                RetrovisorInternoCheckBox.Checked = true;
            }

            if (vehiculo.ManualDeUsuario == true)
            {
                ManualDeUsuarioCheckBox.Checked = true;
            }

            if (vehiculo.TaponGasolina == true)
            {
                TaponGasolinaCheckBox.Checked = true;
            }

            if (vehiculo.TaponRadiador == true)
            {
                TaponRadiadorCheckBox.Checked = true;
            }

            if (vehiculo.GomaRepuesto == true)
            {
                GomaRepuestoCheckBox.Checked = true;
            }

            if (vehiculo.Botiquin == true)
            {
                BotiquinCheckBox.Checked = true;
            }

            if (vehiculo.Gomas == true)
            {
                GomasCheckBox.Checked = true;
            }

            if (vehiculo.Radio == true)
            {
                RadioCheckBox.Checked = true;
            }

            if (vehiculo.Gato == true)
            {
                GatoCheckBox.Checked = true;
            }

            if (vehiculo.Alfombras == true)
            {
                AlfombrasCheckBox.Checked = true;
            }

            if (vehiculo.Encendedor == true)
            {
                EncendedorCheckBox.Checked = true;
            }

            if (vehiculo.LlaveRueda == true)
            {
                LlaveRuedaCheckBox.Checked = true;
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            ObtenerValores();
            if (VehiculoIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id, Error al Buscar')</script>");
            }
            else
            {
                if (vehiculo.Buscar(vehiculo.VehiculoId))
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
            if (VehiculoIdTextBox.Text == "")
            {
                if (EstadoDropDownList.Text != "")
                {
                    if (vehiculo.Insertar())
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
                if (EstadoDropDownList.Text != "")
                {
                    if (vehiculo.Editar())
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
            if (VehiculoIdTextBox.Text.Length == 0)
            {
                Response.Write("<script>alert('Debe insertar un Id')</script>");
            }
            else
            {
                if (vehiculo.Buscar(vehiculo.VehiculoId))
                {
                    if (vehiculo.Eliminar())
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