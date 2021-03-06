CREATE DATABASE[ERP_HistoriasClinicas]
GO
USE [ERP_HistoriasClinicas]
GO
/****** Object:  Table [dbo].[AREA_TRABAJO]    Script Date: 9/1/2018 23:40:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREA_TRABAJO](
	[ID_AREA] [numeric](15, 0) IDENTITY(1,1) NOT NULL,
	[NOMBRE_AREA] [varchar](150) NULL,
	[GERENCIA_AREA] [varchar](200) NULL,
	[DESCRIPCION_AREA] [text] NULL,
	[ESTADO_AREA] [varchar](50) NULL,
 CONSTRAINT [PK_AREA_TRABAJO] PRIMARY KEY CLUSTERED 
(
	[ID_AREA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 9/1/2018 23:40:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[CEDULA_EMP] [varchar](13) NOT NULL,
	[ID_AREA] [numeric](15, 0) NOT NULL,
	[CARGO_US] [varchar](150) NOT NULL,
	[PASWORD_US] [varchar](26) NOT NULL,
 CONSTRAINT [PK_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[CEDULA_EMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 9/1/2018 23:40:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONA](
	[CEDULA_EMP] [varchar](13) NOT NULL,
	[NOMBRES_EMP] [varchar](400) NOT NULL,
	[NACIFECHA_EMP] [datetime] NOT NULL,
	[NACIONALIDAD_EMP] [varchar](50) NOT NULL,
	[DIRECCIO_EMP] [varchar](150) NOT NULL,
	[TELEFONO_EMP] [varchar](15) NOT NULL,
	[EMAIL_EMP] [varchar](100) NOT NULL,
	[ESTADO_EMP] [varchar](30) NOT NULL,
	[TIPO_EMP] [varchar](3) NOT NULL,
	[ACTIVO_EMP] [varchar](50) NOT NULL,
	[CIUDADNACI_EMP] [varchar](150) NULL,
 CONSTRAINT [PK_PERSONA] PRIMARY KEY CLUSTERED 
(
	[CEDULA_EMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[listado_facturacion]    Script Date: 9/1/2018 23:40:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[listado_facturacion]
AS
SELECT        dbo.PERSONA.CEDULA_EMP, dbo.PERSONA.NOMBRES_EMP, dbo.PERSONA.NACIFECHA_EMP, dbo.PERSONA.NACIONALIDAD_EMP, dbo.PERSONA.DIRECCIO_EMP, dbo.PERSONA.TELEFONO_EMP, 
                         dbo.PERSONA.EMAIL_EMP, dbo.PERSONA.ESTADO_EMP, dbo.PERSONA.ACTIVO_EMP, dbo.PERSONA.CIUDADNACI_EMP, dbo.EMPLEADO.CARGO_US, dbo.AREA_TRABAJO.NOMBRE_AREA, 
                         dbo.AREA_TRABAJO.DESCRIPCION_AREA
FROM            dbo.AREA_TRABAJO INNER JOIN
                         dbo.EMPLEADO ON dbo.AREA_TRABAJO.ID_AREA = dbo.EMPLEADO.ID_AREA INNER JOIN
                         dbo.PERSONA ON dbo.EMPLEADO.CEDULA_EMP = dbo.PERSONA.CEDULA_EMP

GO
/****** Object:  Table [dbo].[CABECERA_CONSULTA]    Script Date: 9/1/2018 23:40:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CABECERA_CONSULTA](
	[ID_CON] [numeric](15, 0) IDENTITY(1,1) NOT NULL,
	[CEDULA_EMP] [varchar](13) NULL,
	[INDICACIONES_CON] [text] NULL,
	[MOTIVO_CON] [text] NULL,
	[PRESION_CON] [numeric](3, 0) NULL,
	[FECHA_CON] [datetime] NULL,
	[PESO_CON] [decimal](5, 2) NULL,
	[TEMPERATURA_CON] [numeric](2, 0) NULL,
	[SINTOMAS_CON] [text] NULL,
	[OBSERVACIONES_CON] [text] NULL,
 CONSTRAINT [PK_CABECERA_CONSULTA] PRIMARY KEY CLUSTERED 
(
	[ID_CON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DETALLE_CONSULTA]    Script Date: 9/1/2018 23:40:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_CONSULTA](
	[ID_DET] [varchar](15) NOT NULL,
	[ID_CON] [numeric](15, 0) NULL,
	[CANTIDAD_DET] [numeric](2, 0) NULL,
	[PVP_DET] [decimal](4, 2) NULL,
	[CANTDES_DET] [numeric](3, 0) NULL,
 CONSTRAINT [PK_DETALLE_CONSULTA] PRIMARY KEY CLUSTERED 
(
	[ID_DET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HISTORIAS]    Script Date: 9/1/2018 23:40:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HISTORIAS](
	[CEDULA_EMP] [varchar](13) NOT NULL,
	[PADRE_H] [varchar](200) NULL,
	[MADRE_H] [varchar](200) NULL,
	[FALLECIDO_P_H] [char](2) NULL,
	[FALLECIDO_M_H] [char](2) NULL,
	[CAUSAS_P_H] [text] NULL,
	[CAUSAS_M_H] [text] NULL,
	[NUM_H_H] [numeric](2, 0) NULL,
	[VIVO_H_H] [numeric](2, 0) NULL,
	[MUERTE_H_H] [numeric](2, 0) NULL,
	[CAUSAS_H_H] [text] NULL,
	[SON_H] [numeric](2, 0) NULL,
	[VIVO_SON_H] [numeric](2, 0) NULL,
	[MUERTOS_SON_H] [numeric](2, 0) NULL,
	[CAUSAS_SON_H] [text] NULL,
	[ALCOHOL_H] [char](2) NULL,
	[TABACO_H] [char](2) NULL,
	[DROGAS_H] [char](2) NULL,
	[FRECUENCIA_TAB_H] [text] NULL,
	[FRECUENCIA_ALC_H] [text] NULL,
	[FRECUENCIA_DRO_H] [text] NULL,
	[ALIMENTACION_H] [text] NULL,
	[DIPSIA_H] [char](2) NULL,
	[PARADIPSIA] [char](2) NULL,
	[FRECUENCIA_PARADIPSIA] [text] NULL,
	[INSOMNIO_H] [char](2) NULL,
	[FRECUENCIA_INSOM_H] [text] NULL,
	[OTRO_H] [text] NULL,
 CONSTRAINT [PK_HISTORIAS] PRIMARY KEY CLUSTERED 
(
	[CEDULA_EMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[CABECERA_CONSULTA]  WITH CHECK ADD  CONSTRAINT [FK_CABECERA_REFERENCE_PERSONA] FOREIGN KEY([CEDULA_EMP])
REFERENCES [dbo].[PERSONA] ([CEDULA_EMP])
GO
ALTER TABLE [dbo].[CABECERA_CONSULTA] CHECK CONSTRAINT [FK_CABECERA_REFERENCE_PERSONA]
GO
ALTER TABLE [dbo].[DETALLE_CONSULTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE__REFERENCE_CABECERA] FOREIGN KEY([ID_CON])
REFERENCES [dbo].[CABECERA_CONSULTA] ([ID_CON])
GO
ALTER TABLE [dbo].[DETALLE_CONSULTA] CHECK CONSTRAINT [FK_DETALLE__REFERENCE_CABECERA]
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADO_REFERENCE_AREA_TRA] FOREIGN KEY([ID_AREA])
REFERENCES [dbo].[AREA_TRABAJO] ([ID_AREA])
GO
ALTER TABLE [dbo].[EMPLEADO] CHECK CONSTRAINT [FK_EMPLEADO_REFERENCE_AREA_TRA]
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADO_REFERENCE_PERSONA] FOREIGN KEY([CEDULA_EMP])
REFERENCES [dbo].[PERSONA] ([CEDULA_EMP])
GO
ALTER TABLE [dbo].[EMPLEADO] CHECK CONSTRAINT [FK_EMPLEADO_REFERENCE_PERSONA]
GO
ALTER TABLE [dbo].[HISTORIAS]  WITH CHECK ADD  CONSTRAINT [FK_HISTORIA_REFERENCE_PERSONA] FOREIGN KEY([CEDULA_EMP])
REFERENCES [dbo].[PERSONA] ([CEDULA_EMP])
GO
ALTER TABLE [dbo].[HISTORIAS] CHECK CONSTRAINT [FK_HISTORIA_REFERENCE_PERSONA]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[14] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "AREA_TRABAJO"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 185
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EMPLEADO"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 190
               Right = 443
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PERSONA"
            Begin Extent = 
               Top = 6
               Left = 481
               Bottom = 197
               Right = 686
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1650
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1140
         Width = 1290
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'listado_facturacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'listado_facturacion'
GO
