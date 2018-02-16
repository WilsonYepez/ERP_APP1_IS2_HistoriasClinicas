<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Mod_Emp.aspx.cs" Inherits="Vistas_Admin_empleado_Mod_Emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>
        <asp:Label ID="Label1" runat="server" Text="Label">Modificar Empleado</asp:Label>
    </h1>
    <p>
        &nbsp;</p>

Cédula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList AutoPostBack="True" ID="DropDownList66" Width="200px" runat="server" DataSourceID="SqlDataSource_Persona" DataTextField="NOMBRES_EMP" DataValueField="CEDULA_EMP" OnSelectedIndexChanged="ADD_PERSONA_Click" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_Persona" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString4 %>" SelectCommand="Select CEDULA_EMP,NOMBRES_EMP  From PERSONA ">
        </asp:SqlDataSource>
    <br>
    Nombres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="GruposoloLetras"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Error solo Letras Mayúsculas" Font-Bold="true" SetFocusOnError="true" ValidationExpression="([A-Z]|\ )+" ValidationGroup="GruposoloLetras"></asp:RegularExpressionValidator>
    <br>
    Fecha Nacimiento: <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" CellPadding="1" DayNameFormat="Shortest" OnSelectionChanged="validaFecha">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <br>
    Nacionalidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="GruposoloLetras"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Error Solo Letras" Font-Bold="true" SetFocusOnError="true" ValidationExpression="([a-zA-z]|\ )+" ValidationGroup="GruposoloLetras"></asp:RegularExpressionValidator>
    <br>
    Dirección:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br>
    Teléfono:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="GrupoTelefonos"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Requiere Un Numero de Telefono de entre 6 a 15 digitos" Font-Bold="true" SetFocusOnError="true" ValidationExpression="[0-9]{6,15}" ValidationGroup="GrupoTelefonos"></asp:RegularExpressionValidator>
    <br />
    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="GrupoCorreo"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Requiere Correo" Font-Bold="true" SetFocusOnError="true" ValidationExpression="[a-z0-9]+\@[a-z0-9]+(\.[a-z]{2,3})+" ValidationGroup="GrupoCorreo"></asp:RegularExpressionValidator>
    <br />
    Estado Civil:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="SOLTERO">SOLTERO</asp:ListItem>
            <asp:ListItem Value="CASADO">CASADO</asp:ListItem>
            <asp:ListItem Value="DIVORCIADO">DIVORCIADO</asp:ListItem>
            <asp:ListItem Value="UNION LIBRE">UNION LIBRE</asp:ListItem>
    </asp:DropDownList>
    <br />
    Tipo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Value="O+">O+</asp:ListItem>
            <asp:ListItem Value="O-">O-</asp:ListItem>
        <asp:ListItem Value="A+">A-</asp:ListItem>
            <asp:ListItem Value="B-">B-</asp:ListItem>
            <asp:ListItem Value="AB-">AB-</asp:ListItem>
            <asp:ListItem Value="AB+">AB+</asp:ListItem>
            <asp:ListItem Value="A+">A+</asp:ListItem>
            <asp:ListItem Value="B+">B+</asp:ListItem>
    </asp:DropDownList>
    <br>
    Ciudadania:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="GruposoloLetras"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Error Solo Letras" Font-Bold="true" SetFocusOnError="true" ValidationExpression="([a-zA-z]|\ )+" ValidationGroup="GruposoloLetras"></asp:RegularExpressionValidator>
    <br>
&nbsp;<br>
    <asp:Button ID="ADD_PERSONA" runat="server" Text="Agregar" OnClick="Button1_Click" />
    <br>
    <br>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

