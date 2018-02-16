using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_consulta_Reporte_con : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["indi"];
        Label2.Text = (string)Session["receta"];
        Label3.Text = (string)Session["obes"];

    }
}