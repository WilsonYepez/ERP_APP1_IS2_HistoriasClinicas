using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_empleado_Crud_Emp : System.Web.UI.Page
{
    private WebService obj = new WebService();
    private void cargaGrilla()
    {
        GridView1.DataSource = obj.Listado_Persona();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        cargaGrilla();
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
        String Ciudadania=TextBox7.Text;
        obj.insertar_Persona(cedula,nombres,fecha,nacionalidad,direccion,telefono,email,estado, Tipo,"ACTIVO", Ciudadania);
        cargaGrilla();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

    }
}