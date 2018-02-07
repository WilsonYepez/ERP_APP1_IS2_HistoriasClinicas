using ERP_HistoriasClinicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        login();
    }

    public void login()
    {
        WebService obj = new WebService();

        string CEDULA_EMP = TextBox1.Text;
        string PASWORD_US = TextBox2.Text;

        DataSet ds = obj.login(TextBox1.Text, TextBox2.Text);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("Vistas/Admin/Control_Admin.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}