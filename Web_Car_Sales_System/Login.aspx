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
        .auto-style21 {
            width: 530px;
            text-align: right;
            height: 80px;
        }
        .auto-style22 {
            width: 279px;
            height: 80px;
        }
        .auto-style23 {
            height: 80px;
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
            <td class="auto-style21"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style22">
                <asp:TextBox ID="UsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de Usuario*" MaxLength="20"></asp:TextBox>
              </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsuarioTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Usuario" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Entrar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UsuarioTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Entrar"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Contraseña:</strong></td>
            <td class="auto-style22">
                <asp:TextBox ID="PassTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*" MaxLength="40"></asp:TextBox>
            </td>
            <td class="auto-style23">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" EnableTheming="False" ErrorMessage="Debe insertar una Contraseña" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Entrar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PassTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Entrar"></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:ValidationSummary ID="ValidationSummary" runat="server" Height="66px" ValidationGroup="Entrar"/>
            </td>
            <td class="auto-style5">
                <strong>
                <asp:Button ID="EntrarButton" Class="btn btn-success" runat="server" Text="Ingresar" Width="100px" OnClick="EntrarButton_Click" ValidationGroup="Entrar"/>
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
            <td class="auto-style5"><asp:CheckBox ID="RecuerdarCheckBox" runat="server" type="checkbox" /> Recordarme</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
