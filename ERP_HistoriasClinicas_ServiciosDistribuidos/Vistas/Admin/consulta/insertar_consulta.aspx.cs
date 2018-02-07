using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_consulta_insertar_consulta : System.Web.UI.Page
{
    WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = "Ingreso Correcto";
        string id_con = TextBox1.Text;
        string cantidad = TextBox2.Text;
        string pvp = TextBox3.Text;
        string cant = TextBox4.Text;
        if (obj.Insertar_Area(0, id_con, cantidad, pvp, cant) == 0)
        {
            mensaje.Text = msg;
        }
        else
        {
            mensaje.Text = "Ingreso incorrecto";
        }

    }
}