using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Serialization;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    [WebMethod]
    public void Servicio_Facturacion()
    {
        List<ERP_HistoriasClinicas.Listado_facturacion2> listaFacturacion;
        listaFacturacion = new  ERP_HistoriasClinicas.RecursosHumanos_LS().Listado_Facturacion();
        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(listaFacturacion));
    }

    public WebService()
    {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    //Recursos Humanos
    [WebMethod]
    public int Insertar_Area(decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().insertar_area(ID_AREA, NOMBRE_AREA, GERENCIA_AREA, DESCRIPCION_AREA, ESTADO_AREA);
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Area_trabajo2[] Listado_Areas()
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().Listado_Areas();
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Area_trabajo2[] Listado_Areas_Nombre(String NOMBRE_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().lista_areas_nombre(NOMBRE_AREA);
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Area_trabajo2 Listado_Area(decimal ID_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().area_idArea(ID_AREA);
    }
    [WebMethod]
    public int insertar_area(decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().insertar_area( ID_AREA,  NOMBRE_AREA,  GERENCIA_AREA,DESCRIPCION_AREA,  ESTADO_AREA);
    }
    [WebMethod]
    public int actualizar_area(Decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().actualizar_area( ID_AREA,  NOMBRE_AREA, GERENCIA_AREA,  DESCRIPCION_AREA, ESTADO_AREA);
    }
    [WebMethod]
    public int delete_area(decimal ID_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().delete_area(ID_AREA);
    }

[WebMethod]
public ERP_HistoriasClinicas.Empleado2[] Listado_Empleados()
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().Listado_Empleados();
    }
[WebMethod]
public ERP_HistoriasClinicas.Empleado2 Empleado_Cedula(string CEDULA_EMP)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().Empleado_Cedula(CEDULA_EMP);
    }

    [WebMethod]
public int insertar_Empleado(string CEDULA_EMP, decimal ID_AREA, string CARGO_US, string PASWORD_US, string ACTIVO_EMP)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().insertar_Empleado(CEDULA_EMP, ID_AREA, CARGO_US, PASWORD_US, ACTIVO_EMP);
    }

    [WebMethod]
public int update_empleado(string CEDULA_EMP, decimal ID_AREA, string CARGO_US, string PASWORD_US, string ACTIVO_EMP)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().update_empleado(CEDULA_EMP, ID_AREA, CARGO_US,PASWORD_US, ACTIVO_EMP);
    }

    [WebMethod]
public int delete_empleado(string CEDULA_EMP)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().delete_empleado(CEDULA_EMP);
    }

    [WebMethod]
public ERP_HistoriasClinicas.Persona2 Persona_Cedula(string CEDULA_EMP)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().Persona_Cedula( CEDULA_EMP);
    }

    [WebMethod]
public ERP_HistoriasClinicas.Persona2[] Listado_Persona()
{
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().Listado_Persona();
    }

    [WebMethod]
public int update_Persona(string CEDULA_EMP, string NOMBRES_EMP, System.DateTime NACIFECHA_EMP, string NACIONALIDAD_EMP, string DIRECCIO_EMP,
            string TELEFONO_EMP, string EMAIL_EMP, string ESTADO_EMP, string TIPO_EMP, string CIUDADNACI_EMP)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().update_Persona(CEDULA_EMP, NOMBRES_EMP, NACIFECHA_EMP, NACIONALIDAD_EMP,  DIRECCIO_EMP,
            TELEFONO_EMP,  EMAIL_EMP,  ESTADO_EMP,  TIPO_EMP,  CIUDADNACI_EMP);
    }

    [WebMethod]
public int insertar_Persona(string CEDULA_EMP, string NOMBRES_EMP, System.DateTime NACIFECHA_EMP, string NACIONALIDAD_EMP, string DIRECCIO_EMP,
            string TELEFONO_EMP, string EMAIL_EMP, string ESTADO_EMP, string TIPO_EMP, string CIUDADNACI_EMP)
{
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().insertar_Persona(CEDULA_EMP,  NOMBRES_EMP,  NACIFECHA_EMP,  NACIONALIDAD_EMP,  DIRECCIO_EMP,
             TELEFONO_EMP,  EMAIL_EMP,  ESTADO_EMP, TIPO_EMP,  CIUDADNACI_EMP);
    }

    [WebMethod]
