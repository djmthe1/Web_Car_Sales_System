<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Car_Sales_System.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 145px;
        }
        .auto-style2 {
            width: 530px;
        }
        .auto-style3 {
            width: 279px;
        }
        .auto-style5 {
        width: 185px;
    }
        .auto-style6 {
            text-align: center;
            font-size: xx-large;
            width: 292px;
            text-decoration: underline;
        }
        .auto-style7 {
            width: 292px;
            text-decoration: underline;
        }
        .auto-style8 {
            width: 530px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">&nbsp;</td>
            <td class="auto-style6"><strong><em>Login</em></strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style8"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="UsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de Usuario*"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Contraseña:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="PassTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
                <strong>
                <asp:Button ID="EntrarButton" Class="btn btn-success" runat="server" Text="Ingresar" Width="100px" OnClick="EntrarButton_Click"/>
                </strong>
            </td>
            <td class="text-left">
                <strong>
                <asp:Button ID="RegistrarseButton" Class="btn btn-info" runat="server" Text="registrarse" Width="100px" OnClick="RegistrarseButton_Click"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5"><asp:CheckBox ID="RecuerdarCheckBox" runat="server" type="checkbox" /> Recordar?</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
