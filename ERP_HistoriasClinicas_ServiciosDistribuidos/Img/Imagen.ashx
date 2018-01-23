<%@ WebHandler Language="VB" Class="imagen" %>

Imports System.Drawing
imports System.Web
Imports System
Imports System.Web.HttpContext
Imports System.IO.Compression
Imports GLOBALSistemas.WebControls
Imports GLOBALSistemas.Cryptography

'=======================================
' Código orginial de: José A. Fernández
' http://geeks.ms/blogs/fernandezja/archive/2009/02/02/texto-dentro-de-una-imagen-en-asp-net-label-into-image.aspx
' Modificado: Diego Trejo - 7-ago-2009
'=======================================

Public Class imagen : Implements IHttpHandler

    Private _QueryString As New System.Collections.Specialized.NameValueCollection()
    Private _texto As String = ""
    Private _fuenteFamily As String = "Verdana"
    Private _fuenteSize As Single = 11
    Private _fuenteColor As String = "White"
    Private _fuenteBold As Boolean = False
    Private _fuentePosX As Integer = 0
    Private _fuentePosY As Integer = 0
    Private _ArchivoImagen As String = ""


    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        ObtenerQueryString()
        ObtenerParametros()
        ArmarImagen(ArchivoImagen)
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

    Private Sub ArmarImagen(ByVal imagenPathCompleto As String)
        Dim imagenOrigen As Bitmap
        Dim imagenGrap As Graphics

        If imagenPathCompleto.Trim.Length > 0 Then
            'Creamos una imagen basada en el archivo original               
            imagenOrigen = New Bitmap(imagenPathCompleto, True)
            imagenOrigen.SetResolution(75, 75)

            If _texto.Trim.Length > 0 Then
                Dim _Font As Font = ObtenerFuente()
                Dim _FontDimensions As SizeF

                imagenGrap = Graphics.FromImage(imagenOrigen)
                imagenGrap.SmoothingMode = Drawing2D.SmoothingMode.AntiAlias

                _FontDimensions = imagenGrap.MeasureString(" " & _texto , _Font)
                _fuentePosX = Int((imagenOrigen.Width - _FontDimensions.Width) / 2)
                _fuentePosY = Int((imagenOrigen.Height - _FontDimensions.Height) / 2)
                imagenGrap.DrawString(" " & _texto, _Font, ObtenerColor(_fuenteColor), _fuentePosX, _fuentePosY)

            End If

            Current.Response.ContentType = "image/jpeg"
            imagenOrigen.Save(Current.Response.OutputStream, Imaging.ImageFormat.Jpeg)

            imagenOrigen = Nothing
            imagenGrap = Nothing

        End If

    End Sub

    Private Function ObtenerFuente() As Font
        Dim Style As New System.Drawing.FontStyle
        If _fuenteBold Then
            Style = FontStyle.Bold
        Else
            Style = FontStyle.Regular
        End If
        Dim f As New Font(_fuenteFamily, _fuenteSize, Style, GraphicsUnit.Pixel)
        Return f
    End Function

    Private Function ObtenerColor(ByVal descripcionColor As String) As Brush
        Dim b As Brush
        If descripcionColor.Substring(0, 1) = "#" Then
            b = New SolidBrush(Color.FromArgb(Convert.ToInt32(descripcionColor.Replace("#", "FF"), 16)))
        Else
            b = New SolidBrush(Color.FromName(descripcionColor))
        End If
        Return b
    End Function

    Private Property ArchivoImagen() As String
        Get
            Return _ArchivoImagen
        End Get
        Set(ByVal value As String)
            Dim _SkinName As String = CType(System.Configuration.ConfigurationManager.GetSection("system.web/pages"), System.Web.Configuration.PagesSection).Theme

            If value.Trim.Length = 0 Then
                _ArchivoImagen = ""
            ElseIf value.Substring(0, 11).ToLower = "|SkinImage|".ToLower Then
                _ArchivoImagen = Current.Server.MapPath("~/") & "App_Themes\" & _SkinName & "\media\" & value.Substring(11)
            Else
                _ArchivoImagen = Current.Server.MapPath("~/") & value.Replace("/", "\")
            End If
        End Set
    End Property

    Private Sub ObtenerParametros()

        If _QueryString.Count <= 0 Then Exit Sub

        'Archivo de imagen
        If _QueryString("if") IsNot Nothing Then
            ArchivoImagen = HttpUtility.UrlDecode(_QueryString("if")).Replace("~", "")
        End If

        'Texto/Mensaje
        If _QueryString("t") IsNot Nothing Then
            _texto = HttpUtility.UrlDecode(_QueryString("t"))
        End If

        'Fuente: Family
        If _QueryString("ff") IsNot Nothing Then
            _fuenteFamily = HttpUtility.UrlDecode(_QueryString("ff"))
        End If

        'Fuente: Size
        If _QueryString("fs") IsNot Nothing Then
            _fuenteSize = Convert.ToSingle(HttpUtility.UrlDecode(_QueryString("fs")))
        End If

        'Fuente: Bold
        If _QueryString("fb") IsNot Nothing Then
            _fuenteBold = Convert.ToBoolean(HttpUtility.UrlDecode(_QueryString("fb")))
        End If

        'Fuente: Color
        If _QueryString("fc") IsNot Nothing Then
            _fuenteColor = HttpUtility.UrlDecode(_QueryString("fc"))
        End If

    End Sub

    Private Sub ObtenerQueryString()
        Dim str As String
        Dim qs As String()
        Dim item As String()

        str = Current.Request.QueryString("tab-id")
        If str = "" Then Exit Sub
        str = Crypto.Decrypt(str)

        qs = str.Split("&")
        If qs.Length = 0 Then Exit Sub

        For Each s As String In qs
            item = s.Split("=")
            If item.Length = 2 Then
                _QueryString.Add(item(0), item(1))
            End If
        Next
    End Sub

End Class