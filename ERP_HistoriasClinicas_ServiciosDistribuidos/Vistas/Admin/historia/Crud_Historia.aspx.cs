using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_historia_Crud_Historia : System.Web.UI.Page
{
    WebService obj = new WebService();
    private void cargargrilla()
    {
        GridView1.DataSource = obj.listado_historia();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        cargargrilla();
    }

    protected void ADD_Historia_Click(object sender, EventArgs e)
    {
        
    }
}