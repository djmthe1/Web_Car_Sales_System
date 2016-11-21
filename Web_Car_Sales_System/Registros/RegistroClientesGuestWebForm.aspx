<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroClientesGuestWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroClientesGuestWebForm" %>
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
            text-align: right;
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
                width: 341px
            }
            .auto-style27 {
                text-align: left;
                width: 290px;
            }
            .auto-style35 {
                text-align: right;
                width: 341px;
            }
            .auto-style36 {
                text-align: right;
                width: 340px;
            }
            .auto-style49 {
                width: 120px;
                text-align: left;
            }
            .auto-style50 {
                text-align: right;
                width: 40px;
            }
            .auto-style51 {
                text-align: right;
                width: 340px;
                height: 45px;
            }
            .auto-style52 {
                text-align: left;
                width: 408px;
                height: 45px;
            }
            .auto-style53 {
                height: 45px;
            }
            .auto-style56 {
                width: 99%;
                height: 28px;
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
            <td class="auto-style35"><strong>ClienteId:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ClienteIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="ClienteId*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"><strong>Nombre Completo:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreCompletoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre Completo*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de Usuario*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style36"><strong>Contraseña:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ContraseñaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Repetir Contraseña:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="RepetirTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Repetir Contraseña*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Dirección:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="DireccionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Dirección*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style36"><strong>Cedula:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="CedulaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Cedula*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Nacionalidad:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NacionalidadTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nacionalidad*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Lugar de Nacimiento:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NacimientoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Lugar de Nacimiento*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style51"><strong>Ocupación:</strong></td>
            <td class="auto-style52">
                <asp:TextBox ID="OcupacionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Ocupación*"></asp:TextBox>
            </td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style51"><strong>Sexo:</strong></td>
            <td class="auto-style52">
                <asp:DropDownList ID="SexoDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Height="34px" style="margin-left: 0px" Width="285px">
                    <asp:ListItem Value="0">Seleccione--</asp:ListItem>
                    <asp:ListItem Value="1">Masculino</asp:ListItem>
                    <asp:ListItem Value="2">Femenino</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style51"><strong>Telefono:</strong></td>
            <td class="auto-style52">
                <table class="auto-style56">
                    <tr>
                        <td class="auto-style49">
             <asp:TextBox ID="TelefonoTextBox" CssClass="form-control" runat="server" Width="100px" placeholder="Telefono*"></asp:TextBox>
                        </td>
                        <td class="auto-style50">
             <strong>Tipo:</strong></td>
                        <td>
                <asp:DropDownList ID="TipoDropDownList" runat="server" Class="form-control input-sm" CssClass="col-xs-offset-0" Width="125px" style="margin-left: 0px" Height="35px">
                    <asp:ListItem Value="0">Seleccione--</asp:ListItem>
                    <asp:ListItem Value="1">Casa</asp:ListItem>
                    <asp:ListItem Value="2">Celular</asp:ListItem>
                    <asp:ListItem Value="3">Trabajo</asp:ListItem>
                    <asp:ListItem Value="4">Otro</asp:ListItem>
                </asp:DropDownList>
                            <asp:Button ID="AgregarButton" runat="server" Class="btn btn-warning" OnClick="AgregarButton_Click" Text="Agregar" Width="100px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
    </table>    
    <table class="auto-style1">
        <tr>
            <td class="auto-style36"><strong>Telefonos:</strong></td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
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
            <td class="auto-style36"></td>
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
                <asp:Button ID="NuevoButton" Class="btn btn-info" runat="server" Text="Nuevo" Width="100px" OnClick="NuevoButton_Click"/>
                </strong>
            </td>
            <td class="auto-style12">
                <strong>
                <asp:Button ID="GuardarButton" Class="btn btn-success" runat="server" Text="Guardar" Width="100px" OnClick="GuardarButton_Click"/>
                </strong>
            </td>
            <td> 
                &nbsp;</td>
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

