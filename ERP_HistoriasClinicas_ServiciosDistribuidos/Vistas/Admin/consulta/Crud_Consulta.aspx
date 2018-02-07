<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_Consulta.aspx.cs" Inherits="Vistas_Admin_consulta_Crud_Consulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Control de Consultas</h1>

    <asp:GridView ID="GridView1" runat="server" DatakeyNames="ID_DET" AutoGenerateColumns="false" OnRowDeleting="GridView1_RowDeleting">
        <columns>
            <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("ID_DET")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcedu" runat="server" Text='<%#Bind("ID_DET")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="CÓDIGO DE CONSULTA">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("ID_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnom" runat="server" Text='<%#Bind("ID_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="CANTIDAD">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Bind("CANTIDAD_DET")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfech" runat="server" Text='<%#Bind("CANTIDAD_DET")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="PRECIO">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Bind("PVP_DET")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnac" runat="server" Text='<%#Bind("PVP_DET")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="DIRECCIÓN">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Bind("CANTDES_DET")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("CANTDES_DET")%>'></asp:TextBox>
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

