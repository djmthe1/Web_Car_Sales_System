<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaMotoresWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Consultas.ConsultaMotoresWebForm" EnableEventValidation="false" %>
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
            text-align: left;
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
            width: 173px
        }
        .auto-style30 {
            width: 441px
        }
        .auto-style31 {
            width: 441px;
            text-decoration: underline;
            text-align: center;
            font-size: x-large;
        }
            .auto-style32 {
            width: 304px
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
            <td class="auto-style28"><strong>Consulta de Motores</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style28"></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">Buscar Por:<asp:DropDownList ID="BuscarPorDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="40px" Width="150px" style="margin-left: 0px">
                <asp:ListItem>MotorId</asp:ListItem>
                <asp:ListItem>Descripcion</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Filtro"></asp:TextBox>
            </td>
            <td>
                <strong>
                <asp:Button ID="BuscarButton" Class="btn btn-success" runat="server" Text="Buscar" Width="100px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
    </table>
        <table class="auto-style1">
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style30">
                <asp:GridView ID="ConsultaGridView" runat="server" Width="438px">
                </asp:GridView>
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