using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vistas_Admin_area_Crud_area : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        WebService obj = new WebService();
        int area = Convert.ToInt16(((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text);
        String nombre = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        String gerencia = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
        String descripcion = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
        String estado = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
        obj.actualizar_area(area, nombre, gerencia, descripcion, estado);
        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }


    protected void GridView1_DataBinding(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        WebService obj = new WebService();
        int area = Convert.ToInt16(((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text);
        obj.delete_area(area);
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        WebService obj = new WebService();
        int area = 0;
        String nombre = ((TextBox)GridView1.FooterRow.FindControl("TextBox5")).Text;
        String gerencia = ((TextBox)GridView1.FooterRow.FindControl("TextBox6")).Text;
        String descripcion = ((TextBox)GridView1.FooterRow.FindControl("TextBox7")).Text;
        String estado = ((TextBox)GridView1.FooterRow.FindControl("TextBox8")).Text;

        obj.insertar_area(area,nombre,gerencia,descripcion,estado);
        obj = null;
    }
}