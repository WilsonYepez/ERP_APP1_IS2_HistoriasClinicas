using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ERP_HistoriasClinicas
{
    public class Consultorio
    {
        //CRUD HISTORIAS CLINICAS
        public Historias2[] listado_historias()
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var lst = from d in ctx.HISTORIAS
                          select d;
                Historias2[] r = new Historias2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Historias2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        PADRE_H = d.PADRE_H,
                        MADRE_H = d.MADRE_H,
                        FALLECIDO_P_H = d.FALLECIDO_P_H,
                        FALLECIDO_M_H = d.FALLECIDO_M_H,
                        CAUSAS_P_H = d.CAUSAS_P_H,
                        CAUSAS_M_H = d.CAUSAS_M_H,
                        NUM_H_H = d.NUM_H_H,
                        VIVO_H_H = d.VIVO_H_H,
                        MUERTE_H_H = d.MUERTE_H_H,
                        CAUSAS_H_H = d.CAUSAS_H_H,
                        SON_H = d.SON_H,
                        VIVO_SON_H = d.VIVO_SON_H,
                        MUERTOS_SON_H = d.MUERTOS_SON_H,
                        CAUSAS_SON_H = d.CAUSAS_SON_H,
                        ALCOHOL_H = d.ALCOHOL_H,
                        TABACO_H = d.TABACO_H,
                        DROGAS_H = d.DROGAS_H,
                        FRECUENCIA_TAB_H = d.FRECUENCIA_TAB_H,
                        FRECUENCIA_ALC_H = d.FRECUENCIA_ALC_H,
                        FRECUENCIA_DRO_H = d.FRECUENCIA_DRO_H,
                        ALIMENTACION_H = d.ALIMENTACION_H,
                        DIPSIA_H = d.DIPSIA_H,
                        PARADIPSIA = d.PARADIPSIA,
                        FRECUENCIA_PARADIPSIA = d.FRECUENCIA_PARADIPSIA,
                        INSOMNIO_H = d.INSOMNIO_H,
                        FRECUENCIA_INSOM_H = d.FRECUENCIA_INSOM_H,
                        OTRO_H = d.OTRO_H,
                    };
                }
                return r;
            }
        }

        public Historias2 una_historia(string CEDULA_EMP)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var d = ctx.HISTORIAS.Find(CEDULA_EMP);
                Historias2 r = null;
                if (d!=null)
                {
                    r = new Historias2
                    {
                        CEDULA_EMP = d.CEDULA_EMP,
                        PADRE_H = d.PADRE_H,
                        MADRE_H = d.MADRE_H,
                        FALLECIDO_P_H = d.FALLECIDO_P_H,
                        FALLECIDO_M_H = d.FALLECIDO_M_H,
                        CAUSAS_P_H = d.CAUSAS_P_H,
                        CAUSAS_M_H = d.CAUSAS_M_H,
                        NUM_H_H = d.NUM_H_H,
                        VIVO_H_H = d.VIVO_H_H,
                        MUERTE_H_H = d.MUERTE_H_H,
                        CAUSAS_H_H = d.CAUSAS_H_H,
                        SON_H = d.SON_H,
                        VIVO_SON_H = d.VIVO_SON_H,
                        MUERTOS_SON_H = d.MUERTOS_SON_H,
                        CAUSAS_SON_H = d.CAUSAS_SON_H,
                        ALCOHOL_H = d.ALCOHOL_H,
                        TABACO_H = d.TABACO_H,
                        DROGAS_H = d.DROGAS_H,
                        FRECUENCIA_TAB_H = d.FRECUENCIA_TAB_H,
                        FRECUENCIA_ALC_H = d.FRECUENCIA_ALC_H,
                        FRECUENCIA_DRO_H = d.FRECUENCIA_DRO_H,
                        ALIMENTACION_H = d.ALIMENTACION_H,
                        DIPSIA_H = d.DIPSIA_H,
                        PARADIPSIA = d.PARADIPSIA,
                        FRECUENCIA_PARADIPSIA = d.FRECUENCIA_PARADIPSIA,
                        INSOMNIO_H = d.INSOMNIO_H,
                        FRECUENCIA_INSOM_H = d.FRECUENCIA_INSOM_H,
                        OTRO_H = d.OTRO_H,
                    };
                }
                return r;
            }
        }

        public int insertar_historia(string CEDULA_EMP, string PADRE_H, string MADRE_H, string FALLECIDO_P_H, string FALLECIDO_M_H, string CAUSAS_P_H, string CAUSAS_M_H, Decimal NUM_H_H,
                    Decimal VIVO_H_H, Decimal MUERTE_H_H, string CAUSAS_H_H, Decimal SON_H, Decimal VIVO_SON_H, Decimal MUERTOS_SON_H, string CAUSAS_SON_H, string ALCOHOL_H, string TABACO_H,
                    string DROGAS_H, string FRECUENCIA_TAB_H, string FRECUENCIA_ALC_H, string FRECUENCIA_DRO_H, string ALIMENTACION_H, string DIPSIA_H,
                    string PARADIPSIA, string FRECUENCIA_PARADIPSIA, string INSOMNIO_H, string FRECUENCIA_INSOM_H, string OTRO_H)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var d = new HISTORIAS();
                d.CEDULA_EMP = d.CEDULA_EMP;
                d.PADRE_H = PADRE_H;
                d.MADRE_H = MADRE_H;
                d.FALLECIDO_P_H = FALLECIDO_P_H;
                d.FALLECIDO_M_H = FALLECIDO_M_H;
                d.CAUSAS_P_H = CAUSAS_P_H;
                d.CAUSAS_M_H = CAUSAS_M_H;
                d.NUM_H_H = NUM_H_H;
                d.VIVO_H_H = VIVO_H_H;
                d.MUERTE_H_H = MUERTE_H_H;
                d.CAUSAS_H_H = CAUSAS_H_H;
                d.SON_H = SON_H;
                d.VIVO_SON_H = VIVO_SON_H;
                d.MUERTOS_SON_H = MUERTOS_SON_H;
                d.CAUSAS_SON_H = CAUSAS_SON_H;
                d.ALCOHOL_H = ALCOHOL_H;
                d.TABACO_H = TABACO_H;
                d.DROGAS_H = DROGAS_H;
                d.FRECUENCIA_TAB_H = FRECUENCIA_TAB_H;
                d.FRECUENCIA_ALC_H = FRECUENCIA_ALC_H;
                d.FRECUENCIA_DRO_H = FRECUENCIA_DRO_H;
                d.ALIMENTACION_H = ALIMENTACION_H;
                d.DIPSIA_H = DIPSIA_H;
                d.PARADIPSIA = PARADIPSIA;
                d.FRECUENCIA_PARADIPSIA = FRECUENCIA_PARADIPSIA;
                d.INSOMNIO_H = INSOMNIO_H;
                d.FRECUENCIA_INSOM_H = FRECUENCIA_INSOM_H;
                d.OTRO_H = OTRO_H;

                ctx.HISTORIAS.Add(d);
                ctx.SaveChanges();
            }
            return 0;
        }

        public int actualizar_hitoria(string CEDULA_EMP, string PADRE_H, string MADRE_H, string FALLECIDO_P_H, string FALLECIDO_M_H, string CAUSAS_P_H, string CAUSAS_M_H, decimal NUM_H_H,
                    decimal VIVO_H_H, decimal MUERTE_H_H, string CAUSAS_H_H, decimal SON_H, decimal VIVO_SON_H, decimal MUERTOS_SON_H, string CAUSAS_SON_H, string ALCOHOL_H, string TABACO_H,
                    string DROGAS_H, string FRECUENCIA_TAB_H, string FRECUENCIA_ALC_H, string FRECUENCIA_DRO_H, string ALIMENTACION_H, string DIPSIA_H,
                    string PARADIPSIA, string FRECUENCIA_PARADIPSIA, string INSOMNIO_H, string FRECUENCIA_INSOM_H, string OTRO_H)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                ctx.trx_Update_Historia(CEDULA_EMP, PADRE_H, MADRE_H, FALLECIDO_P_H, FALLECIDO_M_H, CAUSAS_P_H, CAUSAS_M_H, NUM_H_H, VIVO_H_H, MUERTE_H_H, CAUSAS_H_H,
                    SON_H, VIVO_SON_H, MUERTOS_SON_H, CAUSAS_SON_H, ALCOHOL_H, TABACO_H, DROGAS_H, FRECUENCIA_TAB_H, FRECUENCIA_ALC_H, FRECUENCIA_DRO_H, ALIMENTACION_H, DIPSIA_H,
                    PARADIPSIA, FRECUENCIA_PARADIPSIA, INSOMNIO_H, FRECUENCIA_INSOM_H, OTRO_H);
                return 0;
            }
        }

        public int borrar_historia(string CEDULA_EMP)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                    var d = ctx.HISTORIAS.Find(CEDULA_EMP);
                    if (d != null)
                    {
                        ctx.HISTORIAS.Remove(d);
                    }
            }
            return 0;
        }

        //CRUD CONSULTA
        public Cabecera_consulta2[] lista_consulta()
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var lst = from d in ctx.CABECERA_CONSULTA
                          select d;
                Cabecera_consulta2[] r = new Cabecera_consulta2[lst.Count()];
                int i = 0;
                foreach (var d in lst)
                {
                    r[i++] = new Cabecera_consulta2
                    {
                        ID_CON = d.ID_CON,
                        CEDULA_EMP = d.CEDULA_EMP,
                        INDICACIONES_CON = d.INDICACIONES_CON,
                        MOTIVO_CON = d.MOTIVO_CON,
                        PRESION_CON = d.PRESION_CON,
                        FECHA_CON = d.FECHA_CON,
                        PESO_CON = d.PESO_CON,
                        TEMPERATURA_CON = d.TEMPERATURA_CON,
                        SINTOMAS_CON = d.SINTOMAS_CON,
                        OBSERVACIONES_CON = d.OBSERVACIONES_CON,
                    };
                }
                return r;
            }
        }

        public Cabecera_consulta2 una_consulta(int ID_CON)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                var d = ctx.CABECERA_CONSULTA.Find(ID_CON);
                Cabecera_consulta2 r = null;
                    if (d != null)
                    {
                        r = new Cabecera_consulta2
                        {
                            ID_CON = d.ID_CON,
                            CEDULA_EMP = d.CEDULA_EMP,
                            INDICACIONES_CON = d.INDICACIONES_CON,
                            MOTIVO_CON = d.MOTIVO_CON,
                            PRESION_CON = d.PRESION_CON,
                            FECHA_CON = d.FECHA_CON,
                            PESO_CON = d.PESO_CON,
                            TEMPERATURA_CON = d.TEMPERATURA_CON,
                            SINTOMAS_CON = d.SINTOMAS_CON,
                            OBSERVACIONES_CON = d.OBSERVACIONES_CON,
                        };
                }
                return r;
            }
        }

        public int insertar_consulta(Decimal ID_CON, string CEDULA_EMP,string INDICACIONES_CON, string MOTIVO_CON, Decimal PRESION_CON,
                            DateTime FECHA_CON, Decimal PESO_CON, Decimal TEMPERATURA_CON, string SINTOMAS_CON, string OBSERVACIONES_CON)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                ctx.trx_Insert_CabeceraConsultum(ID_CON,CEDULA_EMP, INDICACIONES_CON,MOTIVO_CON, PRESION_CON, FECHA_CON, PESO_CON, TEMPERATURA_CON, 
                    SINTOMAS_CON,OBSERVACIONES_CON);
                return 0;
            }
        }

        public int actualizar_consulta(Decimal ID_CON, string CEDULA_EMP, string INDICACIONES_CON, string MOTIVO_CON, Decimal PRESION_CON,
                            DateTime FECHA_CON, Decimal PESO_CON, Decimal TEMPERATURA_CON, string SINTOMAS_CON, string OBSERVACIONES_CON)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                ctx.trx_Update_CabeceraConsultum(ID_CON, CEDULA_EMP, INDICACIONES_CON, MOTIVO_CON, PRESION_CON, FECHA_CON, PESO_CON, TEMPERATURA_CON,
                    SINTOMAS_CON, OBSERVACIONES_CON);
                return 0;
            }
        }

        public int borrar_consulta(Decimal ID_CON)
        {
            using (var ctx = new ERP_HistoriasClinicasEntities())
            {
                ctx.trx_Remove_CabeceraConsultum(ID_CON);
                return 0;
            }
        }

        //CRUD DETALLE
        
    }
}
