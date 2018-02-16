using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_consulta_Mod_consulta : System.Web.UI.Page
{
    WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string cedula = TextBox1.Text;
        string indica = TextBox2.Text;
        string moti = TextBox3.Text;
        Decimal presion = Convert.ToDecimal(TextBox4.Text);
        DateTime fecha = Calendar1.SelectedDate;
        Decimal peso = Convert.ToDecimal(TextBox6.Text);
        Decimal tem = Convert.ToDecimal(TextBox7.Text);
        string sintomas = TextBox8.Text;
        string obser = TextBox9.Text;
        obj.actualizar_consulta(Convert.ToInt32(TextBox10.Text),cedula,indica,moti,presion,fecha,peso,tem,sintomas,obser);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(TextBox10.Text);
        obj.una_consulta(id);
        TextBox1.Text = obj.una_consulta(id).CEDULA_EMP;
        TextBox2.Text = obj.una_consulta(id).INDICACIONES_CON;
        TextBox3.Text = obj.una_consulta(id).MOTIVO_CON;
        TextBox4.Text = Convert.ToDecimal(obj.una_consulta(id).PRESION_CON).ToString();
        Calendar1.SelectedDate = Convert.ToDateTime(obj.una_consulta(id).FECHA_CON);
        TextBox6.Text = Convert.ToDecimal(obj.una_consulta(id).PESO_CON).ToString();
        TextBox7.Text = Convert.ToDecimal(obj.una_consulta(id).TEMPERATURA_CON).ToString();
        TextBox8.Text = obj.una_consulta(id).SINTOMAS_CON;
        TextBox9.Text = obj.una_consulta(id).OBSERVACIONES_CON;
    }
}