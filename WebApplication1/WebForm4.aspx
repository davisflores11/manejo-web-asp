<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm4.aspx.vb" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE >

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalles del alquiler></title>
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
<body>
   
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile custom-scroll-containers">
            <div class="logo full-reset all-tittles">
                <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i>
                Arrendamiento
            </div>
            <div class="full-reset" style="background-color:#2B3D51; padding: 10px 0; color:#fff;">
                <figure>
                    <img src="assets/img/logo.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
                <p class="text-center" style="padding-top: 15px;">arrendamiento de residenciales</p>
            </div>
             <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                    <li><a href="WebForm3.aspx"> &nbsp;&nbsp; Inicio</a></li>
                    <li>
                        <div class="dropdown-menu-button">&nbsp;&nbsp; Busqueda </div>
                        <ul class="list-unstyled">
                            <li><a href="WebForm5.aspx">&nbsp;&nbsp; Hacer Una Busqueda</a></li>
                         
                        </ul>
                    </li>
                    <li>
                        <div class="dropdown-menu-button">&nbsp;&nbsp;Lista De Residencias </div>
                        <ul class="list-unstyled">
                            <li><a href="WebForm6.aspx">&nbsp;&nbsp; Residencias Ocupadas</a></li>
                            <li><a href="WebForm7.aspx">&nbsp;&nbsp; Residencias Disponibles</a></li>
                        </ul>
                    </li>
                    
                   
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        
        <nav class="navbar-user-top full-reset">
            <ul class="list-unstyled full-reset">
                <figure>
                   <img src="assets/img/user04.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                   <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">  <span class="all-tittles">  Bienvenido: <%Response.Write(Session("username"))%></span>

                  </li>
                 
                  <li  class="tooltips-general exit-system-button"<%Session.Abandon%> data-href="WebForm2.aspx" data-placement="bottom" title="Salir del sistema">
                      <img src ="assets/icons/salir.ico" />
                </li>
            
               
            </ul>
        </nav>
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles"> Arrendamiento Residencial <small>Detalles del Arquiler</small></h1>
            </div>
        </div>

        <div class="container-fluid"  style="margin: 50px 0;">
						<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-3">
										<img src="assets/img/user01.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
								</div>
								<div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
										Bienvenido aqui podras Realizar el Alquiler de la residencia seleccionada.
								</div>
						</div>
				</div>



        				<div class="container-fluid" align="center">

        						<div class="container-flat-form">
        								<div class="title-flat-form title-flat-blue">Detalles del alquiler</div>

        										<div class="row">
        											 <div class="col-xs-12 col-sm-8 col-sm-offset-2">
         <form id="form1" runat="server">
        <div class="form-group"> <label for="inputName" class="control-label">Numero de residencia</label>
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
         </div>				 </div>
         <div class="col-xs-12 col-sm-8 col-sm-offset-2">
        <div class="form-group"> <label for="inputName" class="control-label">Cedula del responsable</label>
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>				 </div>
        <div class="col-xs-12 col-sm-8 col-sm-offset-2">
        <div class="form-group"> <label for="inputName" class="control-label">Nombre del responsable</label>
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>				 </div>
        <div class="col-xs-12 col-sm-8 col-sm-offset-2">
        <div class="form-group"> <label for="inputName" class="control-label">precio de la Residencia</label>
         <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
        </div>				 </div>
                                                    <div class="col-xs-12 col-sm-8 col-sm-offset-2">
          <asp:Button ID="Button1" runat="server" Text="Alquilar" Width="105px" />
                                                     </div>
                                                     </form>
        									       
        									 </div>

        						</div>
        				</div>
       
       
       
        <div class="modal fade" tabindex="-1" role="dialog" id="ModalHelp">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center all-tittles">ayuda del sistema</h4>
                </div>
                <div class="modal-body">
                    El software de sistema De Arrendamiento permite a los estudiantes poder hacer alquileres o reservaciones de residencias a sus gustos, facilitando asi la busqueda de ospedaje de residencias para los estudiantes universitarios con dificultad de accesso.

                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="zmdi zmdi-thumb-up"></i> &nbsp; De acuerdo</button>
                </div>
            </div>
          </div>
        </div>
        <footer class="footer full-reset">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        <h4 class="all-tittles">Acerca de</h4>
                        <p>
                            El software de sistema De Arrendamiento permite a los estudiantes poder hacer alquileres o reservaciones de residencias a sus gustos, facilitando asi la busqueda de ospedaje de residencias para los estudiantes universitarios con dificultad de accesso.
</p>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <h4 class="all-tittles">Desarrollador</h4>
                        <ul class="list-unstyled">
                            <li>&nbsp; Davis Flores </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-copyright full-reset all-tittles">© 2017 Arrendamiento Recidencial Universitario UTP Azuero</div>
        </footer>


    </div>
</body>
</html>
