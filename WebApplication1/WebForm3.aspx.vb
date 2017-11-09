Imports System.IO
Imports MySql.Data.MySqlClient
Imports MySql.Data.MySqlClient.MySqlDataAdapter
Imports MySql.Data.MySqlClient.MySqlCommand
Imports MySql.Data.MySqlClient.MySqlDataReader
Public Class WebForm3
    Inherits System.Web.UI.Page
    Dim conexion As MySqlConnection
    Dim usuari, email, pass As String
    Dim suma As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim usuario, pswd, BD, servidor As String

        If Session("username") = "" Then
            '   Response.Redirect("webform2.aspx")

        Else

            Dim bytes As Byte() = TryCast((Session("foto")), Byte())
            Dim base64String As String = Convert.ToBase64String(bytes, 0, bytes.Length)
            TryCast(FindControl("imag"), Image).ImageUrl = Convert.ToString("data:image/png;base64,") & base64String
            TryCast(FindControl("Ima"), Image).ImageUrl = Convert.ToString("data:image/png;base64,") & base64String
            'servidor = "localhost"
            'usuario = "root"
            'pswd = ""
            'BD = "arrendamiento"
            'conexion = New MySqlConnection()
            'conexion.ConnectionString = "server=" & servidor & ";" & "database=" & BD & ";" & "user id=" & usuario & ";" & "password=" & pswd & ";"
            'conexion.Open()
            ''  MessageBox.Show("Conectado al servidor")
            'Dim sqlquery As String
            'Dim commando As New MySqlCommand
            'Dim data As MySqlDataReader
            'Dim cedu As String = Session("username")
            'sqlquery = "SELECT * FROM usuario where cedula= '" & cedu & "'"

            'commando = New MySqlCommand(sqlquery, conexion)
            'data = commando.ExecuteReader()

            'If data.Read() Then



            'End If


        End If
    End Sub
   
    
End Class