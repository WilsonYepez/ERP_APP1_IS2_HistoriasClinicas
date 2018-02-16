<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_Consulta.aspx.cs" Inherits="Vistas_Admin_consulta_Crud_Consulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Control de Consultas</h1>

    <asp:GridView ID="GridView1" runat="server" DatakeyNames="ID_CON" AutoGenerateColumns="false" OnRowDeleting="GridView1_RowDeleting">
        <columns>
            <asp:TemplateField HeaderText="CÓDIGO CONSULTA">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("ID_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtid" runat="server" Text='<%#Bind("ID_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="CÉDULA">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("CEDULA_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfech" runat="server" Text='<%#Bind("CEDULA_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="INDICACIONES">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Bind("INDICACIONES_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnac" runat="server" Text='<%#Bind("INDICACIONES_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="MOTIVO">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Bind("MOTIVO_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("MOTIVO_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="PRESIÓN">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Bind("PRESION_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("PRESION_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="FECHA">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#Bind("FECHA_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("FECHA_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="PESO">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%#Bind("PESO_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("PESO_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="TEMPERATURA">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%#Bind("TEMPERATURA_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("TEMPERATURA_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="SINTOMAS">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%#Bind("SINTOMAS_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("SINTOMAS_CON")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="OBSERVACIONES">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%#Bind("OBSERVACIONES_CON")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("OBSERVACIONES_CON")%>'></asp:TextBox>
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

