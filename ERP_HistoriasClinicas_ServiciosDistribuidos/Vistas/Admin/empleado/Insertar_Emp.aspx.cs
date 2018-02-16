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
        validaFecha2();
        if (banderafecha)
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
            Response.Redirect("./Insertar_Emp.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Error en la fecha')</script>");
        }
        
    }

    bool banderafecha = false;
    protected void validaFecha(object sender, EventArgs e)
    {
        DateTime dt1 = DateTime.Today;
        DateTime dt2 = Calendar1.SelectedDate;
        if (Convert.ToInt32(dt1.Year + "") <= Convert.ToInt32(dt2.Year + ""))
        {
            string hola = RegularExpressionValidator3.Text + "";
            banderafecha = false;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Error en la fecha"+hola+"')</script>");
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

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}