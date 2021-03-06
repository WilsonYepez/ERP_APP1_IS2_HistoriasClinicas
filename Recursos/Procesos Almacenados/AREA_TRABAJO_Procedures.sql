--region Drop Existing Procedures

IF OBJECT_ID('dbo.trx_Insert_AreaTrabajo') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Insert_AreaTrabajo]

IF OBJECT_ID('dbo.trx_Update_AreaTrabajo') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Update_AreaTrabajo]

IF OBJECT_ID('dbo.trx_Save_AreaTrabajo') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Save_AreaTrabajo]

IF OBJECT_ID('dbo.trx_Remove_AreaTrabajo') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Remove_AreaTrabajo]

IF OBJECT_ID('dbo.trx_Get_AreaTrabajo') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Get_AreaTrabajo]

IF OBJECT_ID('dbo.trx_Get_AreaTrabajosAll') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Get_AreaTrabajosAll]

--endregion

GO

--region [dbo].[trx_Insert_AreaTrabajo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Insert_AreaTrabajo]
-- Date Generated: martes, 9 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Insert_AreaTrabajo]
	@ID_AREA numeric(15, 0),
	@NOMBRE_AREA varchar(150),
	@GERENCIA_AREA varchar(200),
	@DESCRIPCION_AREA text,
	@ESTADO_AREA varchar(50)
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN   TRANSACTION
    
    INSERT  INTO [dbo].[AREA_TRABAJO] (
    	    [ID_AREA],
			[NOMBRE_AREA],
			[GERENCIA_AREA],
			[DESCRIPCION_AREA],
			[ESTADO_AREA] ) 
    VALUES  (
    	    @ID_AREA,
			@NOMBRE_AREA,
			@GERENCIA_AREA,
			@DESCRIPCION_AREA,
			@ESTADO_AREA )
    
    COMMIT  TRANSACTION

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

--region [dbo].[trx_Update_AreaTrabajo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Update_AreaTrabajo]
-- Date Generated: martes, 9 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Update_AreaTrabajo]
	@ID_AREA numeric(15, 0),
	@NOMBRE_AREA varchar(150),
	@GERENCIA_AREA varchar(200),
	@DESCRIPCION_AREA text,
	@ESTADO_AREA varchar(50)
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN   TRANSACTION
    UPDATE  [dbo].[AREA_TRABAJO] 
    SET     [NOMBRE_AREA] = @NOMBRE_AREA,
			[GERENCIA_AREA] = @GERENCIA_AREA,
			[DESCRIPCION_AREA] = @DESCRIPCION_AREA,
			[ESTADO_AREA] = @ESTADO_AREA
    WHERE   [ID_AREA] = @ID_AREA
    COMMIT  TRANSACTION
    
END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO


--region [dbo].[trx_Save_AreaTrabajo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Save_AreaTrabajo]
-- Date Generated: martes, 9 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Save_AreaTrabajo]
	@ID_AREA numeric(15, 0),
	@NOMBRE_AREA varchar(150),
	@GERENCIA_AREA varchar(200),
	@DESCRIPCION_AREA text,
	@ESTADO_AREA varchar(50)
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN TRANSACTION
    
    IF ISNULL( @ID_AREA, '') <> '' BEGIN 
        UPDATE  [dbo].[AREA_TRABAJO] 
        SET     [NOMBRE_AREA] = @NOMBRE_AREA,
				[GERENCIA_AREA] = @GERENCIA_AREA,
				[DESCRIPCION_AREA] = @DESCRIPCION_AREA,
				[ESTADO_AREA] = @ESTADO_AREA
    	WHERE   [ID_AREA] = @ID_AREA
    END
                
    ELSE BEGIN
        INSERT  INTO [dbo].[AREA_TRABAJO] (
        	    [ID_AREA],
				[NOMBRE_AREA],
				[GERENCIA_AREA],
				[DESCRIPCION_AREA],
				[ESTADO_AREA] ) 
        VALUES  (
        	    @ID_AREA,
				@NOMBRE_AREA,
				@GERENCIA_AREA,
				@DESCRIPCION_AREA,
				@ESTADO_AREA )
    END

    COMMIT TRANSACTION
    
    SELECT  ID_AREA = @ID_AREA

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO


--region [dbo].[trx_Remove_AreaTrabajo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Remove_AreaTrabajo]
-- Date Generated: martes, 9 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Remove_AreaTrabajo]
	@ID_AREA numeric(15, 0)
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN   TRANSACTION
    DELETE  FROM [dbo].[AREA_TRABAJO]
    WHERE   [ID_AREA] = @ID_AREA
    COMMIT  TRANSACTION
    
END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

--region [dbo].[trx_Get_AreaTrabajo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Get_AreaTrabajo]
-- Date Generated: martes, 9 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Get_AreaTrabajo]
	@ID_AREA numeric(15, 0)
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

	SET TRANSACTION ISOLATION LEVEL READ COMMITTED

    SELECT  [ID_AREA],
			[NOMBRE_AREA],
			[GERENCIA_AREA],
			[DESCRIPCION_AREA],
			[ESTADO_AREA]
    FROM    [dbo].[AREA_TRABAJO]
    WHERE   [ID_AREA] = @ID_AREA

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

--region [dbo].[trx_Get_AreaTrabajosAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Get_AreaTrabajosAll]
-- Date Generated: martes, 9 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Get_AreaTrabajosAll]
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

	SET TRANSACTION ISOLATION LEVEL READ COMMITTED

    SELECT  [ID_AREA],
			[NOMBRE_AREA],
			[GERENCIA_AREA],
			[DESCRIPCION_AREA],
			[ESTADO_AREA]
    FROM    [dbo].[AREA_TRABAJO]

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

