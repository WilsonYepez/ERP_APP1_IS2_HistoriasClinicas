<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Insertar_User.aspx.cs" Inherits="Vistas_Admin_user_Crud_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container">
        <h3>AGREGAR  USUARIOS</h3>
        </div>
    <div class="thumbnail">
       Cédula: <asp:DropDownList AutoPostBack="True" ID="DropDownList2" Width="200px" runat="server" DataSourceID="SqlDataSource_Persona" DataTextField="CEDULA_EMP" DataValueField="CEDULA_EMP"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_Persona" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString4 %>" SelectCommand="Select CEDULA_EMP From PERSONA where Not CEDULA_EMP In (Select CEDULA_EMP From EMPLEADO)">
        </asp:SqlDataSource>
        <br>
       Área de Trabajo:
        <asp:DropDownList AutoPostBack="True" ID="DropDownList1" runat="server" Width="200px" DataSourceID="SqlDataSource_Areas" DataTextField="NOMBRE_AREA" DataValueField="ID_AREA"></asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource_Areas" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString3 %>" SelectCommand="SELECT [NOMBRE_AREA], [ID_AREA] FROM [AREA_TRABAJO] WHERE ([ESTADO_AREA] = 'ACTIVO')">
        </asp:SqlDataSource><BR>
        Cargo: <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="BODEGERO">BODEGERO</asp:ListItem>
            <asp:ListItem Value="CAJERO">CAJERO</asp:ListItem>
            <asp:ListItem Value="ADMINISTRADOR">ADMINISTRADOR</asp:ListItem>
            <asp:ListItem Value="MEDICO">MEDICO</asp:ListItem>
        </asp:DropDownList>
        <br>Password: <asp:TextBox TextMode="Password" ID="TextBox1" Placeholder="******" runat="server"></asp:TextBox><br><br>
        <asp:Button ID="ADD_btn_User" runat="server" Text="Agregar" OnClick="ADD_btn_User_Click" /><br><br>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

