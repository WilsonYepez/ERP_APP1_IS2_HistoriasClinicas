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
        string cedula_emp;
        string Nombre_padre;
        string Nombre_madre;
        string padre_vivo;
        string madre_viva;
        string causa_madre;
        string causa_padre;
        Decimal num_her;
        Decimal num_son;
        Decimal can_v_son;
        Decimal can_m_son;
        Decimal can_v_her;
        Decimal can_m_her;
        string causas_her;
        string casuas_son;
        string alcol;
        string dogras;
        string tabaco;
        string f_alcol;
        string f_drog;
        string f_taba;
            
    }
}