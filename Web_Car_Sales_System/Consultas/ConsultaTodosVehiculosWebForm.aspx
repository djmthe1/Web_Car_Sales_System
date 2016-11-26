<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaTodosVehiculosWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Consultas.ConsultaTodosVehiculosWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 120px;
        }
        .auto-style2 {
            width: 439px;
        }
        .auto-style4 {
            width: 439px;
            font-size: xx-large;
            text-align: center;
            text-decoration: underline;
        }
        .auto-style5 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style6 {
            width: 194px;
        }
        .auto-style8 {
            font-size: xx-large;
            text-align: center;
            width: 182px;
        }
        .auto-style9 {
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4"><strong><em>Todos los Vehiculos</em></strong></td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="VehiculosDataList" runat="server" GridLines="Vertical" RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width:50px">
                                    <table>
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
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
            </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
