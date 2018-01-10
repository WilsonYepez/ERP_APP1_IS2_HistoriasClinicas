using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP_HistoriasClinicas
{
    class RecursosHumanos_LS
    {
        public Area_trabajo2[] Listado_Areas()
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var lst = ctx.trx_Get_AreaTrabajosAll();
                Area_trabajo2[] r = new Area_trabajo2[lst.Count()];
                int i = 0;
                foreach(var d in lst)
                {
                    r[i++] = new Area_trabajo2
                    {
                        ID_AREA = d.ID_AREA,
                        NOMBRE_AREA = d.NOMBRE_AREA,
                        DESCRIPCION_AREA = d.DESCRIPCION_AREA,
                        ESTADO_AREA = d.ESTADO_AREA,
                        GERENCIA_AREA = d.GERENCIA_AREA
                    };
                }
                return r;
            }
        }
    }
}
