<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaVehiculosWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Consultas.ConsultaVehiculosWebForm" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 128px;
        }
        .auto-style16 {
            width: 310px
        }
        .auto-style19 {
        width: 310px;
        text-decoration: underline;
        text-align: center;
        font-size: x-large;
        }
        .auto-style25 {
            width: 315px
        }
            .auto-style26 {
            width: 296px;
            text-align: right;
        }
        .auto-style27 {
            width: 315px;
            text-align: right;
        }
            .auto-style28 {
            width: 296px;
            text-decoration: underline;
            text-align: center;
            font-size: x-large;
        }
        .auto-style29 {
            width: 175px
        }
        .auto-style30 {
            width: 422px
        }
        .auto-style31 {
            width: 422px;
            text-decoration: underline;
            text-align: center;
            font-size: x-large;
        }
            .auto-style32 {
            width: 302px
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
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style28"><strong>Consulta de Vehiculos</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">Buscar Por:<asp:DropDownList ID="BuscarPorDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="40px" Width="150px" style="margin-left: 0px">
                <asp:ListItem>VehiculoId</asp:ListItem>
                <asp:ListItem>EstadoVehiculo</asp:ListItem>
                <asp:ListItem>MarcaId</asp:ListItem>
                <asp:ListItem>ModeloId</asp:ListItem>
                <asp:ListItem>MotorId</asp:ListItem>
                <asp:ListItem>ColorId</asp:ListItem>
                <asp:ListItem>Año</asp:ListItem>
                <asp:ListItem>NoChasis</asp:ListItem>
                <asp:ListItem>TipoVehiculoId</asp:ListItem>
                <asp:ListItem>Kilometraje</asp:ListItem>
                <asp:ListItem>Precio</asp:ListItem>
                <asp:ListItem>Placa</asp:ListItem>
                <asp:ListItem>Matricula</asp:ListItem>
                <asp:ListItem>Vendido</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Filtro"></asp:TextBox>
            </td>
            <td>
                <strong>
                <asp:Button ID="BuscarButton" Class="btn btn-success" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">Filtral por Año:<asp:CheckBox ID="AñoCheckBox" runat="server" Text="" />
            </td>
            <td class="auto-style26">
                Desde: &nbsp;<asp:TextBox ID="DesdeTextBox" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hasta:</td>
            <td>
                <asp:TextBox ID="HastaTextBox" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style30">
                <asp:Repeater ID="VehiculosRepeater" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width:50px">
                                    <table>
                                        <tr>
                                            <td>
                                                <b>Id:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="IdLabel" runat="server" Text='<%#Eval("VehiculoId")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Estado:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="EstadoLabel" runat="server" Text='<%#Eval("EstadoVehiculo") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Marca:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="MarcaLabel" runat="server" Text='<%#Eval("Marca")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Modelo:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="ModeloLabel" runat="server" Text='<%#Eval("Modelo")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Motor:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="MotorLabel" runat="server" Text='<%#Eval("Motor")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Color:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="ColorLabel" runat="server" Text='<%#Eval("Color")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Año:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="AñoLabel" runat="server" Text='<%#Eval("Año") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>NoChasis:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="NoChasisLabel" runat="server" Text='<%#Eval("NoChasis") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Tipo de Vehiculo:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="TipoVehiculoLabel" runat="server" Text='<%#Eval("TipoVehiculo")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Kilometraje:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="KilometrajeLabel" runat="server" Text='<%#Eval("Kilometraje") %>'> ></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Precio:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="PrecioLabel" runat="server" Text='<%#Eval("Precio") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Placa:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="PlacaLabel" runat="server" Text='<%#Eval("Placa") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Matricula:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="MatriculaLabel" runat="server" Text='<%#Eval("Matricula") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>--------------------------------</tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
            </asp:Repeater>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="ImprimirButton" Class="btn btn-warning" runat="server" Text="Imprimir" Width="100px" OnClick="ImprimirButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>