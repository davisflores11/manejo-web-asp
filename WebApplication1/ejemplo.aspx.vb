Imports System.IO
Imports System.Data
Imports System.Configuration
Imports MySql.Data.MySqlClient
Public Class ejemplo
    Inherits System.Web.UI.Page
    Dim conexion As MySqlConnection
    Dim usuari, sede, pass As String
    Dim sqlquery, strUuser As String
    Public strUser As String
    Dim commando As New MySqlCommand
    Dim data As MySqlDataReader

    Dim cnn As MySqlConnection
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
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
        sqlquery = "SELECT provincia, cuartosala, precio,utilidades,foto1,foto2 FROM residencia"

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

        End If
    End Sub
  

    Protected Sub UploadFile(sender As Object, e As EventArgs)
        Dim filename As String = Path.GetFileName(FileUpload1.PostedFile.FileName)
        Dim contentType As String = FileUpload1.PostedFile.ContentType
        Using fs As Stream = FileUpload1.PostedFile.InputStream
            Using br As New BinaryReader(fs)
                Dim bytes As Byte() = br.ReadBytes(DirectCast(fs.Length, Long))
                Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
                Using con As New MySqlConnection(constr)
                    Dim query As String = "INSERT INTO Files(FileName, ContentType, Content) VALUES (@FileName, @ContentType, @Content)"
                    Using cmd As New MySqlCommand(query)
                        cmd.Connection = con
                        cmd.Parameters.AddWithValue("@FileName", filename)
                        cmd.Parameters.AddWithValue("@ContentType", contentType)
                        cmd.Parameters.AddWithValue("@Content", bytes)
                        con.Open()
                        cmd.ExecuteNonQuery()
                        con.Close()
                    End Using
                End Using
            End Using
        End Using
        Response.Redirect(Request.Url.AbsoluteUri)
    End Sub

    Protected Sub gvImages_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvImages.SelectedIndexChanged
        
        'Dim row As GridViewRow = gvImages.SelectedRow

        'Dim valor As String = row.Cells(1).Text
        'TextBox1.Text = valor
    End Sub
End Class

