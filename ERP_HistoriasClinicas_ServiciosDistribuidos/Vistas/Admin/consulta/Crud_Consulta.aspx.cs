using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_consulta_Crud_Consulta : System.Web.UI.Page
{
    private WebService obj = new WebService();
    private void cargaGrilla()
    {
        GridView1.DataSource = obj.listado_detalle();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargaGrilla();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string cod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        obj.borrar_detalle(cod);
        GridView1.EditIndex = -1;
        cargaGrilla();
    }
}