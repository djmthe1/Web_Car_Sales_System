<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroVehiculosWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroVehiculosWebForm" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 128px;
        }
        .auto-style4 {
            text-align: right;
            width: 293px;
        }
        .auto-style11 {
            width: 314px
        }
        .auto-style12 {
            width: 314px;
            text-align: center;
        }
        .auto-style16 {
            width: 310px
        }
        .auto-style18 {
            text-align: left;
        }
    .auto-style19 {
        width: 310px;
        text-decoration: underline;
        text-align: center;
        font-size: x-large;
    }
    .auto-style21 {
        text-align: right;
        width: 394px;
    }
    .auto-style22 {
        width: 394px
    }
    .auto-style24 {
        width: 392px
    }
    .auto-style25 {
        text-align: right;
        width: 393px;
    }
            .auto-style26 {
                text-align: left;
                width: 293px;
            }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19"><strong>Registro de Vehiculos</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>VehiculoId:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="VehiculoIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="VehiculoId*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <strong>
                <asp:Button ID="BuscarButton" Class="btn-primary" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Estado:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="EstadoDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                    <asp:ListItem Value="1">Nuevo</asp:ListItem>
                    <asp:ListItem Value="2">Usado</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Marca:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="MarcaDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                </asp:DropDownList>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Modelo:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="ModeloDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                </asp:DropDownList>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Motor:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="MotorDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                </asp:DropDownList>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Color:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="ColorDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                </asp:DropDownList>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Año:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="AñoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Año*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>No. Chasis:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ChasisTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="No. Chasis*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Tipo de Vehiculo:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="TipoDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                </asp:DropDownList>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Kilometraje:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="KilometrajeTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Kilometraje*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Precio:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="PrecioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Precio*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Placa:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="PlacaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Placa*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Matricula:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="MatriculaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Matricula*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Atributos del Vehiculo:</strong></td>
            <td class="auto-style26">
                <br />
                <asp:CheckBox ID="RetrovisorInternoCheckBox" runat="server" Text="Espejo Retrovisor Interno" />
                <br />
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:CheckBox ID="RetrovisorIzquierdoCheckBox" runat="server" Text="Espejo Retrovisor Izquierdo" />
                <br />
                <asp:CheckBox ID="RetrovisorDerechoCheckBox" runat="server" Text="Espejo Retrovisor Derecho" />
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:CheckBox ID="AlfombrasCheckBox" runat="server" Text="Alfombras" />
                <br />
                <asp:CheckBox ID="GatoCheckBox" runat="server" Text="Gato" />
                <br />
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:CheckBox ID="RadioCheckBox" runat="server" Text="Radio" />
                <br />
                <asp:CheckBox ID="LlaveRuedaCheckBox" runat="server" Text="Llave de Rueda" />
                <br />
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:CheckBox ID="GomasCheckBox" runat="server" Text="Gomas" />
                <br />
                <asp:CheckBox ID="GomaRepuestoCheckBox" runat="server" Text="Goma de Repuesto" />
                <br />
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:CheckBox ID="BotiquinCheckBox" runat="server" Text="Botiquin" />
                <br />
                <asp:CheckBox ID="TaponGasolinaCheckBox" runat="server" Text="Tapon de Gasolina" />
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:CheckBox ID="TaponRadiadorCheckBox" runat="server" Text="Tapon de Radiador" />
                <br />
                <asp:CheckBox ID="EncendedorCheckBox" runat="server" Text="Encendedor" />
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:CheckBox ID="ManualDeUsuarioCheckBox" runat="server" Text="Manual de Usuario" />
                <br />
                <asp:CheckBox ID="DuplicadoLlaveEncendidoCheckBox" runat="server" Text="Duplicado de Llave de Encendido" />
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style21">
                <strong>
                <asp:Button ID="NuevoButton" Class="btn-primary" runat="server" Text="Nuevo" Width="100px" OnClick="NuevoButton_Click"/>
                </strong>
            </td>
            <td class="auto-style12">
                <strong>
                <asp:Button ID="GuardarButton" Class="btn-primary" runat="server" Text="Guardar" Width="100px" OnClick="GuardarButton_Click"/>
                </strong>
            </td>
            <td> 
                <strong>   
                <asp:Button ID="EliminarButton" Class="btn-primary" runat="server" Text="Eliminar" Width="100px" OnClick="EliminarButton_Click"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">    

            </td>
            <td class="auto-style11">    

            </td>
            <td>    

            </td>
        </tr><tr>
            <td class="auto-style22">    

            </td>
            <td class="auto-style11">    

            </td>
            <td>    

            </td>
        </tr>
    </table>
</asp:Content>
