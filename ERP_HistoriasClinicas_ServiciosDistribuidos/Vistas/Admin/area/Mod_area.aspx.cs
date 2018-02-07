using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_area_Mod_area : System.Web.UI.Page
{
    WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nombre = TextBox1.Text;
        string gerencia = TextBox2.Text;
        string descipcion = TextBox3.Text;
        string estado = DropDownList1.SelectedItem.Value;
        obj.actualizar_area(Convert.ToDecimal(ID.Text),nombre,gerencia,descipcion,estado);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Decimal id = Convert.ToDecimal(ID.Text);
        obj.Listado_Area(id);
        TextBox1.Text = obj.Listado_Area(id).NOMBRE_AREA;
        TextBox2.Text = obj.Listado_Area(id).GERENCIA_AREA;
        TextBox3.Text = obj.Listado_Area(id).DESCRIPCION_AREA;
        DropDownList1.SelectedValue = obj.Listado_Area(id).ESTADO_AREA;
    }
}