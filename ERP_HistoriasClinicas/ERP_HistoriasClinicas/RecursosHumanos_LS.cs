using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP_HistoriasClinicas
{
    public class RecursosHumanos_LS
    {
        public Area_trabajo2[] Listado_Areas()
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var lst = from d in ctx.AREA_TRABAJO
                          select d;
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
        public Area_trabajo2[] lista_areas_nombre(String NOMBRE_AREA)//listas por nombre de area 
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var lst = from d in ctx.AREA_TRABAJO
                          where d.NOMBRE_AREA.ToLower() == NOMBRE_AREA.ToLower()
                          select d;
                Area_trabajo2[] r = new Area_trabajo2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
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
        public Area_trabajo2 area_idArea(decimal ID_AREA)          //busqueda 
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var d = ctx.AREA_TRABAJO.Find(ID_AREA);
                Area_trabajo2 r = null;
                if (d != null)
                {
                    r = new Area_trabajo2
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
        public int insertar_area( string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var d = new AREA_TRABAJO();                
                d.NOMBRE_AREA = NOMBRE_AREA;
                d.ESTADO_AREA = ESTADO_AREA;
                d.DESCRIPCION_AREA = DESCRIPCION_AREA;
                d.GERENCIA_AREA = GERENCIA_AREA;
                ctx.AREA_TRABAJO.Add(d);
                ctx.SaveChanges();
            }
            return 0;

        }

        public int update_area(decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                ctx.trx_Insert_AreaTrabajo(ID_AREA, NOMBRE_AREA, GERENCIA_AREA, DESCRIPCION_AREA, ESTADO_AREA);
                return 0;
            }
        }
        public int delete_area(decimal ID_AREA)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                ctx.trx_Remove_AreaTrabajo(ID_AREA);
            }
            return 0;
        }


    }
}
