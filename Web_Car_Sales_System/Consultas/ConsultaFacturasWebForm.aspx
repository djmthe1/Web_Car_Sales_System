<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaFacturasWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Consultas.ConsultaFacturasWebForm" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 128px;
        }
        .auto-style16 {
            width: 310px
        }
        .auto-style19 {
        width: 310px;
        text-decoration: underline;
        text-align: center;
        font-size: x-large;
    }
        .auto-style25 {
            width: 354px
        }
            .auto-style26 {
            width: 310px;
            text-align: left;
        }
        .auto-style27 {
            width: 354px;
            text-align: right;
        }
            .auto-style29 {
            width: 215px
        }
        .auto-style30 {
            width: 441px
        }
        .auto-style31 {
            width: 441px;
            text-decoration: underline;
            text-align: center;
            font-size: x-large;
        }
            .auto-style32 {
            width: 301px
        }
            .auto-style33 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
        .auto-style34 {
            width: 312px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style35 {
            width: 314px
        }
        .auto-style36 {
            width: 312px;
            font-size: x-large;
            text-align: center;
            text-decoration: underline;
        }
        .auto-style37 {
            width: 354px;
            text-align: center;
        }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style36"><strong><em>Consulta de Facturas</em></strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style19"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">Buscar Por:<asp:DropDownList ID="BuscarPorDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="34px" Width="150px" style="margin-left: 0px">
                <asp:ListItem>FacturaId</asp:ListItem>
                <asp:ListItem>Fecha</asp:ListItem>
                <asp:ListItem>ClienteId</asp:ListItem>
                <asp:ListItem>VehiculoId</asp:ListItem>
                <asp:ListItem>PagoInicialEfectivo</asp:ListItem>
                <asp:ListItem>PagoInicialCheque</asp:ListItem>
                <asp:ListItem>PrecioAPagar</asp:ListItem>
                <asp:ListItem>AutorizadoPor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Filtro"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FiltroTextBox" ErrorMessage="*Ingrese Solo Letras y Numeros" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup=">Buscar">*</asp:RegularExpressionValidator>
            </td>
            <td>
                <strong>
                <asp:Button ID="BuscarButton" Class="btn btn-success" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" ValidationGroup="Buscar"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">Filtral por Fecha:<asp:CheckBox ID="FechaCheckBox" runat="server" Text="" />
            </td>
            <td class="auto-style26">
                Desde:<asp:TextBox ID="DesdeTextBox" CssClass="auto-style33" runat="server" Width="100px" Height="34px"></asp:TextBox>
            </td>
            <td>Hasta:
                <asp:TextBox ID="HastaTextBox" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style30">
                 <asp:GridView ID="ConsultaGridView" runat="server" Width="438px">
                    <Columns>
                        <asp:HyperLinkField
                        DataNavigateUrlFields="FacturaId"
                        DataNavigateUrlFormatString="/Registros/RegistroFacturasWebForm.aspx?FacturaId={0}"
                        Text="Editar"
                        ControlStyle-CssClass="btn btn-default"  />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="ImprimirButton" Class="btn btn-warning" runat="server" Text="Imprimir" Width="100px" OnClick="ImprimirButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
