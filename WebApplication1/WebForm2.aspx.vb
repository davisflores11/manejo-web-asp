Imports System.IO
Imports MySql.Data.MySqlClient
Imports MySql.Data.MySqlClient.MySqlDataAdapter
Imports MySql.Data.MySqlClient.MySqlCommand
Imports MySql.Data.MySqlClient.MySqlDataReader
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim conexion As MySqlConnection
    Dim usuari, email, pass As String
    Dim suma As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("WebForm1.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim usuario, pswd, BD, servidor As String

        If TextBox5.Text.ToString = "" Or TextBox6.Text.ToString = "" Then
            MsgBox("Debe llenar los dos campos")


        Else


            servidor = "localhost"
            usuario = "root"
            pswd = ""
            BD = "arrendamiento"
            conexion = New MySqlConnection()
            conexion.ConnectionString = "server=" & servidor & ";" & "database=" & BD & ";" & "user id=" & usuario & ";" & "password=" & pswd & ";"
            conexion.Open()
            '  MessageBox.Show("Conectado al servidor")
            Dim sqlquery As String
            Dim commando As New MySqlCommand
            Dim data As MySqlDataReader
            sqlquery = "SELECT * FROM usuario where cedula= '" & TextBox5.Text & "'"

            commando = New MySqlCommand(sqlquery, conexion)
            data = commando.ExecuteReader()

            If data.Read() Then
                ' data.Read()
                'mover los campos a los textbox

                usuari = data("cedula")
                Dim nom As String = data("nombre")
                pass = data("password")

                If usuari = TextBox5.Text And pass = TextBox6.Text Then
                    'MsagBox("ESTA CORRECTO")

                    Session("username") = data("nombre")
                    Session("foto") = data("foto")
                    ' Session("cedula") = data("cedula")

                    Response.Redirect("webform3.aspx")


                    ' principal.PictureBox2.Image = Bytes_Imagen(data("foto"))
                ElseIf usuari = TextBox5.Text.ToString And pass <> TextBox6.Text.ToString Then
                    MsgBox("LA CONTRASEÑA ES INCORRECTA")

                End If
            Else
                MsgBox("LA CEDULA ES INCORRECTO")
            End If

        End If
    End Sub
End Class