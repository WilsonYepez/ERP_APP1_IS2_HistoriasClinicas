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
        if (!IsPostBack)
        {
            cargaGrilla();
        }
        
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
        obj.insertar_Persona(cedula,nombres,fecha,nacionalidad,direccion,telefono,email,estado, Tipo, Ciudadania);
        cargaGrilla();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow fila = GridView1.Rows[e.RowIndex];
        string cedula = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        string nombres = (fila.FindControl("txtnom")as TextBox).Text;
        DateTime fecha = Convert.ToDateTime((fila.FindControl("txtfech") as TextBox).Text);
        string nacionalidad = (fila.FindControl("txtnac") as TextBox).Text;
        string direccion = (fila.FindControl("txtdic") as TextBox).Text;
        string telefono = (fila.FindControl("txttel") as TextBox).Text;
        string email = (fila.FindControl("txtemail") as TextBox).Text;
        string estado = (fila.FindControl("txtecivil") as TextBox).Text;
        string Tipo = (fila.FindControl("txtsangre") as TextBox).Text;
        string activo = (fila.FindControl("txtac") as TextBox).Text;
        string Ciudadania = (fila.FindControl("txtciu") as TextBox).Text;

        obj.update_Persona(cedula,nombres,fecha,nacionalidad,direccion,telefono,email,estado,Tipo,Ciudadania);
        GridView1.EditIndex = -1;
        cargaGrilla();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        cargaGrilla();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string cod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        obj.delete_Persona(cod);
        GridView1.EditIndex = -1;
        cargaGrilla();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        cargaGrilla();
    }
}