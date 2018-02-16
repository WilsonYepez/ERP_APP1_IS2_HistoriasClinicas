<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_Historia.aspx.cs" Inherits="Vistas_Admin_historia_Crud_Historia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h3>HISTORIAS CLÍNICAS</h3>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="CEDULA_EMP">
        <columns>
            <asp:TemplateField HeaderText=" CEDULA ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("CEDULA_EMP") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcedu" runat="server" Text='<%#Bind("CEDULA_EMP")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText=" NOMBRE DEL PADRE ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("PADRE_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpadre" runat="server" Text='<%#Bind("PADRE_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText=" NOMBRE DE LA MADRE ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("MADRE_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtmadre" runat="server" Text='<%#Bind("MADRE_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText=" NUMERO DE HIJOS ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("NUM_H_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnum" runat="server" Text='<%#Bind("NUM_H_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText=" NUMERO DE HERMANOS ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("SON_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtson" runat="server" Text='<%#Bind("SON_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText="ALCOHOL">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("ALCOHOL_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtalcohol" runat="server" Text='<%#Bind("ALCOHOL_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText=" TABACO ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("TABACO_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txttabaco" runat="server" Text='<%#Bind("TABACO_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText=" DROGAS ">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("DROGAS_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdrogas" runat="server" Text='<%#Bind("DROGAS_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText="ALIMENTACIÓN">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("ALIMENTACION_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtali" runat="server" Text='<%#Bind("ALIMENTACION_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="DIPSIA">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("DIPSIA_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdipsia" runat="server" Text='<%#Bind("DIPSIA_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="PARADIPSIA">
                    <ItemTemplate>
                        <%--<asp:Label ID="Label1" runat="server" Text='<%#Bind("PARADIPSIA_H") %>'></asp:Label>--%>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <%--<asp:TextBox ID="txtparadi" runat="server" Text='<%#Bind("PARADIPSIA_H")%>' Enabled="false"></asp:TextBox>--%>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="INSOMNIO">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("INSOMNIO_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtinsom" runat="server" Text='<%#Bind("INSOMNIO_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="OTROS">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("OTRO_H") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtotros" runat="server" Text='<%#Bind("OTRO_H")%>' Enabled="false"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

        </columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

