using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vistas_Admin_consulta_Crud_Consulta : System.Web.UI.Page
{
    private WebService obj = new WebService();
    private void cargaGrilla()
    {
        GridView1.DataSource = obj.lista_consulta();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargaGrilla();
        }
    }

    public SqlConnection cn = new SqlConnection("data source=sqlserver-utn.database.windows.net;initial catalog=hospital;persist security info=True;user id=administrador;password=admin.1234");

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from CABECERA_CONSULTA where CEDULA_EMP like '" + busced.Text + "%'", cn);
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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}