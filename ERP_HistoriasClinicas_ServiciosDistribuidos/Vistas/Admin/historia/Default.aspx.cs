﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("./Insertar_Historia.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("./Crud_Historia.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("./Mod_Historia.aspx");
    }
}