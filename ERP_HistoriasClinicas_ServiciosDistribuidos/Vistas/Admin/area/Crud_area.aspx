<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_area.aspx.cs" Inherits="Vistas_Admin_area_Crud_area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <h1>Listado de Áreas de Trabajo</h1>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Label">Ingrese Nombre</asp:Label>
&nbsp;<asp:TextBox ID="nom_bus" runat="server" Width="256px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click2" />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table-responsive" DataKeyNames="ID_AREA" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" AllowPaging="True" OnDataBinding="Page_Load" OnDataBound="Page_Load" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="ID_AREA" InsertVisible="False" SortExpression="ID_AREA">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID_AREA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NOMBRE_AREA" SortExpression="NOMBRE_AREA">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("NOMBRE_AREA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GERENCIA_AREA" SortExpression="GERENCIA_AREA">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("GERENCIA_AREA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DESCRIPCION_AREA" SortExpression="DESCRIPCION_AREA">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("DESCRIPCION_AREA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ESTADO_AREA" SortExpression="ESTADO_AREA">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ESTADO_AREA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="AREA" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString2 %>" 
        SelectCommand="SELECT * FROM [AREA_TRABAJO]" UpdateCommand="UPDATE AREA_TRABAJO SET NOMBRE_AREA = @NOMBRE_AREA, GERENCIA_AREA = @GERENCIA_AREA, DESCRIPCION_AREA = @DESCRIPCION_AREA, ESTADO_AREA = @ESTADO_AREA WHERE (ID_AREA = @ID_AREA)" DeleteCommand="DELETE FROM AREA_TRABAJO WHERE (ID_AREA = @ID_AREA)" ></asp:SqlDataSource>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

