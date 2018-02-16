using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_user_Mod_User : System.Web.UI.Page
{
    WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cedula = TextBox1.Text;
        obj.Empleado_Cedula(cedula);
        TextBox2.Text = obj.Empleado_Cedula(cedula).ID_AREA.ToString();
        TextBox3.Text = obj.Empleado_Cedula(cedula).CARGO_US;
        TextBox4.Text = obj.Empleado_Cedula(cedula).PASWORD_US;
        DropDownList1.SelectedValue = obj.Empleado_Cedula(cedula).ACTIVO_EMP;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Decimal area = Convert.ToDecimal(TextBox2.Text);
        string carg = TextBox3.Text;
        string pass = TextBox4.Text;
        string acti = DropDownList1.SelectedItem.Value;

        obj.update_empleado(TextBox1.Text,area,carg,pass,acti);
    }
}