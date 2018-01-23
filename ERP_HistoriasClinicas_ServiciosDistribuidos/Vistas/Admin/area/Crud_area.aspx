<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_area.aspx.cs" Inherits="Vistas_Admin_area_Crud_area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_AREA" DataSourceID="area">
    <Columns>
        <asp:BoundField DataField="ID_AREA" HeaderText="ID_AREA" InsertVisible="False" ReadOnly="True" SortExpression="ID_AREA" />
        <asp:BoundField DataField="NOMBRE_AREA" HeaderText="NOMBRE_AREA" SortExpression="NOMBRE_AREA" />
        <asp:BoundField DataField="GERENCIA_AREA" HeaderText="GERENCIA_AREA" SortExpression="GERENCIA_AREA" />
        <asp:BoundField DataField="DESCRIPCION_AREA" HeaderText="DESCRIPCION_AREA" SortExpression="DESCRIPCION_AREA" />
        <asp:BoundField DataField="ESTADO_AREA" HeaderText="ESTADO_AREA" SortExpression="ESTADO_AREA" />
        <asp:CommandField ShowDeleteButton="True"/>
        <asp:CommandField ShowEditButton="True"/>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="area" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString %>" SelectCommand="SELECT * FROM [AREA_TRABAJO]"></asp:SqlDataSource>

    <asp:Image ID="Image1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
    <asp:Label ID="nombre" runat="server" Text="Label"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

