using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebService_Historia
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebService_Historia : System.Web.Services.WebService
{

    public WebService_Historia()
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
    public int Insertar_Area(decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
    {
        return new ERP_HistoriasClinicas.RecursosHumanos_LS().insertar_area(ID_AREA, NOMBRE_AREA, GERENCIA_AREA, DESCRIPCION_AREA, ESTADO_AREA);
    }

}
