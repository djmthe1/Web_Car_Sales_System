<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroClientesWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroClientesWebForm" EnableEventValidation="false" %>
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
            .auto-style27 {
                text-align: left;
                width: 290px;
            }
            .auto-style28 {
                text-align: right;
                width: 393px;
                height: 42px;
            }
            .auto-style29 {
                text-align: left;
                width: 292px;
                height: 42px;
            }
            .auto-style30 {
                text-align: left;
                width: 292px;
            }
            .auto-style31 {
                text-align: left;
                height: 42px;
            }
            .auto-style33 {
                height: 42px;
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
            <td class="auto-style19"><strong>Registro de Clientes</strong></td>
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
            <td class="auto-style25"><strong>ClienteId:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ClienteIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="ClienteId*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <strong>
                <asp:Button ID="BuscarButton" Class="btn-primary" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Nombre Completo:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreCompletoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre Completo*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de Usuario*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Contraseña:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ContraseñaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Repetir Contraseña:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="RepetirTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Repetir Contraseña*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Dirección:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="DireccionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Dirección*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Cedula:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="CedulaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Cedula*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Nacionalidad:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NacionalidadTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nacionalidad*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Lugar de Nacimiento:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NacimientoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Lugar de Nacimiento*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
             <td class="auto-style28"><strong>Ocupación:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="OcupacionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Ocupación*"></asp:TextBox>
            </td>
            <td class="auto-style31">
                </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>Sexo:</strong></td>
            <td class="auto-style29">
                <asp:DropDownList ID="SexoDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                    <asp:ListItem Value="1">Masculino</asp:ListItem>
                    <asp:ListItem Value="1">Femenino</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style30">
                <strong>Telefono:</strong><asp:TextBox ID="TelefonoTextBox" CssClass="form-control" runat="server" Width="80px" placeholder="Telefono"></asp:TextBox>
                <strong>&nbsp;Tipo:&nbsp;</strong><asp:DropDownList ID="TipoDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" Width="87px" style="margin-left: 0px">
                    <asp:ListItem Value="1">Casa</asp:ListItem>
                    <asp:ListItem Value="2">Celular</asp:ListItem>
                    <asp:ListItem Value="3">Trabajo</asp:ListItem>
                    <asp:ListItem Value="4">Otro</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-right">
                <asp:Button ID="AgregarButton" runat="server" Class="btn-primary" OnClick="AgregarButton_Click" Text="Agregar" Width="75px" />
            </td>
        </tr>
    </table>      
    <table class="auto-style1">
        <tr>
            <td class="auto-style25"><strong>Telefonos:</strong></td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style27">
                <asp:GridView ID="telefonosGridView" runat="server" AutoGenerateColumns="False" Height="101px" Width="286px" >
                    <Columns>
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="Numero" HeaderText="Numero" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="text-right"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style27">
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

