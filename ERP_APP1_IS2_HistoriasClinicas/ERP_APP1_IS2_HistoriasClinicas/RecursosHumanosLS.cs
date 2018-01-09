using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_APP1_IS2_HistoriasClinicas
{
    public class RecursosHumanosLS
    {
        public Usuarios2[] listado_usuarios()
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var lst = from d in ctx.USUARIOS
                          select d;
                Usuarios2[] r = new Usuarios2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Usuarios2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        PASWORD_USER = d.PASWORD_USER,
                        TIPO = d.TIPO
                    };
                }
                return r;
            }
        }
        public Usuarios2 usuarios_ced(String CEDULA_EMP)
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.USUARIOS.Find(CEDULA_EMP);
                Usuarios2 r = null;
                if (d != null)
                {
                    r = new Usuarios2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        TIPO = d.TIPO = d.TIPO,
                        PASWORD_USER = d.PASWORD_USER
                    };
                }
                return r;
            }
        }
        public int insertar_usuarios(string CEDULA_EMP, string PASWORD_USER, string TIPO)
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = new USUARIOS();
                d.CEDULA_EMP = CEDULA_EMP;
                d.PASWORD_USER = PASWORD_USER;
                d.TIPO = TIPO;
                ctx.USUARIOS.Add(d);
                ctx.SaveChanges();
            }
            return 0;
        }
        public int update_usuario(string CEDULA_EMP, string PASWORD_USER, string TIPO)
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.USUARIOS.Find(CEDULA_EMP);
                if (d != null)
                {
                    d.PASWORD_USER = PASWORD_USER;
                    d.TIPO = TIPO;
                }
                ctx.SaveChanges();
            }
            return 0;
        }
        public int delete_usuario(string CEDULA_EMP)
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.USUARIOS.Find(CEDULA_EMP);
                if (d != null)
                {
                    ctx.USUARIOS.Remove(d);
                }
            }
            return 0;
        }

        public Empleados2[] lista_empleados()       //LISTADO DE EMPLEADOS COMPLETO
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var lst = from d in ctx.EMPLEADOS
                          select d;
                Empleados2[] r = new Empleados2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Empleados2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        ID_AREA = d.ID_AREA,
                        NOMBRES_EMP = d.NOMBRES_EMP,
                        NACIFECHA_EMP = d.NACIFECHA_EMP,
                        NACIONALIDAD_EMP = d.NACIONALIDAD_EMP,
                        DIRECCIO_EMP = d.DIRECCIO_EMP,
                        TELEFONO_EMP = d.TELEFONO_EMP,
                        EMAIL_EMP = d.EMAIL_EMP,
                        ESTADO_EMP = d.ESTADO_EMP,
                        TIPO_EMP = d.TIPO_EMP,
                        ACTIVO_EMP = d.ACTIVO_EMP,
                        ID_H = d.ID_H,
                        CIUDADNACI_EMP = d.CIUDADNACI_EMP
                    };
                }
                return r;
            }
        }
        public Empleados2[] lista_empleados_AREATRABAJO(decimal IDAREA)     //EMPLEADOS POR AREA DE TRABAJO
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var lst = from d in ctx.EMPLEADOS
                          where d.ID_AREA == IDAREA
                          select d;
                Empleados2[] r = new Empleados2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Empleados2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        ID_AREA = d.ID_AREA,
                        NOMBRES_EMP = d.NOMBRES_EMP,
                        NACIFECHA_EMP = d.NACIFECHA_EMP,
                        NACIONALIDAD_EMP = d.NACIONALIDAD_EMP,
                        DIRECCIO_EMP = d.DIRECCIO_EMP,
                        TELEFONO_EMP = d.TELEFONO_EMP,
                        EMAIL_EMP = d.EMAIL_EMP,
                        ESTADO_EMP = d.ESTADO_EMP,
                        TIPO_EMP = d.TIPO_EMP,
                        ACTIVO_EMP = d.ACTIVO_EMP,
                        ID_H = d.ID_H,
                        CIUDADNACI_EMP = d.CIUDADNACI_EMP
                    };
                }
                return r;
            }
        }
        public Empleados2 empleado_CEDULA(string CEDULA_EMP)        //EMPLEADOS  BUSCAR POR CEDULA
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.EMPLEADOS.Find(CEDULA_EMP);
                Empleados2 r = null;
                if (d != null)
                {
                    r = new Empleados2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        ID_AREA = d.ID_AREA,
                        NOMBRES_EMP = d.NOMBRES_EMP,
                        NACIFECHA_EMP = d.NACIFECHA_EMP,
                        NACIONALIDAD_EMP = d.NACIONALIDAD_EMP,
                        DIRECCIO_EMP = d.DIRECCIO_EMP,
                        TELEFONO_EMP = d.TELEFONO_EMP,
                        EMAIL_EMP = d.EMAIL_EMP,
                        ESTADO_EMP = d.ESTADO_EMP,
                        TIPO_EMP = d.TIPO_EMP,
                        ACTIVO_EMP = d.ACTIVO_EMP,
                        ID_H = d.ID_H,
                        CIUDADNACI_EMP = d.CIUDADNACI_EMP
                    };
                }
                return r;
            }
        }
        public int insertar_empleado(string CEDULA_EMP, decimal ID_AREA, decimal ID_H, string NOMBRES_EMP, System.DateTime NACIFECHA_EMP, string NACIONALIDAD_EMP, string DIRECCIO_EMP, string TELEFONO_EMP, string EMAIL_EMP, string ESTADO_EMP, string TIPO_EMP, string ACTIVO_EMP, string CIUDADNACI_EMP)
        {                                                       //INSERTAR EMPLEADOS
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = new EMPLEADOS();
                d.CEDULA_EMP = CEDULA_EMP;
                d.ID_AREA = ID_AREA;
                d.ID_H = ID_H;
                d.NOMBRES_EMP = NOMBRES_EMP;
                d.NACIFECHA_EMP = NACIFECHA_EMP;
                d.NACIONALIDAD_EMP = NACIONALIDAD_EMP;
                d.DIRECCIO_EMP = DIRECCIO_EMP;
                d.TELEFONO_EMP = TELEFONO_EMP;
                d.EMAIL_EMP = EMAIL_EMP;
                d.ESTADO_EMP = ESTADO_EMP;
                d.TIPO_EMP = TIPO_EMP;
                d.ACTIVO_EMP = ACTIVO_EMP;
                d.CIUDADNACI_EMP = CIUDADNACI_EMP;
                ctx.EMPLEADOS.Add(d);
                ctx.SaveChanges();
            }
            return 0;
        }
        public int update_empleado(string CEDULA_EMP, decimal ID_AREA, decimal ID_H, string NOMBRES_EMP, System.DateTime NACIFECHA_EMP, string NACIONALIDAD_EMP, string DIRECCIO_EMP, string TELEFONO_EMP, string EMAIL_EMP, string ESTADO_EMP, string TIPO_EMP, string ACTIVO_EMP, string CIUDADNACI_EMP)
        {                                                       //UPDATE EMPLEADO
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.EMPLEADOS.Find(CEDULA_EMP);
                if (d != null)
                {
                    d.ID_AREA = ID_AREA;
                    d.ID_H = ID_H;
                    d.NOMBRES_EMP = NOMBRES_EMP;
                    d.NACIFECHA_EMP = NACIFECHA_EMP;
                    d.NACIONALIDAD_EMP = NACIONALIDAD_EMP;
                    d.DIRECCIO_EMP = DIRECCIO_EMP;
                    d.TELEFONO_EMP = TELEFONO_EMP;
                    d.EMAIL_EMP = EMAIL_EMP;
                    d.ESTADO_EMP = ESTADO_EMP;
                    d.TIPO_EMP = TIPO_EMP;
                    d.ACTIVO_EMP = ACTIVO_EMP;
                    d.CIUDADNACI_EMP = CIUDADNACI_EMP;
                }
                ctx.SaveChanges();
            }
            return 0;
        }
        public int delete_empleado(string CEDULA_EMP)       //BORRAR EMPLEADO
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.EMPLEADOS.Find(CEDULA_EMP);
                if (d != null)
                {
                    ctx.EMPLEADOS.Remove(d);
                }
            }
            return 0;
        }

        //Areas de Trabajo
        public Areas2[] lista_areas()       
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var lst = from d in ctx.AREA_TRABAJO
                          select d;
                Areas2[] r = new Areas2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Areas2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        ID_AREA = d.ID_AREA,
                        DESCRIPCION_AREA = d.DESCRIPCION_AREA,
                        ESTADO_AREA = d.ESTADO_AREA,
                        GERENCIA_AREA = d.ESTADO_AREA,
                        NOMBRE_AREA = d.NOMBRE_AREA
                    };
                }
                return r;
            }
        }
        public Areas2[] lista_areas_nombre(String NOMBRE_AREA)        //listas por nombre de area 
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var lst = from d in ctx.AREA_TRABAJO
                          where d.NOMBRE_AREA.ToLower() == NOMBRE_AREA.ToLower()
                          select d;
                Areas2[] r = new Areas2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Areas2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        ID_AREA = d.ID_AREA,
                        DESCRIPCION_AREA = d.DESCRIPCION_AREA,
                        ESTADO_AREA = d.ESTADO_AREA,
                        GERENCIA_AREA = d.ESTADO_AREA,
                        NOMBRE_AREA = d.NOMBRE_AREA
                    };
                }
                return r;
            }
        }
        public Areas2 area_idArea(decimal ID_AREA)          //busqueda 
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.AREA_TRABAJO.Find(ID_AREA);
                Areas2 r = null;
                if (d != null)
                {
                    r = new Areas2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        ID_AREA = d.ID_AREA,
                        DESCRIPCION_AREA = d.DESCRIPCION_AREA,
                        ESTADO_AREA = d.ESTADO_AREA,
                        GERENCIA_AREA = d.ESTADO_AREA,
                        NOMBRE_AREA = d.NOMBRE_AREA
                    };
                }
                return r;
            }
        }
        public int insertar_area(decimal ID_AREA, string CEDULA_EMP, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = new AREA_TRABAJO();
                d.CEDULA_EMP = CEDULA_EMP;
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
        public int update_area(decimal ID_AREA, string CEDULA_EMP, string NOMBRE_AREA, string GERENCIA_AREA, string DESCRIPCION_AREA, string ESTADO_AREA)
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.AREA_TRABAJO.Find(ID_AREA);
                if (d != null)
                {
                    d.NOMBRE_AREA = NOMBRE_AREA;
                    d.CEDULA_EMP = CEDULA_EMP;
                    d.DESCRIPCION_AREA = DESCRIPCION_AREA;
                    d.ESTADO_AREA = ESTADO_AREA;
                    d.GERENCIA_AREA = GERENCIA_AREA;
                    d.ESTADO_AREA = ESTADO_AREA;
                }
                ctx.SaveChanges();
            }
            return 0;
        }
        public int delete_area(decimal ID_AREA)
        {
            using (var ctx = new ClinicaHistoriaEntities1())
            {
                var d = ctx.AREA_TRABAJO.Find(ID_AREA);
                if (d != null)
                {
                    ctx.AREA_TRABAJO.Remove(d);
                }
            }
            return 0;
        }
    }


}
