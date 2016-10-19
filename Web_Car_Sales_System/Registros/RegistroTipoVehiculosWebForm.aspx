<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroTipoVehiculosWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroTipoVehiculosWebForm" EnableEventValidation="false" %>
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
        .auto-style18 {
            text-align: left;
        }
    .auto-style19 {
        width: 378px;
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
                width: 349px
            }
    .auto-style25 {
        text-align: right;
        width: 393px;
    }
            .auto-style26 {
                width: 378px
            }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19"><strong>Registro de Tipos de Vehiculos</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>TipoVehiculoId:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TipoVehiculoIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="TipoVehiculoId*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <strong>
                <asp:Button ID="BuscarButton" Class="btn-primary" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Descripción:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Descripción*"></asp:TextBox>
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
