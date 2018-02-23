<%@ Page Title="" Language="C#" MasterPageFile="../MasterAdmin.master" AutoEventWireup="true" CodeFile="Mod_User.aspx.cs" Inherits="Vistas_Admin_user_Mod_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>
    <asp:Label ID="Label1" runat="server" Text="Label">Modificar Usuario</asp:Label>
    </h1>
    <br />
    Cédula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:DropDownList AutoPostBack="True" ID="DropDownList66" Width="200px" runat="server" DataSourceID="SqlDataSource_Persona" DataTextField="NOMBRES_EMP" DataValueField="CEDULA_EMP" OnSelectedIndexChanged="Button1_Click" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_Persona" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString4 %>" SelectCommand="Select e.CEDULA_EMP,p.NOMBRES_EMP  From EMPLEADO e,PERSONA p where e.CEDULA_EMP=p.CEDULA_EMP">
        </asp:SqlDataSource>
    <br />
    Código de Área de Trabajo:&nbsp; <asp:DropDownList AutoPostBack="True" ID="DropDownList2" Width="200px" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_AREA" DataValueField="ID_AREA" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString4 %>" SelectCommand="SELECT [ID_AREA], [NOMBRE_AREA] FROM [AREA_TRABAJO]">
        </asp:SqlDataSource>
    <br />
    Cargo de Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="BODEGERO">BODEGERO</asp:ListItem>
            <asp:ListItem Value="CAJERO">CAJERO</asp:ListItem>
            <asp:ListItem Value="ADMINISTRADOR">ADMINISTRADOR</asp:ListItem>
            <asp:ListItem Value="MEDICO">MEDICO</asp:ListItem>
        </asp:DropDownList>
    <br />
    Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    Activo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>ACTIVO</asp:ListItem>
        <asp:ListItem>INACITVO</asp:ListItem>
    </asp:DropDownList>
    <br />
    País:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="drppais" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drppais_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    Provincia:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="drpprovincia" runat="server" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

