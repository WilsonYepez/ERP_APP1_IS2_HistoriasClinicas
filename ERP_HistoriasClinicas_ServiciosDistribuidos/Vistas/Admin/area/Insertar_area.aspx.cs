using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_area_Insertar_area : System.Web.UI.Page
{
    WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = "Ingreso Correcto";
        string nombre = TextBox1.Text;
        string gerencia = TextBox2.Text;
        string descripcion = TextBox3.Text;
        string estado = DropDownList1.SelectedItem.Value;
        if(obj.Insertar_Area(0, nombre, gerencia, descripcion, estado)==0)
        {
            mensaje.Text = msg;
        }
        else
        {
            mensaje.Text="Ingreso incorrecto";
        }

        Response.Redirect("./Default.aspx");

    }
}