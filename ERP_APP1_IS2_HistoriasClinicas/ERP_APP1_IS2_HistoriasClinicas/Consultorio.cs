using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_APP1_IS2_HistoriasClinicas
{
    class Consultorio
    {
        public Medicamentos2[] listado_medicamento()  //LISTA MEDICAMENTOS
        {
            using (var ctx = new ClinicaHistoriaEntities())
            {
                var lst = from d in ctx.DETALLE_CONSULTA
                          select d;

                Medicamentos2[] r = new Medicamentos2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Medicamentos2
                    {
                        ID_MEDICAMENTO = d.ID_MEDICAMENTO,
                        ID_CON = d.ID_CON,
                        CANTIDAD_MED = d.CANTIDAD_MED,
                        PVP_MED = d.PVP_MED,
                        CANTDES_MED = d.CANTDES_MED,
                    };
                }
                return r;
            }
        }

        public Medicamentos2 un_medicamento(int ID_MEDICAMENTO)     //LISTADOS 1 MEDICAMENTO
        {
            using (var ctx = new ClinicaHistoriaEntities())
            {
                var d = ctx.DETALLE_CONSULTA.Find(ID_MEDICAMENTO);
                Medicamentos2 r = null;
                if (d != null)
                {
                    r = new Medicamentos2
                    {
                        ID_MEDICAMENTO = d.ID_MEDICAMENTO,
                        ID_CON = d.ID_CON,
                        CANTIDAD_MED = d.CANTIDAD_MED,
                        PVP_MED = d.PVP_MED,
                        CANTDES_MED = d.CANTDES_MED,
                    };
                }
                return r;
            }
        }

        public int insertar_medi(string ID_MEDICAMENTO, int ID_CON,         //INSERTAR MEDICAMENTO
                        int CANTIDAD_MED,
                        int PVP_MED,
                        int CANTDES_MED)
        {
            using (var ctx = new ClinicaHistoriaEntities())
            {
                var d = new DETALLE_CONSULTA();
                d.ID_MEDICAMENTO = ID_MEDICAMENTO;
                d.ID_CON = ID_CON;
                d.CANTIDAD_MED = CANTIDAD_MED;
                d.PVP_MED = PVP_MED;
                d.CANTDES_MED = CANTDES_MED;
            }
            return 0;
        }
    }
}
