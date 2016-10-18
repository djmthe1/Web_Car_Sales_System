﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="RegistroUsuariosWebForm.aspx.cs" Inherits="Web_Car_Sales_System.Registros.RegistroUsuariosWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 128px;
        }
        .auto-style3 {
            text-align: right;
            width: 290px;
        }
        .auto-style4 {
            text-align: right;
            width: 293px;
        }
        .auto-style8 {
            text-align: left;
            width: 290px;
        }
        .auto-style9 {
            text-align: left;
            width: 293px;
        }
        .auto-style10 {
            width: 288px;
        }
        .auto-style11 {
            width: 314px
        }
        .auto-style12 {
            width: 314px;
            text-align: center;
        }
        .auto-style13 {
            width: 288px;
            text-align: right;
        }
        .auto-style15 {
            width: 291px;
        }
        .auto-style16 {
            width: 310px
        }
        .auto-style17 {
            font-weight: bold;
        }
        .auto-style18 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"><strong>UsuarioId:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="UsuarioIdTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="UsuarioId*"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <strong>
                <asp:Button ID="BuscarButton" Class="btn-primary" runat="server" Text="Buscar" Width="80px" OnClick="BuscarButton_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Nombre:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="NombreTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Nombre de Usuario:</strong></td>
            <td class="auto-style4">
              <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Nombre de usuario*"></asp:TextBox>
            </td>
            <td class="text-right">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"><strong>Contraseña:</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="ContraseñaTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Contraseña*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Confirmar Contraseña:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="ConfirmarTextBox" CssClass="form-control" runat="server" Width="285px" placeholder="Repetir contraseña*"></asp:TextBox>
            </td>
            <td class="text-right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <strong>Prioridad:</strong></td>
            <td class="auto-style8">
                <asp:DropDownList ID="PrioridadDropDownList" Class="form-control input-sm" runat="server" CssClass="col-xs-offset-0" Height="20px" Width="200px">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                    <asp:ListItem Value="2">Usuario</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-left">
                &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">
                <strong>
                <asp:Button ID="NuevoButton" Class="btn-primary" runat="server" Text="Nuevo" Width="80px" OnClick="NuevoButton_Click"/>
                </strong>
            </td>
            <td class="auto-style12">
                <strong>
                <asp:Button ID="GuardarButton" Class="btn-primary" runat="server" Text="Guardar" Width="80px" OnClick="GuardarButton_Click"/>
                </strong>
            </td>
            <td>    
                <strong>    
                <asp:Button ID="EliminarButton" Class="btn-primary" runat="server" Text="Eliminar" Width="80px" OnClick="EliminarButton_Click"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">    

            </td>
            <td class="auto-style11">    

            </td>
            <td>    

            </td>
        </tr><tr>
            <td class="auto-style10">    

            </td>
            <td class="auto-style11">    

            </td>
            <td>    

            </td>
        </tr>
    </table>
</asp:Content>
