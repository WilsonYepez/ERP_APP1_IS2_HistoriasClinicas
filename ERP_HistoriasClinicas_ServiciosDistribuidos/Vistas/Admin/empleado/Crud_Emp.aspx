<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Crud_Emp.aspx.cs" Inherits="Vistas_Admin_empleado_Crud_Emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h3>CONTROL DE PERSONAS</h3>
    Cédula: 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br>
    Nombres: 
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br>
    Fecha Nacimiento: <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
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
    Teléfono:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
    <br>
&nbsp;<br>
    <asp:Button ID="ADD_PERSONA" runat="server" Text="Agregar" OnClick="ADD_PERSONA_Click" />
    <br>
    <br>
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

            <asp:TemplateField HeaderText="FECHA DE NACIMIENTO">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Bind("NACIFECHA_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfech" runat="server" Text='<%#Bind("NACIFECHA_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="NACIONALIDAD">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Bind("NACIONALIDAD_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnac" runat="server" Text='<%#Bind("NACIONALIDAD_EMP")%>'></asp:TextBox>
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

            <asp:TemplateField HeaderText="ESTADO CIVIL">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%#Bind("ESTADO_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtecivil" runat="server" Text='<%#Bind("ESTADO_EMP")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="TIPO DE SANGRE">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%#Bind("TIPO_EMP")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtsangre" runat="server" Text='<%#Bind("TIPO_EMP")%>'></asp:TextBox>
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

            <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"/>

        </columns>

    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