public  int delete_Persona(string CEDULA_EMP)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().delete_Persona( CEDULA_EMP);
    }
    



    //Consultorio
    
    [WebMethod]
    public ERP_HistoriasClinicas.Historias2[] listado_historia()
    {
        return new ERP_HistoriasClinicas.Consultorio().listado_historias();
    }

    [WebMethod]
    public int insertar_historia(string CEDULA_EMP, string PADRE_H, string MADRE_H, string FALLECIDO_P_H, string FALLECIDO_M_H, string CAUSAS_P_H, string CAUSAS_M_H, Decimal NUM_H_H,
                    Decimal VIVO_H_H, Decimal MUERTE_H_H, string CAUSAS_H_H, Decimal SON_H, Decimal VIVO_SON_H, Decimal MUERTOS_SON_H, string CAUSAS_SON_H, string ALCOHOL_H, string TABACO_H,
                    string DROGAS_H, string FRECUENCIA_TAB_H, string FRECUENCIA_ALC_H, string FRECUENCIA_DRO_H, string ALIMENTACION_H, string DIPSIA_H,
                    string PARADIPSIA, string FRECUENCIA_PARADIPSIA, string INSOMNIO_H, string FRECUENCIA_INSOM_H, string OTRO_H)
    {
        return new ERP_HistoriasClinicas.Consultorio().insertar_historia(CEDULA_EMP, PADRE_H, MADRE_H, FALLECIDO_P_H, FALLECIDO_M_H, CAUSAS_P_H, CAUSAS_M_H, NUM_H_H,
                    VIVO_H_H, MUERTE_H_H, CAUSAS_H_H, SON_H, VIVO_SON_H, MUERTOS_SON_H, CAUSAS_SON_H, ALCOHOL_H, TABACO_H,
                    DROGAS_H, FRECUENCIA_TAB_H, FRECUENCIA_ALC_H, FRECUENCIA_DRO_H, ALIMENTACION_H, DIPSIA_H,
                    PARADIPSIA, FRECUENCIA_PARADIPSIA, INSOMNIO_H, FRECUENCIA_INSOM_H, OTRO_H);
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Historias2 una_historia(string CEDULA_EMP)
    {
        return new ERP_HistoriasClinicas.Consultorio().una_historia( CEDULA_EMP);
    }
    [WebMethod]
    public int actualizar_hitoria(string CEDULA_EMP, string PADRE_H, string MADRE_H, string FALLECIDO_P_H, string FALLECIDO_M_H, string CAUSAS_P_H, string CAUSAS_M_H, decimal NUM_H_H,
                    decimal VIVO_H_H, decimal MUERTE_H_H, string CAUSAS_H_H, decimal SON_H, decimal VIVO_SON_H, decimal MUERTOS_SON_H, string CAUSAS_SON_H, string ALCOHOL_H, string TABACO_H,
                    string DROGAS_H, string FRECUENCIA_TAB_H, string FRECUENCIA_ALC_H, string FRECUENCIA_DRO_H, string ALIMENTACION_H, string DIPSIA_H,
                    string PARADIPSIA, string FRECUENCIA_PARADIPSIA, string INSOMNIO_H, string FRECUENCIA_INSOM_H, string OTRO_H)
    {
        return new ERP_HistoriasClinicas.Consultorio().actualizar_hitoria( CEDULA_EMP,  PADRE_H,  MADRE_H,  FALLECIDO_P_H, FALLECIDO_M_H,  CAUSAS_P_H,  CAUSAS_M_H, NUM_H_H,
                     VIVO_H_H,  MUERTE_H_H,  CAUSAS_H_H,  SON_H,  VIVO_SON_H, MUERTOS_SON_H,  CAUSAS_SON_H,  ALCOHOL_H, TABACO_H,
                     DROGAS_H,  FRECUENCIA_TAB_H,  FRECUENCIA_ALC_H,  FRECUENCIA_DRO_H,  ALIMENTACION_H,  DIPSIA_H,
                     PARADIPSIA,  FRECUENCIA_PARADIPSIA, INSOMNIO_H, FRECUENCIA_INSOM_H,  OTRO_H);
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Cabecera_consulta2[] lista_consulta()
    {
        return new ERP_HistoriasClinicas.Consultorio().lista_consulta();
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Cabecera_consulta2 una_consulta(int ID_CON)
    {
        return new ERP_HistoriasClinicas.Consultorio().una_consulta( ID_CON);
    }
    [WebMethod]
    public int insertar_consulta(Decimal ID_CON, string CEDULA_EMP, string INDICACIONES_CON, string MOTIVO_CON, Decimal PRESION_CON,
                            DateTime FECHA_CON, Decimal PESO_CON, Decimal TEMPERATURA_CON, string SINTOMAS_CON, string OBSERVACIONES_CON)
    {
        return new ERP_HistoriasClinicas.Consultorio().insertar_consulta( ID_CON,  CEDULA_EMP, INDICACIONES_CON, MOTIVO_CON,PRESION_CON,
                             FECHA_CON,  PESO_CON,  TEMPERATURA_CON,  SINTOMAS_CON,  OBSERVACIONES_CON);
    }
    [WebMethod]
    public int actualizar_consulta(Decimal ID_CON, string CEDULA_EMP, string INDICACIONES_CON, string MOTIVO_CON, Decimal PRESION_CON,
                            DateTime FECHA_CON, Decimal PESO_CON, Decimal TEMPERATURA_CON, string SINTOMAS_CON, string OBSERVACIONES_CON)
    {
        return new ERP_HistoriasClinicas.Consultorio().actualizar_consulta( ID_CON, CEDULA_EMP,  INDICACIONES_CON,  MOTIVO_CON,  PRESION_CON,
                             FECHA_CON,  PESO_CON, TEMPERATURA_CON,  SINTOMAS_CON,  OBSERVACIONES_CON);
    }
    [WebMethod]
    public int borrar_consulta(Decimal ID_CON)
    {
        return new ERP_HistoriasClinicas.Consultorio().borrar_consulta( ID_CON);
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Detalle_Consulta2[] listado_detalle()
    {
        return new ERP_HistoriasClinicas.Consultorio().listado_detalle();
    }
    [WebMethod]
    public ERP_HistoriasClinicas.Detalle_Consulta2 un_detalle(string ID_DET)
    {
        return new ERP_HistoriasClinicas.Consultorio().un_detalle(ID_DET);
    }
    [WebMethod]
    public int insertar_detalle(string ID_DET, Decimal ID_CON, Decimal CANTIDAD_DET, Decimal PVP_DET,
                        Decimal CANTDES_DET)
    {
        return new ERP_HistoriasClinicas.Consultorio().insertar_detalle( ID_DET, ID_CON,  CANTIDAD_DET,  PVP_DET,
                        CANTDES_DET);
    }
    [WebMethod]
    public int actualizar_detalle(string ID_DET, Decimal ID_CON, Decimal CANTIDAD_DET, Decimal PVP_DET,
                        Decimal CANTDES_DET)
    {
        return new ERP_HistoriasClinicas.Consultorio().actualizar_detalle(ID_DET,ID_CON, CANTIDAD_DET, PVP_DET,
                        CANTDES_DET);
    }
    [WebMethod]
    public int borrar_detalle(string ID_DET)
    {
        return new ERP_HistoriasClinicas.Consultorio().borrar_detalle(ID_DET);
    }

    [WebMethod]
    public ERP_HistoriasClinicas.Empleado2 login(string uname, string pwd)
    {
        using (var ctx = new ERP_HistoriasClinicas.ERP_HistoriasClinicasEntities())
        {
            var d = ctx.EMPLEADO.Find(uname);
            ERP_HistoriasClinicas.Empleado2 r = null;
            if (d != null)
            {
                r = new ERP_HistoriasClinicas.Empleado2
                {
                    ID_AREA = d.ID_AREA,
                    CEDULA_EMP = d.CEDULA_EMP,
                    CARGO_US = d.CARGO_US,
                    PASWORD_US = d.PASWORD_US,
                    ACTIVO_EMP = d.ACTIVO_EMP
                };
            }
            if (r.ACTIVO_EMP == "ACTIVO") {
                return r;
            } else
            {
                return null;
            }
            
        }
        
    }

    [WebMethod]
    public string Nombreemp(string ced)
    {
        using (var ctx = new ERP_HistoriasClinicas.ERP_HistoriasClinicasEntities())
        {
            var d = ctx.PERSONA.Find(ced);
            ERP_HistoriasClinicas.Persona2 r = null;
            if (d != null)
            {
                r = new ERP_HistoriasClinicas.Persona2
                {
                    CEDULA_EMP = d.CEDULA_EMP,
                    CIUDADNACI_EMP = d.CIUDADNACI_EMP,
                    DIRECCIO_EMP = d.DIRECCIO_EMP,
                    EMAIL_EMP = d.EMAIL_EMP,
                    ESTADO_EMP = d.ESTADO_EMP,
                    NACIFECHA_EMP = d.NACIFECHA_EMP,
                    NACIONALIDAD_EMP = d.NACIONALIDAD_EMP,
                    NOMBRES_EMP = d.NOMBRES_EMP,
                    TELEFONO_EMP = d.TELEFONO_EMP,
                    TIPO_EMP = d.TIPO_EMP
                };
            }
            return r.NOMBRES_EMP;
        }

    }


}
