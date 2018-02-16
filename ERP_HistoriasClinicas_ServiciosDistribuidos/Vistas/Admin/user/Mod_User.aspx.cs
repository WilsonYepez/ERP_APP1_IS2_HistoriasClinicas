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
        string cedula = DropDownList66.SelectedItem.Value;
        obj.Empleado_Cedula(cedula);
        DropDownList2.SelectedValue = obj.Empleado_Cedula(cedula).ID_AREA.ToString();
        DropDownList3.SelectedValue = obj.Empleado_Cedula(cedula).CARGO_US;
        TextBox4.Text = obj.Empleado_Cedula(cedula).PASWORD_US;
        DropDownList1.SelectedValue = obj.Empleado_Cedula(cedula).ACTIVO_EMP;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Decimal area = Convert.ToDecimal(DropDownList2.SelectedItem.Value);  
        string carg = DropDownList3.SelectedItem.Value;
        string pass = TextBox4.Text;
        string acti = DropDownList1.SelectedItem.Value;

        obj.update_empleado(DropDownList66.SelectedItem.Value,area,carg,pass,acti);
    }
}