<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Vistas_Admin_user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="Button3" runat="server" Height="300px" Text="<h1><br><span class='glyphicon glyphicon-plus' ></span><br>Agregar<br>PRYW</h1>" Width="233px" CssClass="btn btn-info" BackColor="#3C8DBC" OnClick="Button3_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="Button4" runat="server" Height="300px" Text="<h1><br><span class='glyphicon glyphicon-plus'></span><br>Listar<br>PRYW</h1>" Width="233px" CssClass="btn btn-info " BackColor="#3C8DBC" OnClick="Button4_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="Button5" runat="server" Height="300px" Text="<h1><br><span class='glyphicon glyphicon-plus' ></span><br>Modificar<br>PRYW</h1>" Width="233px" CssClass="btn btn-info" BackColor="#3C8DBC"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

