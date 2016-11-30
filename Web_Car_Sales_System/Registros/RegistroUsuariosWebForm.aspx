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
            </td>
            <td class="auto-style18">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="UsuarioIdTextBox" ErrorMessage="CompareValidator" ForeColor="Red" SetFocusOnError="True" ValidationGroup="BuscarEliminar">*</asp:CompareValidator>
                <strong>
                <asp:Button ID="BuscarButton" Class="btn btn-default" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Nombre:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="NombreTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre*" MaxLength="30"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Inserte el nombre" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style27">
              <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de usuario*" MaxLength="20"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="Inserte un nombre de usuario" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style26"><strong>Contraseña:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="ContraseñaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*" MaxLength="40"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ContraseñaTextBox" ErrorMessage="Inserte una contraseña" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Confirmar Contraseña:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="ConfirmarTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Repetir contraseña*" MaxLength="40"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="ConfirmarTextBox" ErrorMessage="Confirme la contraseña" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
            </td>
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
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrioridad" runat="server" ControlToValidate="PrioridadDropDownList" ErrorMessage="Seleccione una prioridad" ForeColor="Red" InitialValue="0" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
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
