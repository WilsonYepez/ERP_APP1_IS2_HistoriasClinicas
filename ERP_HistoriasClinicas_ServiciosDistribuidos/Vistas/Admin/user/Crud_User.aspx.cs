using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vistas_Admin_user_Crud_User : System.Web.UI.Page
{
    private WebService obj = new WebService();

    private void cargargrilla()
    {
        GridView1.DataSource = obj.Listado_Empleados();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargargrilla();
        }
        
    }

    protected void rowCancelEvent(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        cargargrilla();
    }

    protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {
        string cod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        obj.delete_empleado(cod);
        GridView1.EditIndex = -1;
        cargargrilla();
    }

    protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        cargargrilla();
    }

    protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow fila = GridView1.Rows[e.RowIndex];
        string cod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        Decimal area = Convert.ToDecimal((fila.FindControl("txtarea") as TextBox).Text);
        string cargo = (fila.FindControl("txtcargo") as TextBox).Text;
        string pass = (fila.FindControl("txtpass") as TextBox).Text;
        string estado = (fila.FindControl("estado") as TextBox).Text;
        if (estado == "ACTIVO")
        {
            estado = "INACTIVO";
        }
        else
        {
            estado = "ACTIVO";
        }
        obj.Persona_Cedula(cod);
        obj.update_empleado(cod, area, cargo, pass, estado);
        GridView1.EditIndex = -1;
        cargargrilla();

    }

    public SqlConnection cn = new SqlConnection("data source=sqlserver-utn.database.windows.net;initial catalog=hospital;persist security info=True;user id=administrador;password=admin.1234");

    protected void search_btn_User_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from EMPLEADO where CEDULA_EMP like '" + busco.Text + "%'", cn);
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