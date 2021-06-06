

<%@page import="java.awt.Image"%>
<%@page import="Modelo.Imagen"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.io.InputStream"%>
<%@page import="Modelo.Perfil"%>
<%@page import="Controlador.AccionesPerfil"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
            HttpSession sesion = request.getSession();
            int id_perf = (Integer) sesion.getAttribute("perfil");
            System.out.println(id_perf);
            
            Perfil perf = AccionesPerfil.buscarPerfilById(id_perf);
            
            InputStream in = perf.getImg_perf().getFoto_img();
            
            Image img = Imagen.getImage(in);                     
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta Usuario</title>
    <link rel="shortcut incon" href="IMG/ToroRutinasLogo41.png" >
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"> 
	<link rel="stylesheet" href="CSS/PedirDatosUsuario.css">
</head>
<body>
    <main>
        <nav id="encabezado">
            <div id="circulo">

                    <%=img%>                                
                
                
                
                <section id="sec_foto">
                    <label id="label41">1</label>
                </section>
            </div>
            <form action="RegistroUsuario" class="formulario" id="formulario">
                <!-- Grupo: peso -->
                <div class="formulario__grupo" id="grupo__nombre">
                    <label for="nombre" class="formulario__label">Ingresa tu peso en kg</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="nombre" id="nombre" placeholder="00.00">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El peso solo puede contener desde 2 caracteres hasta 6 caracteres, solo puede contener números y debe llevar un punto. <br><b>NOTA:</b> La sintax correcta es: 000.00 (no es necesario poner 3 numeros antes del punto, con 2 basta y despues del punto no es necesario poner 2 numeros, con uno basta </p>
                </div>
                <!-- Grupo: Apellidos-->
			    <div class="formulario__grupo" id="grupo__apellido1">
				    <label for="apellido1" class="formulario__label">Ingresa tu altura en metros</label>
				    <div class="formulario__grupo-input">
					    <input type="text" class="formulario__input" name="apellido1" id="apellido1" placeholder="Apellido Paterno">
					    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">La altura solo puede contener desde 2 caracteres hasta 6 caracteres, solo puede contener números y debe llevar un punto. <br><b>NOTA:</b> La sintax correcta es: 000.00 (no es necesario poner 3 numeros antes del punto, con 2 basta y despues del punto no es necesario poner 2 numeros, con uno basta </p>
                </div>
               
                <div class="formulario__mensaje" id="formulario__mensaje">
                    <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
                </div>

                <div class="formulario__grupo formulario__grupo-btn-enviar">
                    <button type="submit" class="formulario__btn">Enviar</button>
                    <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
                </div>
            </form>
        </nav>
	</main>

	<script src="JS/PedirDatosUsuario.js"></script>
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
</body>
</html>