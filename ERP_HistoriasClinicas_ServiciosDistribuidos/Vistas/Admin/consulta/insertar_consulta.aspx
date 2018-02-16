<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="insertar_consulta.aspx.cs" Inherits="Vistas_Admin_consulta_insertar_consulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <div>
        <h1><asp:Label ID="Label1" runat="server" Text="Nueva Consulta"></asp:Label></h1>
    </div>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">

    Nombre del Paciente:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList AutoPostBack="True" ID="DropDownList1" Width="200px" runat="server" DataSourceID="SqlDataSource_Persona" DataTextField="NOMBRES_EMP" DataValueField="CEDULA_EMP"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_Persona" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString4 %>" SelectCommand="Select h.CEDULA_EMP, p.NOMBRES_EMP From HISTORIAS h, PERSONA p where p.CEDULA_EMP=h.CEDULA_EMP">
            </asp:SqlDataSource>
    <br />
    Receta:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Height="49px" Width="383px"></asp:TextBox>
    <br />
    Receta:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Height="49px" Width="383px"></asp:TextBox>
    <br />
    Presión:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="GrupoTelefonos"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="La presion debe esta registrada entre los numeros 10 y 999" Font-Bold="true" SetFocusOnError="true" ValidationExpression="[0-9]{2,3}" ValidationGroup="GrupoTelefonos"></asp:RegularExpressionValidator>
    <br />
    Fecha:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    Peso:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="Grupopeso"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="El peso es medido en kg desde 10 a 999" Font-Bold="true" SetFocusOnError="true" ValidationExpression="[0-9]{2,3}" ValidationGroup="Grupopeso"></asp:RegularExpressionValidator>
    <br />
    Temperatura:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="Grupotemp"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="La temperatuda sera medida en grados Centigrados desde 20 a 49" Font-Bold="true" SetFocusOnError="true" ValidationExpression="[2-4][0-9]" ValidationGroup="Grupotemp"></asp:RegularExpressionValidator>
    <br />
    Sintomas:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" Height="49px" Width="383px"></asp:TextBox>
    <br />
    Observaciones:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server" Height="49px" Width="383px"></asp:TextBox>

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

