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
    }
}
