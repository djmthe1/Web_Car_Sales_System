<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="false" Inherits="Web_Car_Sales_System.Default" %>

<!DOCTYPE html>
<!-- Camera is a Pixedelic free jQuery slideshow | Manuel Masia (designer and developer) --> 
<html> 
<head> 
    <meta name="description" content="Camera a free jQuery slideshow with many effects, transitions, adaptive layout, easy to customize, using canvas and mobile ready"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
    <title>Web Car Sales System || Home</title>
    <link href="Themes/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="Themes/js/jquery-3.1.0.min.js"></script>
    <!-- Custom Theme files -->
    <link href="Themes/css/style.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

    <!--///////////////////////////////////////////////////////////////////////////////////////////////////
    //
    //		Styles
    //
    ///////////////////////////////////////////////////////////////////////////////////////////////////--> 
    <link rel='stylesheet' id='camera-css'  href='../Container/css/camera.css' type='text/css' media='all'> 


    <!--///////////////////////////////////////////////////////////////////////////////////////////////////
    //
    //		Scripts
    //
    ///////////////////////////////////////////////////////////////////////////////////////////////////--> 
    
    <script type='text/javascript' src='../Container/scripts/jquery.min.js'></script>
    <script type='text/javascript' src='../Container/scripts/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='../Container/scripts/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='../Container/scripts/camera.min.js'></script> 
    
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_1').camera({
				thumbnails: true
			});

			jQuery('#camera_wrap_2').camera({
				height: '400px',
				loader: 'bar',
				pagination: false,
				thumbnails: true
			});
		});
	</script>
 
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 90px;
        }
    </style>
 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

    <div class="header_top">	
	  <div class="container">		  
          <div class="logo">
			 <h3><strong>Web Car Sales System</strong></h3>
		  </div>
		  <div class="cssmenu">
				<ul id="nav">
					 <li class="current"><a href="#section-1">Inicio</a></li>
					 <li><a href="#section-2">Nosotros</a></li>
					 <li><a href="#section-3">Vehiculos</a></li>
					 <li><a href="#section-4">Busqueda</a></li>
				     <li><a href="#section-5">Contactanos</a></li>
                     <li><asp:Button ID="BUttonLogin" runat="server" Text="LOGIN/REGISTRARSE" BackColor="#291f19" BorderStyle="Double" BorderColor="Gray" ForeColor="#E0C8A8" OnClick="BUttonLogin_Click" /></li>
				</ul>
		    </div>
			<div class="clearfix"> </div>
	  	 </div>
	 </div>
    <table class="col-md-8">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
	<div class="fluid_container" id="section-1">
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
            <div data-thumb="../images/2015-toyota-camry.jpg" data-src="../images/2015-toyota-camry.jpg">
                <div class="camera_caption fadeFromBottom">
                    Toyota-2017. <em>Camry SE</em>
                </div>
            </div>
            <div data-thumb="../images/2017-Lexus-GX-460.jpg" data-src="../images/2017-Lexus-GX-460.jpg">
                <div class="camera_caption fadeFromBottom">
                    Lexus-2017, <em>GX-460</em>
                </div>
            </div>
            <div data-thumb="../images/2017HondaAccordHybrid.jpg" data-src="../images/2017HondaAccordHybrid.jpg">
                <div class="camera_caption fadeFromBottom">
                    <em>Honda-2017, </em> Accord-Hybrid
                </div>
            </div>
            <div data-thumb="../images/2017-mercedes-benz-c300.jpg" data-src="../images/2017-mercedes-benz-c300.jpg">
                <div class="camera_caption fadeFromBottom">
                    Mercedes-Benz-2017, <em>C300</em>
                </div>
            </div>
            <div data-thumb="../images/2017-Tesla-Model-S.jpg" data-src="../images/2017-Tesla-Model-S.jpg">
                <div class="camera_caption fadeFromBottom">
                    Tesla-2017, <em>Model-S</em>
                </div>
            </div>
            <div data-thumb="../images/2017-Toyota-Hilux.jpg" data-src="../images/2017-Toyota-Hilux.jpg">
                <div class="camera_caption fadeFromBottom">
                   Toyota-2017, <em>Hilux</em>
                </div>
            </div>
        </div><!-- #camera_wrap_1 -->
    </div><!-- .fluid_container -->
    <div style="clear:both; display:block; height:100px"></div>
	<div class="main">
   	   	 <div class="portfolio section" id="section-3">
		 <div class="container">
			 <div class="col-md-8 about_left">
   	   	  	 	<h3>----------------</h3>
   	   	  	 </div>
   	   	  	 <div class="col-md-8 about_left">
   	   	  	 	<h3>Vehiculos:</h3>
                <div class="video_btn">
		  		     <a href="/Consultas/ConsultaTodosVehiculosWebForm.aspx" class="btn1 btn-1 btn1-1b">Ver Todos</a>
		  		</div>
   	   	  	 </div>
   	   	  	 <div class="col-md-4 about_right">
   	   	  	 	<img src="images/icon-group-inventory.png "width="500px" class="img-responsive" alt=""/>
   	   	  	 </div>
   	   	   <ul class="portfolio_grids">
                     <asp:DataList ID="VehiculosDataList" runat="server" GridLines="Vertical" RepeatColumns="2" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width:50px">
                                    <table>
                                        <tr>
                                            <td>
                                                <b>Estado:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="EstadoLabel" runat="server" Text='<%#Eval("EstadoVehiculo") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Marca:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="MarcaLabel" runat="server" Text='<%#Eval("Marca")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Modelo:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="ModeloLabel" runat="server" Text='<%#Eval("Modelo")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Año:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="AñoLabel" runat="server" Text='<%#Eval("Año") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>----------------------------</tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
            </asp:DataList>
	  	  	<div class="clearfix"></div>
	  	   </ul>
	  	   <ul class="portfolio_grids">
	  	  	<div class="clearfix"></div>
	  	  </ul>
	  	 </div> 
		  </div>
		  <div class="video section" id="section-4">
		  	<div class="container">
		  		<div class="row">
		  			<div class="col-md-6 about_left">
						<h3>-------------------------</h3>
		  				<h4 class="m_3">Necesita ayuda?</h4>
						<h4 class="m_3">Buscar Vehiculo</h4>
		  				<h5 class="m_4"></h5>
		  			    <div class="video_btn">
		  				  <a href="/Consultas/ConsultaVehiculosGuestWebForm.aspx" class="btn1 btn-1 btn1-1b">Buscar</a>
		  				</div>
		  			</div>
		  		</div>
		  	</div>
		  </div>
		  <div class="about section" id="section-2">
   	   	    <div class="container">
   	   	  	 <div class="col-md-8 about_left">
				<h3>-------------------------</h3>
   	   	  	 	<h3>Sobre Nosotros:</h3>
   	   	  	 	<p class="m_1">Somos una Empresa dedicada a la venta de vehiculos</p>
   	   	  	    <p class="m_2">Esta es una pagina que se utilizara para la venta de vehiculos</p>
   	   	  	    	<a></a>
   	   	  	 </div>
   	   	  	 <div class="col-md-4 about_right">
   	   	  	 	<img src="images/about.png "width="500px" class="img-responsive" alt=""/>
   	   	  	 </div>
   	   	  	</div>
   	   	 </div>
     </div>	
     <div class="contact section" id="section-5">
     	<div class="container">
     		<h3 class="head">Contactanos:</h3>
     		<div class="row">
     			<div class="col-md-6">
     				<ul class="list">
     					<li class="list1">
     						<i class="icon1"> </i><p class="address"><span class="phone">Telefono :</span> (000)000-0000</p>
     						<div class="clearfix"> </div>
     					</li>
     					<li class="list1">
     						<i class="icon2"> </i><p class="address"><span class="phone">Correo :</span><span class="email"> Creandolo</a></span></p>
     						<div class="clearfix"> </div>
     					</li>
     					<li class="list1">
     						<i class="icon3"> </i><p class="address"><span class="phone">Fax :</span> (000)000-0000</p>
     						<div class="clearfix"> </div>
     					</li>
     					<li class="list1 last">
     						<i class="icon4"> </i><p class="address"><span class="phone">Direccion :</span> Algun lugar de mundo</p>
     						<div class="clearfix"> </div>
     					</li>
     				</ul>
     			</div>
     			<div class="col-md-6">
     				<div class="contact-form">
							<form method="post" action="contact-post.html">
								<input type="text" class="textbox" value="Nombre" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nombre';}">
								<input type="text" class="textbox" value="Correo" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Correo';}">
								<textarea value="Mensaje" onfocus="this.value= '';" onblur="if (this.value == '') {this.value = 'Mensaje';}">Mensaje</textarea>
								<label class="btn2 btn-2 btn2-1b"><input type="submit" value="Enviar"></label>
							</form>
						</div>
     			</div>
     		</div>
     	</div>
     </div> 
     <div class="footer_bottom">
         <div class="container">
           	 <p class="copy"><a>Derechos Casi reservados</a></p>
           	 <ul class="social">
				<li><a href=""><i class="fb"> </i> </a></li>
				<li><a href=""><i class="rss"> </i> </a></li>
				<li><a href=""><i class="tw"> </i> </a></li>
			</ul>
		 </div>
     </div> 
    <script type="text/javascript" src="/Themes/js/move-top.js"></script>
    <script src="Themes/js/jquery.scrollTo.js"></script>
	<script src="Themes/js/jquery.nav.js"></script>
	<script>
	$(document).ready(function() {
		$('#nav').onePageNav({
			begin: function() {
			console.log('start')
			},
			end: function() {
			console.log('stop')
			}
		});
	});
	</script>
	<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

    </form>

</body>
</html>		