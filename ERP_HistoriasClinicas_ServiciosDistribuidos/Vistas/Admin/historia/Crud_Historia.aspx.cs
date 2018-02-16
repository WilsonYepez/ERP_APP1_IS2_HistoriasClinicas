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
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ADD_Historia_Click(object sender, EventArgs e)
    {
        string cedula = DropDownList66.SelectedItem.Value; 
        Label1.Text =obj.Persona_Cedula(cedula).CEDULA_EMP;
        Label2.Text = obj.Persona_Cedula(cedula).NOMBRES_EMP;
        Label3.Text = obj.una_historia(cedula).PADRE_H;
        Label4.Text = obj.una_historia(cedula).FALLECIDO_P_H;
        Label5.Text = obj.una_historia(cedula).CAUSAS_P_H;
        Label6.Text = obj.una_historia(cedula).MADRE_H;
        Label7.Text = obj.una_historia(cedula).FALLECIDO_M_H;
        Label8.Text = obj.una_historia(cedula).CAUSAS_M_H;
        Label9.Text = obj.una_historia(cedula).SON_H+"";
        Label10.Text = obj.una_historia(cedula).VIVO_SON_H+"";
        Label11.Text = obj.una_historia(cedula).MUERTOS_SON_H+"";
        Label12.Text = obj.una_historia(cedula).CAUSAS_SON_H;
        Label13.Text = obj.una_historia(cedula).NUM_H_H + "";
        Label14.Text = obj.una_historia(cedula).VIVO_H_H + "";
        Label15.Text = obj.una_historia(cedula).MUERTE_H_H+"";
        Label16.Text = obj.una_historia(cedula).CAUSAS_H_H;
        Label17.Text = obj.una_historia(cedula).ALCOHOL_H;
        Label18.Text = obj.una_historia(cedula).FRECUENCIA_ALC_H;
        Label19.Text = obj.una_historia(cedula).DROGAS_H;
        Label20.Text = obj.una_historia(cedula).FRECUENCIA_DRO_H;
        Label21.Text = obj.una_historia(cedula).TABACO_H;
        Label22.Text = obj.una_historia(cedula).FRECUENCIA_TAB_H;
        TextBox1.Text= obj.una_historia(cedula).ALIMENTACION_H;
        Label23.Text = obj.una_historia(cedula).DIPSIA_H;
        Label24.Text = obj.una_historia(cedula).PARADIPSIA ;
        Label25.Text = obj.una_historia(cedula).FRECUENCIA_PARADIPSIA;
        Label26.Text = obj.una_historia(cedula).INSOMNIO_H;
        Label27.Text = obj.una_historia(cedula).FRECUENCIA_INSOM_H;
        TextBox2.Text= obj.una_historia(cedula).OTRO_H;

    }
}