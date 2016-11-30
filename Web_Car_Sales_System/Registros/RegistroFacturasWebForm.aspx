<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroFacturasWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroFacturasWebForm" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 128px;
        }
        .auto-style4 {
                text-align: right;
                width: 294px;
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
        width: 294px;
    }
    .auto-style27 {
        width: 295px
    }
    .auto-style28 {
        width: 295px;
        text-decoration: underline;
        text-align: center;
        font-size: x-large;
    }
    .auto-style29 {
        width: 392px;
        text-align: right;
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
    <table class="auto-style1">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19"><strong>Registro de Facturas</strong></td>
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
            <td class="auto-style25"><strong>FacturaId:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="FacturaIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="FacturaId*" MaxLength="5"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <strong>
                <asp:Button ID="BuscarButton" Class="btn btn-default" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Fecha:</strong></td>
            <td class="auto-style26">
                <asp:TextBox ID="FechaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Fecha*" MaxLength="10"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Cliente:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="ClienteDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="40px" Width="285px" style="margin-left: 0px"></asp:DropDownList>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style29"><strong>VehiculoId:</strong></td>
            <td class="auto-style27">
                <asp:DropDownList ID="VehiculoDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="40px" Width="285px" style="margin-left: 0px"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>Pago Inicial en Efectivo:</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="InicialEfectivoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Pago Inicial en Efectivo*" MaxLength="7"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>Pago Inicial en Cheque:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="InicialChequeTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Pago Inicial en Cheque*" MaxLength="7"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Precio a Pagar:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="PrecioAPagarTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Precio a Pagar*" MaxLength="7"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Autorizado Por:</strong></td>
            <td class="auto-style26">
                <asp:TextBox ID="AutorizadoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Autorizado por*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style21">
                <strong>
                <asp:Button ID="NuevoButton" Class="btn btn-info" runat="server" Text="Nuevo" Width="100px" OnClick="NuevoButton_Click"/>
                </strong>
            </td>
            <td class="auto-style12">
                <strong>
                <asp:Button ID="GuardarButton" Class="btn btn-success" runat="server" Text="Guardar" Width="100px" OnClick="GuardarButton_Click"/>
                </strong>
            </td>
            <td> 
                <strong>   
                <asp:Button ID="EliminarButton" Class="btn btn-danger" runat="server" Text="Eliminar" Width="100px" OnClick="EliminarButton_Click"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">    

                <asp:ValidationSummary ID="ValidationSummary" runat="server" />

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
