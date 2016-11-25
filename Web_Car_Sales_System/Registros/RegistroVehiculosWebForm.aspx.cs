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
        protected void Page_Load(object sender, EventArgs e)
        {
            Vehiculos vehiculo = new Vehiculos();
            if (!IsPostBack)
            {
                ObtenerDropDownList();
                if (Request.QueryString["ID"] != null)
                {
                    int id = 0;
                    int.TryParse(Request.QueryString["ID"].ToString(), out id);

                    if (vehiculo.Buscar(id))
                    {
                        DevolverValores(vehiculo);
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

            Modelos modelo = new Modelos();
            ModeloDropDownList.DataSource = modelo.Listado(" * ", " 1=1 ", " ");
            ModeloDropDownList.DataTextField = "Descripcion";
            ModeloDropDownList.DataValueField = "ModeloId";
            ModeloDropDownList.DataBind();
            ModeloDropDownList.Items.Insert(0, "Seleccionar--");

            Motores motor = new Motores();
            MotorDropDownList.DataSource = motor.Listado(" * ", " 1=1 ", " ");
            MotorDropDownList.DataTextField = "Descripcion";
            MotorDropDownList.DataValueField = "MotorId";
            MotorDropDownList.DataBind();
            MotorDropDownList.Items.Insert(0, "Seleccionar--");

            Colores color = new Colores();
            ColorDropDownList.DataSource = color.Listado(" * ", " 1=1 ", " ");
            ColorDropDownList.DataTextField = "Descripcion";
            ColorDropDownList.DataValueField = "ColorId";
            ColorDropDownList.DataBind();
            ColorDropDownList.Items.Insert(0, "Seleccionar--");

            TipoVehiculos tipo = new TipoVehiculos();
            TipoDropDownList.DataSource = tipo.Listado(" * ", " 1=1 ", " ");
            TipoDropDownList.DataTextField = "Descripcion";
            TipoDropDownList.DataValueField = "TipoVehiculoId";
            TipoDropDownList.DataBind();
            TipoDropDownList.Items.Insert(0, "Seleccionar--");
        }

        private void Limpiar()
        {
            VehiculoIdTextBox.Text = string.Empty;
            AñoTextBox.Text = string.Empty;
            ChasisTextBox.Text = string.Empty;
            KilometrajeTextBox.Text = string.Empty;
            PrecioTextBox.Text = string.Empty;
            PlacaTextBox.Text = string.Empty;
            MatriculaTextBox.Text = string.Empty;
            RetrovisorInternoCheckBox.Checked = false;
            RetrovisorDerechoCheckBox.Checked = false;
            RetrovisorIzquierdoCheckBox.Checked = false;
            GomasCheckBox.Checked = false;
            GatoCheckBox.Checked = false;
            RadioCheckBox.Checked = false;
            LlaveRuedaCheckBox.Checked = false;
            GomaRepuestoCheckBox.Checked = false;
            AlfombrasCheckBox.Checked = false;
            BotiquinCheckBox.Checked = false;
            TaponGasolinaCheckBox.Checked = false;
            TaponRadiadorCheckBox.Checked = false;
            EncendedorCheckBox.Checked = false;
            ManualDeUsuarioCheckBox.Checked = false;
            DuplicadoLlaveEncendidoCheckBox.Checked = false;
        }

        private void ObtenerValores(Vehiculos vehiculo)
        {
            vehiculo.VehiculoId = Validaciones.Entero(VehiculoIdTextBox.Text);
            vehiculo.EstadoVehiculo = Validaciones.Entero(EstadoDropDownList.SelectedValue);
            vehiculo.MarcaId = Validaciones.Entero(MarcaDropDownList.SelectedValue);
            vehiculo.ModeloId = Validaciones.Entero(ModeloDropDownList.SelectedValue);
            vehiculo.MotorId = Validaciones.Entero(MotorDropDownList.SelectedValue);
            vehiculo.ColorId = Validaciones.Entero(ColorDropDownList.SelectedValue);
            vehiculo.Año = Validaciones.Entero(AñoTextBox.Text);
            vehiculo.NoChasis = ChasisTextBox.Text;
            vehiculo.TipoVehiculoId = Validaciones.Entero(TipoDropDownList.SelectedValue);
            vehiculo.Kilometraje = Validaciones.Entero(KilometrajeTextBox.Text);
            vehiculo.Precio = Validaciones.Entero(PrecioTextBox.Text);
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

        private void DevolverValores(Vehiculos vehiculo)
        {
            VehiculoIdTextBox.Text = vehiculo.VehiculoId.ToString();
            EstadoDropDownList.SelectedValue = vehiculo.EstadoVehiculo.ToString();
            MarcaDropDownList.SelectedValue = vehiculo.MarcaId.ToString();
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
            Vehiculos vehiculo = new Vehiculos();
            ObtenerValores(vehiculo);
            if (VehiculoIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (vehiculo.Buscar(vehiculo.VehiculoId))
                {
                    Limpiar();
                    DevolverValores(vehiculo);
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
            Vehiculos vehiculo = new Vehiculos();
            ObtenerValores(vehiculo);
            if (VehiculoIdTextBox.Text == "")
            {
                if (EstadoDropDownList.Text != "")
                {
                    if (vehiculo.Insertar())
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
                if (EstadoDropDownList.Text != "")
                {
                    if (vehiculo.Editar())
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
            Vehiculos vehiculo = new Vehiculos();
            ObtenerValores(vehiculo);
            if (VehiculoIdTextBox.Text.Length == 0)
            {
                Validaciones.ShowToastr(this, "Advertencia", "Debe insertar un Id", "warning");
            }
            else
            {
                if (vehiculo.Buscar(vehiculo.VehiculoId))
                {
                    if (vehiculo.Eliminar())
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