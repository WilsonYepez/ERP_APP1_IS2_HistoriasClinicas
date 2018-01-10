using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP_HistoriasClinicas
{
    public class RecursosHumanos_LS
    {
        //Areas
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
        public int insertar_area(decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var d = new AREA_TRABAJO();
                d.ID_AREA = ID_AREA;
                d.NOMBRE_AREA = NOMBRE_AREA;
                d.ESTADO_AREA = ESTADO_AREA;
                d.DESCRIPCION_AREA = DESCRIPCION_AREA;
                d.GERENCIA_AREA = GERENCIA_AREA;
                ctx.AREA_TRABAJO.Add(d);
                ctx.SaveChanges();
            }
            return 0;

        }
        public int actualizar_area(Decimal ID_AREA, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
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
        //Empleado
        public Empleado2[] Listado_Empleados()
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var lst = from d in ctx.EMPLEADO
                          select d;
                Empleado2[] r = new Empleado2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Empleado2
                    {
                        CARGO_US= d.CARGO_US,
                        CEDULA_EMP=d.CEDULA_EMP,
                        PASWORD_US=d.PASWORD_US,
                        ID_AREA = d.ID_AREA
                    };
                }
                return r;
            }
        }
        public Empleado2 Empleado_Cedula(string CEDULA_EMP) 
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var d = ctx.EMPLEADO.Find(CEDULA_EMP);
                Empleado2 r = null;
                if (d != null)
                {
                    r = new Empleado2
                    {
                        ID_AREA = d.ID_AREA,
                        CEDULA_EMP = d.CEDULA_EMP,
                        CARGO_US = d.CARGO_US,
                        PASWORD_US = d.PASWORD_US
                    };
                }
                return r;
            }
        }
        public int insertar_Empleado( string CEDULA_EMP,decimal ID_AREA ,string CARGO_US , string PASWORD_US)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {

                var d = new EMPLEADO();
                d.CEDULA_EMP = CEDULA_EMP;
                d.CARGO_US = CARGO_US;
                d.PASWORD_US = PASWORD_US;
                d.ID_AREA = ID_AREA;
                ctx.EMPLEADO.Add(d);
                ctx.SaveChanges();
            }
            return 0;

        }
        

    }
}
