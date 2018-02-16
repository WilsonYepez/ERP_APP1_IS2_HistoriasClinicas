using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Vistas_Admin_empleado_Mod_Emp : System.Web.UI.Page
{
    private WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        validaFecha2();
        if (banderafecha)
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
            obj.update_Persona(DropDownList66.SelectedItem.Value, nombre, fecha, nac, direc, tel, email, estado, tipo, ciud);
            Response.Redirect("./Mod_Emp.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Error en la fecha')</script>");
        }

    }

    protected void ADD_PERSONA_Click(object sender, EventArgs e)
    {
        string cedula = DropDownList66.SelectedItem.Value; ;
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
    bool banderafecha = false;
    protected void validaFecha(object sender, EventArgs e)
    {
        DateTime dt1 = DateTime.Today;
        DateTime dt2 = Calendar1.SelectedDate;
        if (Convert.ToInt32(dt1.Year + "") <= Convert.ToInt32(dt2.Year + ""))
        {
            banderafecha = false;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Error en la fecha')</script>");
        }
        else
        {
            banderafecha = true;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Fecha Correcta')</script>");
        }
    }
    protected void validaFecha2()
    {
        DateTime dt1 = DateTime.Today;
        DateTime dt2 = Calendar1.SelectedDate;
        if (Convert.ToInt32(dt1.Year + "") <= Convert.ToInt32(dt2.Year + ""))
        {
            banderafecha = false;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Error en la fecha')</script>");
        }
        else
        {
            banderafecha = true;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Fecha Correcta')</script>");
        }
    }
}
    