using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ARP_Historias_Clinicas
{
    public class RecursosHumanos
    {
        public Empleados2[] lista_empleados()
        {
            using( var ctx = new CapaEntityFramework())
            { 
                var lst = from d in ctx.EMPLEADOS
                          select d;
                Empleados2[] r = new Empleados2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++]= new Empleados2
                    {
                        CEDULA_EMP=d.CEDULA_EMP,
                        ID_AREA=d.ID_AREA,
                        NOMBRES_EMP= d.NOMBRES_EMP,
                        NACIFECHA_EMP= d.NACIFECHA_EMP,
                        NACIONALIDAD_EMP=d.NACIONALIDAD_EMP,
                        DIRECCIO_EMP=d.DIRECCIO_EMP,
                        TELEFONO_EMP=d.TELEFONO_EMP,
                        EMAIL_EMP=d.EMAIL_EMP,
                        ESTADO_EMP=d.ESTADO_EMP,
                        TIPO_EMP=d.TIPO_EMP,
                        ACTIVO_EMP=d.ACTIVO_EMP,
                        CARGO=d.CARGO
                    };
                }
                return r;
            }
        }
        public Empleados2[] lista_empleados_AREATRABAJO(String IDAREA)
        {
            using (var ctx = new CapaEntityFramework())
            {
                var lst = from d in ctx.EMPLEADOS
                          where d.
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
                        CARGO = d.CARGO
                    };
                }
                return r;
            }
        }
        public Empleados2 empleado_CEDULA(string CEDULA_EMP)
        {
            using (var ctx = new CapaEntityFramework())
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
                        CARGO = d.CARGO
                    };
                }
            }
            return r;
        }
    }
}
