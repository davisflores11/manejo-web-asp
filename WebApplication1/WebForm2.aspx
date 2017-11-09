<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="WebApplication1.WebForm2" %>

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
      <asp:Image ID="Image5" runat="server" ImageAlign="Left" ImageUrl="~/imagen/logo2.png" Width="227px" style="margin-left: 27px" /> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      
      <div class="form-container">
          <p class="text-center" style="margin-top: 17px;">
              <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/imagen/login2.png" Width="150px" height="100px" style="margin-left: 0px" BorderStyle="Double" /> 
      
         </p>
          <div style="font-size: medium ; font-style: italic; color: #ffffff" align="center">
         
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bienvenido Arrendamiento Residencial Universitario UTP Azuero.</div>
         
         <form id="form1" runat="server">
   <br>
        
           <p style="font-size: 25px; font-style: italic; color: #FF0000"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Iniciar Sesion</p>
     <p style="width: 674px; margin-left: 0px">
            Cedula&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox5" runat="server"  BorderColor="#0066CC" BorderStyle="Solid" BackColor="#FF3300"></asp:TextBox>
         </p>
            <p style="width: 674px; margin-left: 0px">
        Password:<asp:TextBox ID="TextBox6" runat="server"  BorderColor="#3333FF" BorderStyle="Solid" BackColor="#FF3300" ForeColor="White"></asp:TextBox>
         </p>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" Font-Size="Medium" BorderColor="#00CC00" BorderStyle="Solid" ForeColor="Black" />
             <br />
&nbsp;<br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button2" runat="server" Text="Registrarme En el Sitio Web" Font-Size="Medium" BorderColor="#00CC00" BorderStyle="Solid" ForeColor="Black" />
   <br />
          </form>

      </div>

    <div class="msjFormSend hidden"></div>
    
      </body>
  </html>
