<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="Mod_Historia.aspx.cs" Inherits="Vistas_Admin_historia_Mod_Historia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

     <div>
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Modificar Historia Clínica"></asp:Label>
        </h1>
    </div>

    <div>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CEDULA_EMP" DataValueField="CEDULA_EMP">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalConnectionString %>" SelectCommand="SELECT [CEDULA_EMP] FROM [HISTORIAS]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        Nombre del Padre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_name_padre" runat="server" Width="238px"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp; Vivo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="live_p" runat="server">
            <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>
                                                                                     </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CAUSAS:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_causa_p" runat="server" Width="327px"></asp:TextBox><br>
    Nombre del Madre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_name_madre" runat="server" Width="233px"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vivo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="live_m" runat="server">
         <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>
                                                                                     </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CAUSAS:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_causa_m" runat="server" Width="325px"></asp:TextBox><br>
    N° Hemanos:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_num_her" runat="server" Width="46px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Cant.Vivos:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_Her_vivos" runat="server" Width="71px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Cant.Muertos:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_her_muerto" runat="server" Width="47px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    CAUSAS:<asp:TextBox ID="T_her_causa" runat="server" Width="257px"></asp:TextBox><br>
    N° Hijos:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_num_son" runat="server" Width="44px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Cant.Vivos:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_vivos_son" runat="server" Width="69px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Cant.Muertos:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_muertos_son" runat="server" Width="45px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    CAUSAS:<asp:TextBox ID="T_causa_son" runat="server" Width="254px"></asp:TextBox><br>
    Alcohol:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="S_n_alco" runat="server">
         <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>
                                                                                     </asp:DropDownList> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Frecuencia:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_f_alco" runat="server" Width="624px"></asp:TextBox><br>
    Drogas:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="S_ndrog" runat="server">
         <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>
                                                                                     </asp:DropDownList> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Frecuencia:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_f_dog" runat="server" Width="622px"></asp:TextBox><br>
    Tabaco:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="S_n_taba" runat="server">
         <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>
                                                                                     </asp:DropDownList> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Frecuencia:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_f_taba" runat="server" Width="622px"></asp:TextBox><br>
    Dipsia:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="Dp_s_n" runat="server">
         <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>
        </asp:DropDownList> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Paradipsia:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="Pdp_s_n" runat="server">
         <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>                                                                                 </asp:DropDownList> 
    &nbsp;&nbsp;&nbsp; 
    Frecuencia:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_pdp_f" runat="server" Width="470px"></asp:TextBox><br>
    Insomnio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="in_s_n" runat="server">
         <asp:ListItem Value="SI">SI</asp:ListItem>
            <asp:ListItem Value="NO">NO</asp:ListItem>                                                                                 </asp:DropDownList> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Frecuencia:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_f_in" runat="server" Width="634px"></asp:TextBox><br>
    Alimentación:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_alimen" runat="server" Width="813px" Height="96px"></asp:TextBox>
        <br />
    Otro:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="T_o" runat="server" Width="813px" Height="96px"></asp:TextBox>
    <br />
    <br />
        <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" />
        </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body_fixed" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

