//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ERP_HistoriasClinicas
{
    using System;
    using System.Collections.Generic;
    
    public partial class EMPLEADO
    {
        public string CEDULA_EMP { get; set; }
        public decimal ID_AREA { get; set; }
        public string CARGO_US { get; set; }
        public string PASWORD_US { get; set; }
        public string ACTIVO_EMP { get; set; }
    
        public virtual AREA_TRABAJO AREA_TRABAJO { get; set; }
        public virtual PERSONA PERSONA { get; set; }
    }
}
