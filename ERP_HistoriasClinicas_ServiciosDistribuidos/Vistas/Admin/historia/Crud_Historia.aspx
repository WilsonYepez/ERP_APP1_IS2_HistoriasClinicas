<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_Historia.aspx.cs" Inherits="Vistas_Admin_historia_Crud_Historia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h3>HISTORIA CLÍNICA</h3>
    <p>Elija el paciente:<asp:DropDownList AutoPostBack="True" ID="DropDownList66" Width="200px" runat="server" DataSourceID="SqlDataSource_Persona" DataTextField="NOMBRES_EMP" DataValueField="CEDULA_EMP" OnSelectedIndexChanged="ADD_Historia_Click" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_Persona" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString4 %>" SelectCommand="Select h.CEDULA_EMP,p.NOMBRES_EMP  From HISTORIAS h, PERSONA p where h.CEDULA_EMP=p.CEDULA_EMP ">
        </asp:SqlDataSource>
&nbsp;</p>
    <p>Cedula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p>Nombre Padre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vivo?:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Causas:&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;</p>
    <p>Nombre Madre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Viva?:&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Causas:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;</p>
    <p>Número de Hijos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vivos:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Muertos:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; causas:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
    </p>
    
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
    <p>
        Número de Hermanos:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; Vivos:&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp; Muertos:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; causas:&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
        &nbsp;
    </p>
    <p>
        Consume&nbsp;&nbsp;&nbsp;&nbsp; ALCOHOL:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
        &nbsp;
&nbsp;&nbsp;&nbsp; FRECUENCIA:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Consume&nbsp;&nbsp;&nbsp;&nbsp; DROGA:&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; FRECUENCIA:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Consume&nbsp;&nbsp;&nbsp;&nbsp; TABACO:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; FRECUENCIA:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
        &nbsp;
    </p>
    <p>
        ALIMENTACION:
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="133px" Width="527px"></asp:TextBox>
    </p>
    <p>
        DIPSIA:&nbsp;&nbsp;
        <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; PARADIPSIA:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; FRECUENCIA:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        INSOMNIO:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;FRECUENCIA:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        OTRO:</p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Height="174px" Width="521px"></asp:TextBox>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

