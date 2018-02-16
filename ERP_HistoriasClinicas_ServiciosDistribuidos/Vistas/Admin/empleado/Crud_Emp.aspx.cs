using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


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
    public SqlConnection cn = new SqlConnection("data source=sqlserver-utn.database.windows.net;initial catalog=hospital;persist security info=True;user id=administrador;password=admin.1234");

    protected void Button1_Click2(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from PERSONA where NOMBRES_EMP like '" + nom_bus.Text + "%'", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}