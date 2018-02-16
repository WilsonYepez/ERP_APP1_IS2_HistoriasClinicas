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
        string cedula = TextBox1.Text;
        string msg = "Ingreso Correcto";
        string indicaciones = TextBox2.Text;
        string motivos = TextBox3.Text;
        Decimal presion = Convert.ToDecimal(TextBox4.Text);
        DateTime fecha = Calendar1.SelectedDate;
        Decimal peso = Convert.ToDecimal(TextBox6.Text);
        Decimal temp = Convert.ToDecimal(TextBox7.Text);
        string sintomas = TextBox8.Text;
        string observaciones = TextBox9.Text;
        if (obj.insertar_consulta(0, cedula, indicaciones, motivos, presion,fecha,peso,temp,sintomas,observaciones) == 0)
        {
            mensaje.Text = msg;
        }
        else
        {
            mensaje.Text = "Ingreso incorrecto";
        }

        

    }
}