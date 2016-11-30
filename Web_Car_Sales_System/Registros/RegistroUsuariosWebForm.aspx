<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroUsuariosWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroUsuariosWebForm" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 128px;
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
        height: 48px;
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
    .auto-style26 {
        text-align: right;
        width: 393px;
        height: 48px;
    }
    .auto-style27 {
        text-align: right;
        width: 293px;
        height: 48px;
    }
    .auto-style28 {
        height: 48px;
    }
        .auto-style29 {
            text-align: left;
            width: 293px;
            height: 48px;
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
            <td class="auto-style19"><strong>Registro de Usuarios</strong></td>
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
            <td class="auto-style26"><strong>UsuarioId:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="UsuarioIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="UsuarioId*" MaxLength="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsuarioIdTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Id" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Buscar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UsuarioIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UsuarioIdTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Id" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Eliminar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="UsuarioIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Eliminar">*</asp:RegularExpressionValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="UsuarioIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style18">
                <strong>
                <asp:Button ID="BuscarButton" Class="btn btn-default" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" ValidationGroup="Buscar"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Nombre:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="NombreTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre*" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style27">
              <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de usuario*" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style26"><strong>Contraseña:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="ContraseñaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*" MaxLength="40" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidatorValidator5" runat="server" ControlToCompare="ConfirmarTextBox" ControlToValidate="ContraseñaTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="Guardar">*</asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="ContraseñaTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Confirmar Contraseña:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="ConfirmarTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Repetir contraseña*" MaxLength="40" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToCompare="ContraseñaTextBox" ControlToValidate="ConfirmarTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="Guardar">*</asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="ConfirmarTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style26">
                <strong>Prioridad:</strong></td>
            <td class="auto-style29">
                <asp:DropDownList ID="PrioridadDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="35px" Width="285px" style="margin-left: 0px">
                    <asp:ListItem Value="0">Seleccione--</asp:ListItem>
                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                    <asp:ListItem Value="2">Usuario</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td></td>
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
