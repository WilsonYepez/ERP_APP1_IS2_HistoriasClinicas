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
    
    public partial class PERSONA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PERSONA()
        {
            this.CABECERA_CONSULTA = new HashSet<CABECERA_CONSULTA>();
        }
    
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
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CABECERA_CONSULTA> CABECERA_CONSULTA { get; set; }
        public virtual EMPLEADO EMPLEADO { get; set; }
        public virtual HISTORIAS HISTORIAS { get; set; }
    }
}