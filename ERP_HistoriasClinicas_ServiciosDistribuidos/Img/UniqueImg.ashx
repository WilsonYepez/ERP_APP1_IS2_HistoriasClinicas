<%@ WebHandler Language="VB" Class="UniqueImg" %>

Imports System.Drawing
Imports System.Web.HttpContext
Imports System.Web.Configuration
Imports GLOBALSistemas.GeneralTools
Imports GLOBALSistemas.WebSite

'=======================================
' Código orginial de: José A. Fernández
' http://geeks.ms/blogs/fernandezja/archive/2009/02/02/texto-dentro-de-una-imagen-en-asp-net-label-into-image.aspx
' Modificado: Diego Trejo - 7-ago-2009
'=======================================

Public Class UniqueImg : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        ObtenerParametros()
        ArmarImagen()
        EjecutarAccion()
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

    Private Sub ArmarImagen()
        Dim imagenOrigen As Bitmap
        Dim imagenGrap As Graphics

        If Utils.HasData(Me.ArchivoImagen) Then
            'Creamos una imagen basada en el archivo original               
            imagenOrigen = New Bitmap(Me.ArchivoImagen, True)
            imagenOrigen.SetResolution(75, 75)

            Current.Response.ContentType = "image/jpeg"
            imagenOrigen.Save(Current.Response.OutputStream, Imaging.ImageFormat.Jpeg)

            imagenOrigen = Nothing
            imagenGrap = Nothing
        End If

    End Sub

    Private _ArchivoImagen As String = ""
    Private Property ArchivoImagen() As String
        Get
            Return _ArchivoImagen
        End Get
        Set(ByVal value As String)
            Dim _SkinName As String = CType(ConfigurationManager.GetSection("system.web/pages"), PagesSection).Theme.Trim()

            If Utils.IsEmpty(value) Then
                _ArchivoImagen = ""
            ElseIf value.Substring(0, 11).ToLower = "|SkinImage|".ToLower Then
                _ArchivoImagen = Current.Server.MapPath("~/") & "App_Themes\" & _SkinName & "\media\" & value.Substring(11)
            Else
                _ArchivoImagen = Current.Server.MapPath("~/") & value.Replace("/", "\")
            End If
        End Set
    End Property

    Private IdImagen As Integer = 0
    Private Accion As Integer = 0

    Private Sub ObtenerParametros()
        Me.IdImagen = Utils.GetInt(Current.Request.QueryString("id"))
        Me.ArchivoImagen = Utils.GetStr(Current.Request.QueryString("if"))
        Me.Accion = Utils.GetInt(Current.Request.QueryString("ac"))
    End Sub

    Private Sub EjecutarAccion()
        Select Case Me.Accion
            Case 1
                RegistarLecturaEmail()
            Case 2
            Case 3
            Case 4

        End Select
    End Sub

    Private Sub RegistarLecturaEmail()
        Try
            Dim CONNECTION As String = ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString
            Dim SCHEMANAME As String = Utils.GetAppSetting("SchemaName")
            Using trx = Db.SqlTransaction(CONNECTION)
                trx.Schema = SCHEMANAME
                trx.Parameter("p_id_campania_destino").Value = Me.IdImagen
                trx.Parameter("p_leido_email").Value = 1
                trx.Parameter("p_leido_sms").Value = -1
                trx.ExecSP_NonQuery("trx_Save_Campania_Destino_Leido")
                trx.Commit()
            End Using
        Catch ex As Exception
        End Try
    End Sub

End Class