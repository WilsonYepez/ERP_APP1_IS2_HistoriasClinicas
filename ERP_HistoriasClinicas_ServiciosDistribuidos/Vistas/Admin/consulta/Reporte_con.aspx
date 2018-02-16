<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Reporte_con.aspx.cs" Inherits="Vistas_Admin_consulta_Reporte_con" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <form id="hola">
    <center>
    <table style="align-content:center; width:1100px" border="1"  >
        <tr>
            <td>INDICACIONES</td>
            <td>MEDICAMENTOS</td>
        </tr>
        <tr >
            <td rowspan="3" style="height:500px"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="height:300px"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="height:50px">OBSERVACIONES</td>

        </tr>
        <tr>
            <td style="height:150px"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
        </center>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

