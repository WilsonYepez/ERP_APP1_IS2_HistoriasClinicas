using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        cargargrilla();
    }

    protected void ADD_btn_User_Click(object sender, EventArgs e)
    {
        String cedula = DropDownList2.SelectedItem.Value;
        DropDownList2.Items.RemoveAt(DropDownList2.SelectedIndex);
        decimal id_area = Convert.ToDecimal(DropDownList1.SelectedItem.Value);
        String Cargo = DropDownList3.SelectedItem.Value;
        obj.insertar_Empleado( cedula, id_area , Cargo , TextBox1.Text);
        cargargrilla();
    }

    protected void rowCancelEvent(object sender, GridViewCancelEditEventArgs e)
    {

    }

    protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
    {

    }

    protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {

    }
}