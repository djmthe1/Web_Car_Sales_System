<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroModelosWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroModelosWebForm" EnableEventValidation="false" %>
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
            <td class="auto-style19"><strong>Registro de Modelos</strong></td>
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
            <td class="auto-style25"><strong>ModeloId:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ModeloIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="ModeloId*" MaxLength="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ModeloIdTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Id" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Buscar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ModeloIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ModeloIdTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Id" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Eliminar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ModeloIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Eliminar">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ModeloIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style18">
                <asp:Button ID="BuscarButton" Class="btn btn-default" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" ValidationGroup="Buscar"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Marca:</strong></td>
            <td class="auto-style26">
                <asp:DropDownList ID="MarcaDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="40px" Width="285px" style="margin-left: 0px"></asp:DropDownList>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Descripción:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="DescripcionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Descripción*" MaxLength="30"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DescripcionTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="DescripcionTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
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
                <asp:Button ID="GuardarButton" Class="btn btn-success" runat="server" Text="Guardar" Width="100px" OnClick="GuardarButton_Click" ValidationGroup="Guardar"/>
                </strong>
            </td>
            <td> 
                <strong>   
                <asp:Button ID="EliminarButton" Class="btn btn-danger" runat="server" Text="Eliminar" Width="100px" OnClick="EliminarButton_Click" ValidationGroup="Eliminar"/>
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
