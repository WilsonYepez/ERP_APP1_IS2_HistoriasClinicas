﻿using System;
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
        if (!IsPostBack)
        {
            cargargrilla();
        }
        
    }

    protected void ADD_btn_User_Click(object sender, EventArgs e)
    {
        String cedula = DropDownList2.SelectedItem.Value;
        DropDownList2.Items.RemoveAt(DropDownList2.SelectedIndex);
        decimal id_area = Convert.ToDecimal(DropDownList1.SelectedItem.Value);
        String Cargo = DropDownList3.SelectedItem.Value;
        obj.insertar_Empleado( cedula, id_area , Cargo , TextBox1.Text,"ACTIVO");
        cargargrilla();
    }

    protected void rowCancelEvent(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        cargargrilla();
    }

    protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {
        string cod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        obj.delete_empleado(cod);
        GridView1.EditIndex = -1;
        cargargrilla();
    }

    protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        cargargrilla();
    }

    protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow fila = GridView1.Rows[e.RowIndex];
        string cod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        Decimal area = Convert.ToDecimal((fila.FindControl("txtarea") as TextBox).Text);
        string cargo = (fila.FindControl("txtcargo") as TextBox).Text;
        string pass = (fila.FindControl("txtpass") as TextBox).Text;

        obj.Persona_Cedula(cod);

        obj.update_empleado(cod,area,cargo,pass, "ACTIVO");
        GridView1.EditIndex = -1;
        cargargrilla();

    }
}