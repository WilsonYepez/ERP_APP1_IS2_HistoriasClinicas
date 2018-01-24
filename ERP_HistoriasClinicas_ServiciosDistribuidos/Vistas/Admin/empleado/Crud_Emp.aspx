<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_Emp.aspx.cs" Inherits="Vistas_Admin_empleado_Crud_Emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h3>CRUD PERSONAS</h3>
    Cedula: 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br>
    Nombres: 
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br>
    Fecha Nacimineto: <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <br>
    Nacionalidad:
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br>
    Dirección:
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br>
    Telefono:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    Email:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    Estado Civil: <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="SOLTERO">SOLTERO</asp:ListItem>
            <asp:ListItem Value="CASADO">CASADO</asp:ListItem>
            <asp:ListItem Value="DIVORCIADO">DIVORCIADO</asp:ListItem>
            <asp:ListItem Value="UNION LIBRE">UNION LIBRE</asp:ListItem>
    </asp:DropDownList>
    <br />
    Tipo:
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
    Ciudadania: <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
&nbsp;<br>
    <asp:Button ID="ADD_PERSONA" runat="server" Text="Agregar" OnClick="ADD_PERSONA_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

