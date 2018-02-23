using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Vistas_Admin_user_Mod_User : System.Web.UI.Page
{
    WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddl_pais();
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cedula = DropDownList66.SelectedItem.Value;
        obj.Empleado_Cedula(cedula);
        DropDownList2.SelectedValue = obj.Empleado_Cedula(cedula).ID_AREA.ToString();
        DropDownList3.SelectedValue = obj.Empleado_Cedula(cedula).CARGO_US;
        TextBox4.Text = obj.Empleado_Cedula(cedula).PASWORD_US;
        DropDownList1.SelectedValue = obj.Empleado_Cedula(cedula).ACTIVO_EMP;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Decimal area = Convert.ToDecimal(DropDownList2.SelectedItem.Value);  
        string carg = DropDownList3.SelectedItem.Value;
        string pass = TextBox4.Text;
        string acti = DropDownList1.SelectedItem.Value;
        string pais = drppais.SelectedItem.Value;
        string provincia = drpprovincia.SelectedItem.Value;
        obj.update_empleado(DropDownList66.SelectedItem.Value,area,carg,pass,acti,pais,provincia);
    }

    SqlConnection con = new SqlConnection("data source=sqlserver-utn.database.windows.net;initial catalog=hospital;persist security info=True;user id=administrador;password=admin.1234");


    public void ddl_pais()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select cod_pais, descripcion from PAIS ", con);
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