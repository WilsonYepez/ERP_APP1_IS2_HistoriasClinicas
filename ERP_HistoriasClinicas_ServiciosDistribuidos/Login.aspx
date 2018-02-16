<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="no-js">
<head>

        <meta charset="utf-8"/>
        <title>Kankor</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'/>
        <link rel="stylesheet" href="assets/css/reset.css"/>
        <link rel="stylesheet" href="assets/css/supersized.css"/>
        <link rel="stylesheet" href="assets/css/style.css"/>

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <style type="text/css">
            .auto-style1 {
                width: 201px;
                height: 202px;
            }
        </style>

    </head>

    <body>
        
        <div class="page-container">
            <form method="post" runat="server">
            <h1>
                <img alt="" class="auto-style1" src="assets/img/Clinica%20Care.png" /> </h1>
                <h1>Inicio de Sesión</h1>
                <asp:TextBox ID="TextBox1" runat="server"  CssClass="username" placeholder="Usuario"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Contraseña" TextMode="Password" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Iniciar Sesión" CssClass="button" BackColor="#ff6600" ForeColor="White"/>
                
                <div class="error"><span>+</span></div>
            </form>
        </div>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
        </body>
</html>
