//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ERP_HistoriasClinicas_LS
{
    using System;
    using System.Collections.Generic;
    
    public partial class HISTORIAS
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
    
        public virtual PERSONA PERSONA { get; set; }
    }
}