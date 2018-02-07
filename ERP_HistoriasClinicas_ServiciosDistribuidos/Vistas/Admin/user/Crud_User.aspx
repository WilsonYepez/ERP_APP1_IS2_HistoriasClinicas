<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_User.aspx.cs" Inherits="Vistas_Admin_user_Crud_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container">
        <h3>AGREGAR  USUARIOS</h3>
        </div>
    <div class="thumbnail">
        Valor a buscar : <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        <asp:Button ID="search_btn_User" runat="server" Text="Agregar" OnClick="search_btn_User_Click" /><br><br>
        <br>

        <asp:GridView ID="GridView1" runat="server" 
            OnRowCancelingEdit="rowCancelEvent" 
            OnRowDeleting="rowDeletingEvent" 
            OnRowEditing="rowEditingEvent" 
            OnRowUpdating="rowUpdatingEvent" 
              
            DataKeyNames="CEDULA_EMP" AutoGenerateColumns="false">

            <Columns>
                <asp:TemplateField HeaderText=" CEDULA ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#WebService.Nombreemp(Bind("CEDULA_EMP")) %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcedu" runat="server" Text='<%#Bind("CEDULA_EMP")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText=" CÓDIGO DE AREA ">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("ID_AREA")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtarea" runat="server" Text='<%#Bind("ID_AREA")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText=" CARGO DE USUARIO ">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Bind("CARGO_US")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcargo" runat="server" Text='<%#Bind("CARGO_US")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText=" CONTRASEÑA ">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Bind("PASWORD_US")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpass" runat="server" Text='<%#Bind("PASWORD_US")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText=" ESTADO ">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Bind("ACTIVO_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="estado" runat="server" Text='<%#Bind("ACTIVO_EMP")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"/>
            </Columns>

        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

