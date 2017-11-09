<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Inicio de sesión</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/home_243.ico" />
      <script src="js/sweet-alert.min.js"></script>
      <link rel="stylesheet" href="css/sweet-alert.css">
      <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
      <link rel="stylesheet" href="css/normalize.css">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="css/login.css"/>
      <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
      <script src="js/modernizr.js"></script>
      <script src="js/bootstrap.min.js"></script>
        <script src="js/SendForm.js"></script>
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/main.js"></script>
  </head>
 	


 <body class="full-cover-background" style="background-image:url(assets/img/font-login.png);">
      <div style="font-size: xx-large; font-style: italic; color: #000080" align="center">
         <div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bienvenido Arrendamiento Residencial Universitario UTP Azuero.</div>
         <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/imagen/logo2.png" Width="227px" style="margin-left: 27px" /> 
        </div>

    <form id="form1" runat="server">
  
        
        <div align="center" style="margin-top: 17px; background-color: #CC3300; margin-left: 341px; margin-right: 349px; height: 582px; color: #000; font-size: 18px;"font-size: 32px; style="font-size:midium; font-style: italic; color: #000000">
           <p align="center"> Registrarme En El Sitio.</p>
            <br> </br>
       Cedula :<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" BorderColor="#0066FF" BorderStyle="Solid"></asp:TextBox>
            
        &nbsp;
            
        Password: <asp:TextBox ID="TextBox2" runat="server" style="margin-left:0px" BorderColor="#0066FF" BorderStyle="Solid"></asp:TextBox>
             <br> </br>
       Nombre :<asp:TextBox ID="TextBox3" runat="server" style="margin-left:0px" BorderColor="#0066FF" BorderStyle="Solid"></asp:TextBox>
             
       &nbsp;
             
       Direccion: <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" BorderColor="#0066FF" BorderStyle="Solid"></asp:TextBox>
    
              <br> </br>
            Telefono: <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px" BorderColor="#0066FF" BorderStyle="Solid"></asp:TextBox>
     
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Facultad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:RadioButton ID="RadioButton6" GroupName="elige"   runat="server" Text="Sistemas" />
              
         
                  
         <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
              <asp:RadioButton ID="RadioButton7"  GroupName="elige"  runat="server" Text="Mecanica" />
        <br> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <asp:RadioButton ID="RadioButton8"  GroupName="elige" runat="server" Text="Industrial" />
            <br> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <asp:RadioButton ID="RadioButton9"   GroupName="elige" runat="server" Text="Electrica" />
       <br> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <asp:RadioButton ID="RadioButton10" GroupName="elige" runat="server" Text="Ciencias" Font-Size="Large" />
          
           
           </br>
         
             
       
              <br>
             <asp:Image  runat="server" id="img"  alt="" src="imagen/138681.png" style="width:200px; height :100px;" /> <br>
        
                 
                 	Elegir Foto De Perfil: <asp:FileUpload ID="FileUpload1" runat="server" onchange="showimagepreview(this)" />  
           
            <br>
       <asp:Button ID="Button2" runat="server" Text="Registrarme" Font-Size="Medium" BorderColor="#00CC00" BorderStyle="Solid" ForeColor="Black" />

             
          
             
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" Font-Size="Medium" BorderColor="#00CC00" BorderStyle="Solid" ForeColor="Black" />

             
           </div>

             
           

    </form>
      
            <script type="text/javascript">

                function showimagepreview(input) {

                    if (input.files && input.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function (e) {

                            document.getElementsByTagName("img")[1].setAttribute("src", e.target.result);
                        }
                        reader.readAsDataURL(input.files[0]);
                    }
                }

 	          </script>   
         
       
</body>
     
</html>
