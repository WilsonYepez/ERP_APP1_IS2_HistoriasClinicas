using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_empleado_Insertar_Emp : System.Web.UI.Page
{
    private WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ADD_PERSONA_Click(object sender, EventArgs e)
    {
        String cedula = TextBox1.Text;
        String nombres = TextBox2.Text;
        System.DateTime fecha = Calendar1.SelectedDate;
        String nacionalidad = TextBox3.Text;
        String direccion = TextBox4.Text;
        String telefono = TextBox5.Text;
        String email = TextBox6.Text;
        String estado = DropDownList1.SelectedItem.Value;
        String Tipo = DropDownList2.SelectedItem.Value;
        String Ciudadania = TextBox7.Text;
        obj.insertar_Persona(cedula, nombres, fecha, nacionalidad, direccion, telefono, email, estado, Tipo, Ciudadania);

        Response.Redirect("./Default.aspx");
    }
}