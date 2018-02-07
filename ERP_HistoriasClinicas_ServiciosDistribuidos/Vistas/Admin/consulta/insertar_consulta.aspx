<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="insertar_consulta.aspx.cs" Inherits="Vistas_Admin_consulta_insertar_consulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
    <asp:Label ID="IDConsulta" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Cantidad" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Precio de Venta" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Cantidad de descuento" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>


    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Insertar" />


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

