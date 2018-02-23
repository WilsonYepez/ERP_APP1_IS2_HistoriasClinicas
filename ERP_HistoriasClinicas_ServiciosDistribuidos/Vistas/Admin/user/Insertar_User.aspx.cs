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

    public SqlConnection cn = new SqlConnection("data source=sqlserver-utn.database.windows.net;initial catalog=hospital;persist security info=True;user id=administrador;password=admin.1234");


    private WebService obj = new WebService();

    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = (string)Session["UsuarioID"];
        if (!IsPostBack)
        {
            if (userid == "" || userid == null)
                Response.Redirect("../../Login.aspx");
            ddl_pais();
        }
    }

    SqlConnection con = new SqlConnection("data source=sqlserver-utn.database.windows.net;initial catalog=hospital;persist security info=True;user id=administrador;password=admin.1234");


    protected void ADD_btn_User_Click(object sender, EventArgs e)
    {
        try{
            if (TextBox1.Text != "")
            {
                String cedula = DropDownList2.SelectedItem.Value;
                DropDownList2.Items.RemoveAt(DropDownList2.SelectedIndex);
                decimal id_area = Convert.ToDecimal(DropDownList1.SelectedItem.Value);
                String Cargo = DropDownList3.SelectedItem.Value;
                string pais = drpprovincia.SelectedItem.Value;
                string provincia = drppais.SelectedItem.Value;
                obj.insertar_Empleado(cedula, id_area, Cargo, TextBox1.Text, "ACTIVO",pais,provincia);
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

    public void ddl_pais()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select cod_pais, descripcion from PAIS ",con);
        SqlDataReader dr = cmd.ExecuteReader();
        drppais.DataSource = dr;
        drppais.Items.Clear();
        drppais.Items.Add("Seleccionar");
        drppais.DataTextField = "descripcion";
        drppais.DataValueField = "cod_pais";
        drppais.DataBind();
        con.Close();
    }

    protected void drppais_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        int cod_pais = Convert.ToInt32(drppais.SelectedValue);
        SqlCommand cmd = new SqlCommand("select * from PROVINCIA where cod_pais=" + cod_pais, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        SqlDataReader dr = cmd.ExecuteReader();
        drpprovincia.DataSource = dr;
        drpprovincia.Items.Clear();
        drpprovincia.DataTextField = "descripcion";
        drpprovincia.DataValueField = "cod_provincia";
        drpprovincia.DataBind();
        drpprovincia.Items.Insert(0, new ListItem("seleccionar1", "0"));
        con.Close();
    }
}