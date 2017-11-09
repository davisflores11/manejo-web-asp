Imports System.IO
Imports System.Data
Imports System.Configuration
Imports MySql.Data.MySqlClient
Public Class WebForm6
    Inherits System.Web.UI.Page
    Dim conexion As MySqlConnection
    Dim usuari, sede, pass As String
    Dim sqlquery, strUuser As String
    Public strUser As String
    Dim commando As New MySqlCommand
    Dim data As MySqlDataReader

    Dim cnn As MySqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.BindGrid()
        End If
    End Sub
    Private Sub BindGrid()
        Dim conexion As MySqlConnection

        Dim usuario, pswd, BD, servidor As String

        servidor = "localhost"
        usuario = "root"
        pswd = ""
        BD = "arrendamiento"
        conexion = New MySqlConnection()
        conexion.ConnectionString = "server=" & servidor & ";" & "database=" & BD & ";" & "user id=" & usuario & ";" & "password=" & pswd & ";"
        conexion.Open()
        '  MessageBox.Show("Conectado al servidor")
        Dim sqlquery As String


        Dim commando As New MySqlDataAdapter
        Dim data As MySqlDataReader
        Dim esta As String
        esta = "alquilado"
        'sqlquery = "SELECT provincia, cuartosala,utilidades,cedula,nombre,foto,estado, precio,foto1,foto2 FROM alquiler"
        sqlquery = "SELECT* FROM alquiler WHERE estado= '" & esta & "'"

        commando = New MySqlDataAdapter(sqlquery, conexion)

        Dim dt As New DataTable()
        commando.Fill(dt)
        gvImages.DataSource = dt
        gvImages.DataBind()


    End Sub
    Protected Sub OnRowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim bytes As Byte() = TryCast(TryCast(e.Row.DataItem, DataRowView)("foto1"), Byte())
            Dim base64String As String = Convert.ToBase64String(bytes, 0, bytes.Length)
            TryCast(e.Row.FindControl("Image1"), Image).ImageUrl = Convert.ToString("data:image/png;base64,") & base64String

            bytes = TryCast(TryCast(e.Row.DataItem, DataRowView)("foto2"), Byte())
            base64String = Convert.ToBase64String(bytes, 0, bytes.Length)
            TryCast(e.Row.FindControl("Image2"), Image).ImageUrl = Convert.ToString("data:image/png;base64,") & base64String

            bytes = TryCast(TryCast(e.Row.DataItem, DataRowView)("foto"), Byte())
            base64String = Convert.ToBase64String(bytes, 0, bytes.Length)
            TryCast(e.Row.FindControl("Image3"), Image).ImageUrl = Convert.ToString("data:image/png;base64,") & base64String

        End If
    End Sub
End Class