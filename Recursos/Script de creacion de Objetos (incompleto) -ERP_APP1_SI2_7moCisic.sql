create database ERP_HistoriasClinicas
go
use ERP_HistoriasClinicas
go
/*==============================================================*/
/* Table: AREA_TRABAJO                                          */
/*==============================================================*/
create table AREA_TRABAJO (
   ID_AREA              numeric(15)          identity,
   NOMBRE_AREA          varchar(150)         null,
   GERENCIA_AREA        varchar(200)         null,
   DESCRIPCION_AREA     text                 null,
   ESTADO_AREA          varchar(50)          null,
   constraint PK_AREA_TRABAJO primary key (ID_AREA)
)
go

/*==============================================================*/
/* Table: CABECERA_CONSULTA                                     */
/*==============================================================*/
create table CABECERA_CONSULTA (
   ID_CON               numeric(15)          identity,
   CEDULA_EMP           varchar(13)          null,
   INDICACIONES_CON     text                 null,
   MOTIVO_CON           text                 null,
   PRESION_CON          numeric(3)           null,
   FECHA_CON            datetime             null,
   PESO_CON             decimal(3,2)         null,
   TEMPERATURA_CON      numeric(2)           null,
   SINTOMAS_CON         text                 null,
   OBSERVACIONES_CON    text                 null,
   constraint PK_CABECERA_CONSULTA primary key (ID_CON)
)
go

/*==============================================================*/
/* Table: DETALLE_CONSULTA                                      */
/*==============================================================*/
create table DETALLE_CONSULTA (
   ID_DET               varchar(15)          not null,
   ID_CON               numeric(15)          null,
   CANTIDAD_DET         numeric(2)           null,
   PVP_DET              decimal(4,2)         null,
   CANTDES_DET          numeric(3)           null,
   constraint PK_DETALLE_CONSULTA primary key (ID_DET)
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CEDULA_EMP           varchar(13)          not null,
   ID_AREA              numeric(15)          not null,
   CARGO_US             varchar(150)         not null,
   PASWORD_US           varchar(26)          not null,
   constraint PK_EMPLEADO primary key (CEDULA_EMP)
)
go

/*==============================================================*/
/* Table: HISTORIAS                                             */
/*==============================================================*/
create table HISTORIAS (
   CEDULA_EMP           varchar(13)          not null,
   PADRE_H              varchar(200)         null,
   MADRE_H              varchar(200)         null,
   FALLECIDO_P_H        char(2)              null,
   FALLECIDO_M_H        char(2)              null,
   CAUSAS_P_H           text                 null,
   CAUSAS_M_H           text                 null,
   NUM_H_H              numeric(2)           null,
   VIVO_H_H             numeric(2)           null,
   MUERTE_H_H           numeric(2)           null,
   CAUSAS_H_H           text                 null,
   SON_H                numeric(2)           null,
   VIVO_SON_H           numeric(2)           null,
   MUERTOS_SON_H        numeric(2)           null,
   CAUSAS_SON_H         text                 null,
   ALCOHOL_H            char(2)              null,
   TABACO_H             char(2)              null,
   DROGAS_H             char(2)              null,
   FRECUENCIA_TAB_H     text                 null,
   FRECUENCIA_ALC_H     text                 null,
   FRECUENCIA_DRO_H     text                 null,
   ALIMENTACION_H       text                 null,
   DIPSIA_H             char(2)              null,
   PARADIPSIA           char(2)              null,
   FRECUENCIA_PARADIPSIA text                 null,
   INSOMNIO_H           char(2)              null,
   FRECUENCIA_INSOM_H   text                 null,
   OTRO_H               text                 null,
   constraint PK_HISTORIAS primary key (CEDULA_EMP)
)
go

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   CEDULA_EMP           varchar(13)          not null,
   NOMBRES_EMP          varchar(400)         not null,
   NACIFECHA_EMP        datetime             not null,
   NACIONALIDAD_EMP     varchar(50)          not null,
   DIRECCIO_EMP         varchar(150)         not null,
   TELEFONO_EMP         varchar(15)          not null,
   EMAIL_EMP            varchar(100)         not null,
   ESTADO_EMP           varchar(30)          not null,
   TIPO_EMP             varchar(3)           not null,
   ACTIVO_EMP           varchar(50)          not null,
   CIUDADNACI_EMP       varchar(150)         null,
   constraint PK_PERSONA primary key (CEDULA_EMP)
)
go

alter table CABECERA_CONSULTA
   add constraint FK_CABECERA_REFERENCE_PERSONA foreign key (CEDULA_EMP)
      references PERSONA (CEDULA_EMP)
go

alter table DETALLE_CONSULTA
   add constraint FK_DETALLE__REFERENCE_CABECERA foreign key (ID_CON)
      references CABECERA_CONSULTA (ID_CON)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_PERSONA foreign key (CEDULA_EMP)
      references PERSONA (CEDULA_EMP)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_AREA_TRA foreign key (ID_AREA)
      references AREA_TRABAJO (ID_AREA)
go

alter table HISTORIAS
   add constraint FK_HISTORIA_REFERENCE_PERSONA foreign key (CEDULA_EMP)
      references PERSONA (CEDULA_EMP)
go

