using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_consulta_Mod_consulta : System.Web.UI.Page
{
    WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        obj.un_detalle(id);
        TextBox2.Text = obj.un_detalle(id).ID_DET;
        TextBox3.Text = obj.un_detalle(id).CANTIDAD_DET.ToString();
        TextBox4.Text = obj.un_detalle(id).PVP_DET.ToString();
        TextBox5.Text = obj.un_detalle(id).CANTDES_DET.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Decimal id_det = Convert.ToDecimal(TextBox2.Text);
        Decimal cantidad = Convert.ToDecimal(TextBox3.Text);
        Decimal pvp = Convert.ToDecimal(TextBox4.Text);
        Decimal cant = Convert.ToDecimal(TextBox5.Text);
        obj.actualizar_detalle(TextBox1.Text,id_det,cantidad,pvp,cant);
    }
}