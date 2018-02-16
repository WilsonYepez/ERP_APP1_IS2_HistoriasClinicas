using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_user_Crud_User : System.Web.UI.Page
{
    private WebService obj = new WebService();

    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = (string)Session["UsuarioID"];
        if (!IsPostBack)
        {
            if (userid == "" || userid == null)
                Response.Redirect("../../Login.aspx");
        }
    }

    protected void ADD_btn_User_Click(object sender, EventArgs e)
    {
        try{
            if (TextBox1.Text != "")
            {
                String cedula = DropDownList2.SelectedItem.Value;
                DropDownList2.Items.RemoveAt(DropDownList2.SelectedIndex);
                decimal id_area = Convert.ToDecimal(DropDownList1.SelectedItem.Value);
                String Cargo = DropDownList3.SelectedItem.Value;
                obj.insertar_Empleado(cedula, id_area, Cargo, TextBox1.Text, "ACTIVO");
                Response.Redirect("./Insertar_User.aspx");
            }
            else{
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Error: Ingrese un password')</script>");

            }
        }
        catch(Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Error: "+ex+"')</script>");
        }
        
    }

}