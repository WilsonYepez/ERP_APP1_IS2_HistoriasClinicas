using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_empleado_Mod_Emp : System.Web.UI.Page
{
    private WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nombre = TextBox2.Text;
        DateTime fecha = Calendar1.SelectedDate;
        string nac = TextBox3.Text;
        string direc = TextBox4.Text;
        string tel = TextBox5.Text;
        string email = TextBox6.Text;
        string estado = DropDownList1.SelectedItem.Value;
        string tipo = DropDownList2.SelectedItem.Value;
        string ciud = TextBox7.Text;
        obj.update_Persona(TextBox1.Text,nombre,fecha,nac,direc,tel,email,estado,tipo,ciud);
    }

    protected void ADD_PERSONA_Click(object sender, EventArgs e)
    {
        string cedula = TextBox1.Text;
        obj.Persona_Cedula(cedula);
        TextBox2.Text = obj.Persona_Cedula(cedula).NOMBRES_EMP;
        Calendar1.SelectedDate = obj.Persona_Cedula(cedula).NACIFECHA_EMP;
        TextBox3.Text = obj.Persona_Cedula(cedula).NACIONALIDAD_EMP;
        TextBox4.Text = obj.Persona_Cedula(cedula).DIRECCIO_EMP;
        TextBox5.Text = obj.Persona_Cedula(cedula).TELEFONO_EMP;
        TextBox6.Text = obj.Persona_Cedula(cedula).EMAIL_EMP;
        DropDownList1.SelectedValue = obj.Persona_Cedula(cedula).ESTADO_EMP;
        DropDownList2.SelectedValue = obj.Persona_Cedula(cedula).TIPO_EMP;
        TextBox7.Text = obj.Persona_Cedula(cedula).CIUDADNACI_EMP;
    }
}