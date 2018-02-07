<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="insertar_consulta.aspx.cs" Inherits="Vistas_Admin_consulta_insertar_consulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <div>
        <h1><asp:Label ID="Label1" runat="server" Text="Nueva Consulta"></asp:Label></h1>
    </div>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
    <asp:Label ID="ID_con" runat="server" Text="ID Consulta"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Cantidad" runat="server" Text="Cantidad"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="pvp" runat="server" Text="Precio de Venta"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Cantidaddes" runat="server" Text="Cantidad de Descuento"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>


    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Insertar" OnClick="Button1_Click" />
      <br />
        <br /><h1>
        <asp:Label ID="mensaje" runat="server" Text=""></asp:Label>
            </h1>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

