﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP_HistoriasClinicas
{
    public class Area_trabajo2
    {
        public decimal ID_AREA { get; set; }
        public string NOMBRE_AREA { get; set; }
        public string GERENCIA_AREA { get; set; }
        public string DESCRIPCION_AREA { get; set; }
        public string ESTADO_AREA { get; set; }
    }
    public class Cabecera_consulta2
    {
        public decimal ID_CON { get; set; }
        public string CEDULA_EMP { get; set; }
        public string INDICACIONES_CON { get; set; }
        public string MOTIVO_CON { get; set; }
        public Nullable<decimal> PRESION_CON { get; set; }
        public Nullable<System.DateTime> FECHA_CON { get; set; }
        public Nullable<decimal> PESO_CON { get; set; }
        public Nullable<decimal> TEMPERATURA_CON { get; set; }
        public string SINTOMAS_CON { get; set; }
        public string OBSERVACIONES_CON { get; set; }
    }
    public class Detalle_Consulta2
    {
        public string ID_DET { get; set; }
        public Nullable<decimal> ID_CON { get; set; }
        public Nullable<decimal> CANTIDAD_DET { get; set; }
        public Nullable<decimal> PVP_DET { get; set; }
        public Nullable<decimal> CANTDES_DET { get; set; }
    }
    public class Empleado2
    {
        public string CEDULA_EMP { get; set; }
        public decimal ID_AREA { get; set; }
        public string CARGO_US { get; set; }
        public string PASWORD_US { get; set; }
        public string ACTIVO_EMP { get; set; }
    }
    public class Historias2
    {
        public string CEDULA_EMP { get; set; }
        public string PADRE_H { get; set; }
        public string MADRE_H { get; set; }
        public string FALLECIDO_P_H { get; set; }
        public string FALLECIDO_M_H { get; set; }
        public string CAUSAS_P_H { get; set; }
        public string CAUSAS_M_H { get; set; }
        public Nullable<decimal> NUM_H_H { get; set; }
        public Nullable<decimal> VIVO_H_H { get; set; }
        public Nullable<decimal> MUERTE_H_H { get; set; }
        public string CAUSAS_H_H { get; set; }
        public Nullable<decimal> SON_H { get; set; }
        public Nullable<decimal> VIVO_SON_H { get; set; }
        public Nullable<decimal> MUERTOS_SON_H { get; set; }
        public string CAUSAS_SON_H { get; set; }
        public string ALCOHOL_H { get; set; }
        public string TABACO_H { get; set; }
        public string DROGAS_H { get; set; }
        public string FRECUENCIA_TAB_H { get; set; }
        public string FRECUENCIA_ALC_H { get; set; }
        public string FRECUENCIA_DRO_H { get; set; }
        public string ALIMENTACION_H { get; set; }
        public string DIPSIA_H { get; set; }
        public string PARADIPSIA { get; set; }
        public string FRECUENCIA_PARADIPSIA { get; set; }
        public string INSOMNIO_H { get; set; }
        public string FRECUENCIA_INSOM_H { get; set; }
        public string OTRO_H { get; set; }
    }
    public class Listado_facturacion2
    {
        public string CEDULA_EMP { get; set; }
        public string NOMBRES_EMP { get; set; }
        public System.DateTime NACIFECHA_EMP { get; set; }
        public string NACIONALIDAD_EMP { get; set; }
        public string DIRECCIO_EMP { get; set; }
        public string TELEFONO_EMP { get; set; }
        public string EMAIL_EMP { get; set; }
        public string ESTADO_EMP { get; set; }
        public string ACTIVO_EMP { get; set; }
        public string CIUDADNACI_EMP { get; set; }
        public string CARGO_US { get; set; }
        public string NOMBRE_AREA { get; set; }
        public string DESCRIPCION_AREA { get; set; }
    }
    public class Persona2
    {
        public string CEDULA_EMP { get; set; }
        public string NOMBRES_EMP { get; set; }
        public System.DateTime NACIFECHA_EMP { get; set; }
        public string NACIONALIDAD_EMP { get; set; }
        public string DIRECCIO_EMP { get; set; }
        public string TELEFONO_EMP { get; set; }
        public string EMAIL_EMP { get; set; }
        public string ESTADO_EMP { get; set; }
        public string TIPO_EMP { get; set; }
        public string CIUDADNACI_EMP { get; set; }
    }

}
