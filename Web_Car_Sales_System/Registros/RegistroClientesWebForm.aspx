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
                width: 409px;
                height: 45px;
            }
            .auto-style53 {
                height: 45px;
            }
            .auto-style56 {
        width: 99%;
        height: 28px;
    }
    .auto-style57 {
        text-align: right;
        width: 339px;
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
                <asp:TextBox ID="ClienteIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="ClienteId*" MaxLength="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ClienteIdTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Id" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Buscar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ClienteIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ClienteIdTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Id" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Eliminar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ClienteIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Eliminar">*</asp:RegularExpressionValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ClienteIdTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
                <strong>
                <asp:Button ID="BuscarButton" Class="btn btn-default" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" ValidationGroup="Buscar"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style35"><strong>Nombre Completo:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreCompletoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre Completo*" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NombreCompletoTextBox" ErrorMessage="Debe Insertar un Nombre" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="NombreCompletoTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de Usuario*" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="Debe Insertar un Nombre de Usuario" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
			    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="*Ingrese Solo Letras y Numeros" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style36"><strong>Contraseña:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ContraseñaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*" MaxLength="40"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ContraseñaTextBox" ErrorMessage="Debe Insertar una Contraseña" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
				                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="ContraseñaTextBox" ErrorMessage="*Ingrese Solo Letras y Numeros" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Repetir Contraseña:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="RepetirTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Repetir Contraseña*" MaxLength="40"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RepetirTextBox" ErrorMessage="Repita la Contraseña" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="RepetirTextBox" ErrorMessage="*Ingrese Solo Letras y Numeros" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Dirección:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="DireccionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Dirección*" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Debe Insertar una Direccion" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="*Ingrese Solo Letras y Numeros" ValidationExpression="[0-9 A-Za-z]+$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style36"><strong>Cedula:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="CedulaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Cedula*" MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="CedulaTextBox" EnableTheming="False" ErrorMessage="Debe insertar una cedula" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Nacionalidad:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NacionalidadTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nacionalidad*" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NacionalidadTextBox" ErrorMessage="Debe Insertar una Nacionalidad" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="NacionalidadTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>Lugar de Nacimiento:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NacimientoTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Lugar de Nacimiento*" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="NacimientoTextBox" ErrorMessage="Debe Insertar un Lugar de Nacimiento" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="NacimientoTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style51"><strong>Ocupación:</strong></td>
            <td class="auto-style52">
                <asp:TextBox ID="OcupacionTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Ocupación*" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="OcupacionTextBox" ErrorMessage="Debe Insertar una Ocupacion" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="OcupacionTextBox" ErrorMessage="*Ingrese Solo Letras"  ValidationExpression="^[A-Za-z]*$" ValidationGroup="Guardar">*</asp:RegularExpressionValidator>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="SexoDropDownList" InitialValue="Seleccionar--" ErrorMessage="Debe Seleccionar uno" ForeColor="Red" ValidationGroup="Guardar">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style51"><strong>Telefono:</strong></td>
            <td class="auto-style52">
                <table class="auto-style56">
                    <tr>
                        <td class="auto-style49">
                            <asp:TextBox ID="TelefonoTextBox" CssClass="form-control" runat="server" Width="100px" placeholder="Telefono*" MaxLength="12"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TelefonoTextBox" EnableTheming="False" ErrorMessage="Debe insertar un Telefono" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Agregar">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="*Ingrese Valores Numericos" ValidationExpression="^[0-9]*" ValidationGroup="Agregar">*</asp:RegularExpressionValidator>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TipoDropDownList" InitialValue="Seleccionar--" ErrorMessage="Debe Seleccionar uno" ForeColor="Red" ValidationGroup="Agregar">*</asp:RequiredFieldValidator>
                            <asp:Button ID="AgregarButton" runat="server" Class="btn btn-warning" OnClick="AgregarButton_Click" Text="Agregar" Width="100px" ValidationGroup="Agregar" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
    </table>    
    <table class="auto-style1">
        <tr>
            <td class="auto-style57"><strong>Telefonos:</strong></td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style57"></td>
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
            <td class="auto-style57"></td>
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

