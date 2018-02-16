<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Listado_area.aspx.cs" Inherits="Vistas_Admin_area_Listado_area" %>

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

    <asp:GridView ID="GridView1" runat="server" DatakeyNames="ID_AREA" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
        <columns>
            <asp:TemplateField HeaderText="CÓDIGO DE ÁREA">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("ID_AREA")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtid" runat="server" Text='<%#Bind("ID_AREA")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="NOMBRE DE ÁREA">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("NOMBRE_AREA")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfech" runat="server" Text='<%#Bind("NOMBRE_AREA")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="NOMBRE DE LA GERENCIA">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Bind("GERENCIA_AREA")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnac" runat="server" Text='<%#Bind("GERENCIA_AREA")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="DESCRIPCIÓN">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Bind("DESCRIPCION_AREA")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("DESCRIPCION_AREA")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="ESTADO">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Bind("ESTADO_AREA")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("ESTADO_AREA")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:CommandField ButtonType="Link" ShowDeleteButton="true"/>
        </columns>

    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

