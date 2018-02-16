using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vistas_Admin_historia_Mod_Historia : System.Web.UI.Page
{
    private WebService obj = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cedula = DropDownList1.SelectedItem.Value;
        obj.una_historia(cedula);
        T_name_madre.Text = obj.una_historia(cedula).PADRE_H;
        T_name_padre.Text = obj.una_historia(cedula).MADRE_H;
        live_p.SelectedValue = obj.una_historia(cedula).FALLECIDO_P_H;
        live_m.SelectedValue = obj.una_historia(cedula).FALLECIDO_M_H;
        T_causa_p.Text = obj.una_historia(cedula).CAUSAS_P_H;
        T_causa_m.Text = obj.una_historia(cedula).CAUSAS_M_H;
        T_num_her.Text = obj.una_historia(cedula).NUM_H_H.ToString();
        T_Her_vivos.Text = obj.una_historia(cedula).VIVO_H_H.ToString();
        T_her_muerto.Text = obj.una_historia(cedula).MUERTE_H_H.ToString();
        T_her_causa.Text = obj.una_historia(cedula).CAUSAS_H_H;
        T_num_son.Text = obj.una_historia(cedula).SON_H.ToString();
        T_vivos_son.Text = obj.una_historia(cedula).VIVO_SON_H.ToString();
        T_muertos_son.Text = obj.una_historia(cedula).MUERTOS_SON_H.ToString();
        T_causa_son.Text = obj.una_historia(cedula).CAUSAS_SON_H;
        S_n_alco.SelectedValue = obj.una_historia(cedula).ALCOHOL_H;
        T_f_alco.Text = obj.una_historia(cedula).FRECUENCIA_ALC_H;
        S_ndrog.SelectedValue = obj.una_historia(cedula).DROGAS_H;
        T_f_dog.Text = obj.una_historia(cedula).FRECUENCIA_DRO_H;
        S_n_taba.SelectedValue = obj.una_historia(cedula).TABACO_H;
        T_f_taba.Text = obj.una_historia(cedula).FRECUENCIA_TAB_H;
        Dp_s_n.SelectedValue = obj.una_historia(cedula).DIPSIA_H;
        Pdp_s_n.SelectedValue = obj.una_historia(cedula).PARADIPSIA;
        T_pdp_f.Text = obj.una_historia(cedula).FRECUENCIA_PARADIPSIA;
        in_s_n.SelectedValue = obj.una_historia(cedula).INSOMNIO_H;
        T_f_in.Text = obj.una_historia(cedula).FRECUENCIA_INSOM_H;
        T_alimen.Text = obj.una_historia(cedula).ALIMENTACION_H;
        T_o.Text = obj.una_historia(cedula).OTRO_H;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        string Nombre_padre = T_name_padre.Text;
        string Nombre_madre = T_name_madre.Text;
        string padre_vivo = live_p.SelectedItem.Value;
        string madre_viva = live_m.SelectedItem.Value;
        string causa_madre = T_causa_m.Text;
        string causa_padre = T_causa_p.Text;
        Decimal num_her = Convert.ToDecimal(T_num_her.Text);
        Decimal can_v_her = Convert.ToDecimal(T_Her_vivos.Text);
        Decimal can_m_her = Convert.ToDecimal(T_her_muerto.Text);
        string causas_her = T_her_causa.Text;
        Decimal num_son = Convert.ToDecimal(T_num_son.Text);
        Decimal can_v_son = Convert.ToDecimal(T_vivos_son.Text);
        Decimal can_m_son = Convert.ToDecimal(T_muertos_son.Text);
        string causas_son = T_causa_son.Text;
        string alcol = S_n_alco.SelectedItem.Value;
        string dogras = S_ndrog.SelectedItem.Value;
        string tabaco = S_n_taba.SelectedItem.Value;
        string f_alcol = T_f_alco.Text;
        string f_drog = T_f_dog.Text;
        string f_taba = T_f_taba.Text;
        String alientacion = T_alimen.Text;
        String DIPSIA_H = Dp_s_n.SelectedItem.Value;
        string PARADIPSIA = Pdp_s_n.SelectedItem.Value;
        string FRECUENCIA_PARADIPSIA = T_pdp_f.Text;
        string INSOMNIO_H = in_s_n.SelectedItem.Value;
        string FRECUENCIA_INSOM_H = T_f_in.Text;
        string OTRO_H = T_o.Text;
        obj.actualizar_hitoria(DropDownList1.SelectedItem.Value,Nombre_madre,Nombre_madre,padre_vivo,madre_viva,causa_padre,causa_madre,num_her,can_v_her,can_m_her,causas_her,num_son,can_v_son,can_m_son,causas_son,
            alcol,tabaco,dogras,f_taba,f_alcol,f_drog,alientacion,DIPSIA_H,PARADIPSIA,FRECUENCIA_PARADIPSIA,INSOMNIO_H,FRECUENCIA_INSOM_H,OTRO_H);
    }

    protected void GargarDatos(object sender, EventArgs e)
    {
        string cedula = DropDownList1.SelectedItem.Value;
        obj.una_historia(cedula);
        T_name_madre.Text = obj.una_historia(cedula).PADRE_H;
        T_name_padre.Text = obj.una_historia(cedula).MADRE_H;
        live_p.SelectedValue = obj.una_historia(cedula).FALLECIDO_P_H;
        live_m.SelectedValue = obj.una_historia(cedula).FALLECIDO_M_H;
        T_causa_p.Text = obj.una_historia(cedula).CAUSAS_P_H;
        T_causa_m.Text = obj.una_historia(cedula).CAUSAS_M_H;
        T_num_her.Text = obj.una_historia(cedula).NUM_H_H.ToString();
        T_Her_vivos.Text = obj.una_historia(cedula).VIVO_H_H.ToString();
        T_her_muerto.Text = obj.una_historia(cedula).MUERTE_H_H.ToString();
        T_her_causa.Text = obj.una_historia(cedula).CAUSAS_H_H;
        T_num_son.Text = obj.una_historia(cedula).SON_H.ToString();
        T_vivos_son.Text = obj.una_historia(cedula).VIVO_SON_H.ToString();
        T_muertos_son.Text = obj.una_historia(cedula).MUERTOS_SON_H.ToString();
        T_causa_son.Text = obj.una_historia(cedula).CAUSAS_SON_H;
        S_n_alco.SelectedValue = obj.una_historia(cedula).ALCOHOL_H;
        T_f_alco.Text = obj.una_historia(cedula).FRECUENCIA_ALC_H;
        S_ndrog.SelectedValue = obj.una_historia(cedula).DROGAS_H;
        T_f_dog.Text = obj.una_historia(cedula).FRECUENCIA_DRO_H;
        S_n_taba.SelectedValue = obj.una_historia(cedula).TABACO_H;
        T_f_taba.Text = obj.una_historia(cedula).FRECUENCIA_TAB_H;
        Dp_s_n.SelectedValue = obj.una_historia(cedula).DIPSIA_H;
        Pdp_s_n.SelectedValue = obj.una_historia(cedula).PARADIPSIA;
        T_pdp_f.Text = obj.una_historia(cedula).FRECUENCIA_PARADIPSIA;
        in_s_n.SelectedValue = obj.una_historia(cedula).INSOMNIO_H;
        T_f_in.Text = obj.una_historia(cedula).FRECUENCIA_INSOM_H;
        T_alimen.Text = obj.una_historia(cedula).ALIMENTACION_H;
        T_o.Text = obj.una_historia(cedula).OTRO_H;
    }
}