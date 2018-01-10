using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hola a todos";
    }

    [WebMethod]
    public ERP_HistoriasClinicas.Area_trabajo2[] Listado_Areas()
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().Listado_Areas();
    }
    [WebMethod]
    public int Insertar_Area(Decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().insertar_area(ID_AREA, NOMBRE_AREA, GERENCIA_AREA, DESCRIPCION_AREA, ESTADO_AREA);
    }

    [WebMethod]
    public int insertar_historia(string CEDULA_EMP, string PADRE_H, string MADRE_H, string FALLECIDO_P_H, string FALLECIDO_M_H, string CAUSAS_P_H, string CAUSAS_M_H, Decimal NUM_H_H,
                    Decimal VIVO_H_H, decimal MUERTE_H_H, string CAUSAS_H_H, Decimal SON_H, Decimal VIVO_SON_H, Decimal MUERTOS_SON_H, string CAUSAS_SON_H, string ALCOHOL_H, string TABACO_H,
                    string DROGAS_H, string FRECUENCIA_TAB_H, string FRECUENCIA_ALC_H, string FRECUENCIA_DRO_H, string ALIMENTACION_H, string DIPSIA_H,
                    string PARADIPSIA, string FRECUENCIA_PARADIPSIA, string INSOMNIO_H, string FRECUENCIA_INSOM_H, string OTRO_H)
    {
        return new ERP_HistoriasClinicas.Consultorio().insertar_historia(CEDULA_EMP, PADRE_H, MADRE_H, FALLECIDO_P_H, FALLECIDO_M_H, CAUSAS_P_H, CAUSAS_M_H, NUM_H_H, VIVO_H_H, MUERTE_H_H, CAUSAS_H_H,
                    SON_H, VIVO_SON_H, MUERTOS_SON_H, CAUSAS_SON_H, ALCOHOL_H, TABACO_H, DROGAS_H, FRECUENCIA_TAB_H, FRECUENCIA_ALC_H, FRECUENCIA_DRO_H, ALIMENTACION_H, DIPSIA_H,
                    PARADIPSIA, FRECUENCIA_PARADIPSIA, INSOMNIO_H, FRECUENCIA_INSOM_H, OTRO_H);
    }

}
