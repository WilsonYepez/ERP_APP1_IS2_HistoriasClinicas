<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_User.aspx.cs" Inherits="Vistas_Admin_user_Crud_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container">
        <h3>CONTROL DE USUARIOS</h3>
        </div>
    <div class="thumbnail">
       Cédula: <asp:DropDownList AutoPostBack="True" ID="DropDownList2" Width="200px" runat="server" DataSourceID="SqlDataSource_Persona" DataTextField="CEDULA_EMP" DataValueField="CEDULA_EMP"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_Persona" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString4 %>" SelectCommand="Select CEDULA_EMP From PERSONA where Not CEDULA_EMP In (Select CEDULA_EMP From EMPLEADO) AND ACTIVO_EMP='ACTIVO'">
        </asp:SqlDataSource>
        <br>
       Área de Trabajo:
        <asp:DropDownList AutoPostBack="True" ID="DropDownList1" runat="server" Width="200px" DataSourceID="SqlDataSource_Areas" DataTextField="NOMBRE_AREA" DataValueField="ID_AREA"></asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource_Areas" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HistoriasClinicasConnectionString3 %>" SelectCommand="SELECT [NOMBRE_AREA], [ID_AREA] FROM [AREA_TRABAJO] WHERE ([ESTADO_AREA] = @ESTADO_AREA)">
            <SelectParameters>
                <asp:Parameter DefaultValue="ACTIVO" Name="ESTADO_AREA" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource><BR>
        Cargo: <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="CONSERJE">CONSERJE</asp:ListItem>
            <asp:ListItem Value="ENCARGADO">ENCARGADO</asp:ListItem>
            <asp:ListItem Value="ADMINISTRADOR">ADMINISTRADOR</asp:ListItem>
            <asp:ListItem Value="MEDICO">MEDICO</asp:ListItem>
        </asp:DropDownList>
        <br>Password: <asp:TextBox ID="TextBox1" Placeholder="******" runat="server"></asp:TextBox><br><br>
        <asp:Button ID="ADD_btn_User" runat="server" Text="Agregar" OnClick="ADD_btn_User_Click" /><br><br>

        <asp:GridView ID="GridView1" runat="server" 
            OnRowCancelingEdit="rowCancelEvent" 
            OnRowDeleting="rowDeletingEvent" 
            OnRowEditing="rowEditingEvent" 
            OnRowUpdating="rowUpdatingEvent" 
              
            DataKeyNames="CEDULA_EMP" AutoGenerateColumns="false">

            <Columns>
                <asp:TemplateField HeaderText="CEDULA">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("CEDULA_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcedu" runat="server" Text='<%#Bind("CEDULA_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="CÓDIGO DE AREA">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("ID_AREA")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtarea" runat="server" Text='<%#Bind("ID_AREA")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="CARGO DE USUARIO">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Bind("CARGO_US")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcargo" runat="server" Text='<%#Bind("CARGO_US")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="CONTRASEÑA">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Bind("PASWORD_US")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpass" runat="server" Text='<%#Bind("PASWORD_US")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="ESTADO">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Bind("ACTIVO_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtestado" runat="server" Text='<%#Bind("ACTIVO_EMP")%>'></asp:TextBox>
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

