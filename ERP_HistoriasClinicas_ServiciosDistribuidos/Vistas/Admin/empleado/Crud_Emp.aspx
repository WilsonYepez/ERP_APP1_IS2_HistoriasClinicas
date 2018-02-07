<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_Emp.aspx.cs" Inherits="Vistas_Admin_empleado_Crud_Emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h3>CONTROL DE PERSONAS</h3>
    
    <asp:GridView ID="GridView1" runat="server" 
        OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowDeleting="GridView1_RowDeleting" 
        OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating"
        DatakeyNames="CEDULA_EMP" AutoGenerateColumns="false"
        >
        <columns>
            <asp:TemplateField HeaderText="CEDULA">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("CEDULA_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcedu" runat="server" Text='<%#Bind("CEDULA_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="NOMBRES">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("NOMBRES_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnom" runat="server" Text='<%#Bind("NOMBRES_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="DIRECCIÓN">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Bind("DIRECCIO_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdic" runat="server" Text='<%#Bind("DIRECCIO_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="TELEFONO">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#Bind("TELEFONO_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txttel" runat="server" Text='<%#Bind("TELEFONO_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="E-MAIL">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%#Bind("EMAIL_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" runat="server" Text='<%#Bind("EMAIL_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="CIUDADANIA">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%#Bind("CIUDADNACI_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtciu" runat="server" Text='<%#Bind("CIUDADNACI_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:CommandField ButtonType="Link" ShowDeleteButton="true"/>

        </columns>

    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

