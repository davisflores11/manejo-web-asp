Imports System.Data
Imports System.IO
Imports MySql.Data.MySqlClient
Imports System.Text.RegularExpressions
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim conexion As MySqlConnection
    Dim usuari, email, pass As String
    Dim cnn = New MySqlConnection()
    Dim facu As String 'variable global
    Dim facultad As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        If RadioButton6.Checked = True Then
            facultad = "sistemas"

        ElseIf RadioButton7.Checked = True Then
            facultad = "mecanica"

        ElseIf RadioButton8.Checked = True Then
            facultad = "industrial"

        ElseIf RadioButton9.Checked = True Then
            facultad = "electrica"

        ElseIf RadioButton10.Checked = True Then
            facultad = "ciencias"
        End If

        If TextBox2.Text.ToString = "" Or TextBox1.Text.ToString = "" Or TextBox3.Text.ToString = "" Or TextBox4.Text.ToString = "" Or RadioButton10.Checked = False And RadioButton6.Checked = False And RadioButton7.Checked = False And RadioButton8.Checked = False And RadioButton9.Checked = False Then
            MsgBox("Todos los campos son obligatorios")


            'ElseIf validar_Mail(LCase(TextBox4.Text)) = False Then
            '    MsgBox("Dirección de correo electronico no valida, el correo debe tener el formato: nombre@dominio.com, " & " por favor seleccione un correo valido", "Validación de correo electronico", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
            '    TextBox4.Focus()
            '    TextBox4.SelectAll()
        Else
            'Dim usuario, pswd, BD, servidor As String
            Try
                Dim servidor = "localhost"
                Dim usuario = "root"
                Dim pswd = ""
                Dim BD = "arrendamiento"
                conexion = New MySqlConnection()
                conexion.ConnectionString = "server=" & servidor & ";" & "database=" & BD & ";" & "user id=" & usuario & ";" & "password=" & pswd & ";"
                conexion.Open()
                '  MessageBox.Show("Conectado al servidor")
                Dim sqlquery As String
                Dim commando As New MySqlCommand
                Dim data As MySqlDataReader
                sqlquery = "SELECT * FROM usuario where cedula= '" & TextBox1.Text & "'"
                commando = New MySqlCommand(sqlquery, conexion)
                data = commando.ExecuteReader()

                If data.Read() Then

                    'mover los campos a los textbox

                    usuari = data("cedula")

                    'If usuari = TextBox2.Text.ToString Then
                    '    MessageBox.Show("YA EXISTE UN USUARIO CON ESE NOMBRE")
                    'ElseIf usuari <> TextBox2.Text.ToString Then
                    '    MessageBox.Show("El USUARIO ESTA DISPONIBLE")

                    'End If



                    'Else
                    '    MessageBox.Show("El USUARIO ESTA DISPONIBLE")
                End If
            Catch ex As Exception
                MsgBox("No se ha conectado asegurece de activar xampp")
            End Try


            If usuari = TextBox1.Text Then
                MsgBox("El Estudiante Ya Existe En El Sistema")
            ElseIf usuari <> TextBox2.Text Then




                Dim servidor As String = "localhost"
                Dim usuario As String = "root"
                Dim pswd As String = ""
                Dim BD As String = "arrendamiento"
                Dim cnn = New MySqlConnection()

                cnn.ConnectionString = "server=" & servidor & ";" & "database=" & BD & ";" & "user id=" & usuario & ";" & "password=" & pswd & ";"

                Dim sql As String = "INSERT INTO usuario (cedula,password,nombre,direccion,telefono,facultad,foto) VALUES (?cedula,?password,?nombre,?direccion,?telefono,?facultad,?Imagen)"

                Dim Comando As New MySqlCommand(sql, cnn)
                Dim Cedula As String = Me.TextBox1.Text
                Dim Contrasena As String = Me.TextBox2.Text


                Dim Nombre As String = Me.TextBox3.Text

                Dim direccion As String = Me.TextBox4.Text
                Dim telefono As String = Me.TextBox7.Text

                Dim Imagen() As Byte = GetStreamAsByteArray(FileUpload1.PostedFile.InputStream)
                'Guarda la imagen en la base de datos
                InsertarImagen(Imagen)

                'GuardarImagenSQL()


                Comando.Parameters.AddWithValue("?cedula", Cedula)
                Comando.Parameters.AddWithValue("?password", Contrasena)


                Comando.Parameters.AddWithValue("?nombre", Nombre)
                Comando.Parameters.AddWithValue("?direccion", direccion)
                Comando.Parameters.AddWithValue("?telefono", telefono)


                Comando.Parameters.AddWithValue("?facultad", facultad)
                Comando.Parameters.AddWithValue("?Imagen", Imagen)

                cnn.Open()
                If cnn.State = ConnectionState.Open Then
                    Comando.ExecuteNonQuery()
                End If
                cnn.Close()

                MsgBox("Usuario guardado en la base de datos")
                Session("username") = Nombre
                Session("foto") = Imagen
                Response.Redirect("WebForm3.aspx")
                'Me.Hide()
                'principal.Show()
                'principal.Tuser.Text = TextBox2.Text
                'principal.Tpass.Text = TextBox3.Text
                'principal.Label2.Text = "BIENVENIDO: " & TextBox2.Text.ToUpper & " "
                'principal.PictureBox2.Image = PictureBox1.Image


            End If


        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("WebForm2.aspx")
    End Sub

    Private Function GetStreamAsByteArray(ByVal stream As Stream) As Byte()
        Dim streamLength As Integer = Convert.ToInt32(stream.Length)
        Dim fileData As Byte() = New Byte(streamLength) {}

        stream.Read(fileData, 0, streamLength)
        stream.Close()

        Return fileData
    End Function

    Private Sub InsertarImagen(ByVal Imagen As Byte())

        'Try
        '    Dim servidor As String = "localhost"
        '    Dim usuario As String = "root"
        '    Dim pswd As String = ""
        '    Dim BD As String = "arrendamiento"
        '    Dim cnn = New MySqlConnection()

        '    cnn.ConnectionString = "server=" & servidor & ";" & "database=" & BD & ";" & "user id=" & usuario & ";" & "password=" & pswd & ";"

        '    Dim sql As String = "INSERT INTO usuario (foto) VALUES (?Imagen)"

        '    Dim Comando As New MySqlCommand(sql, cnn)
        '    Comando.Parameters.AddWithValue("?Imagen", Imagen)
        '    cnn.Open()
        '    If cnn.State = ConnectionState.Open Then
        '        Comando.ExecuteNonQuery()
        '    End If
        '    cnn.Close()
        'Catch ex As Exception
        '    MsgBox(ex.Message)
        'End Try
    End Sub

    Private Sub GuardarImagenSQL()
        Try
            'Controla que este vcio el FileUpload
            If Not FileUpload1.HasFile Then
                Return
            End If
            'Obtiene la imagen en un array de bytes
            Dim Imagen() As Byte = GetStreamAsByteArray(FileUpload1.PostedFile.InputStream)
            'Guarda la imagen en la base de datos
            InsertarImagen(Imagen)
        Catch ex As Exception
        End Try
    End Sub

  

   
 
End Class