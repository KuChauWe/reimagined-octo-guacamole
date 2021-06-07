<%-- 
    Document   : verRutinasPublicas
    Created on : 6/06/2021, 11:06:55 PM
    Author     : sofo9
--%>

<%@page import="Controlador.AccionesClasificacion"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.*"%>
<% 
   String clasclas = request.getParameter("clas");
   Clasificacion clas = new Clasificacion();
   if(clasclas == null){
       clasclas = "Fuerza Muscular";
       int id_clas = AccionesClasificacion.getIDClasificacion(clasclas);
       clas = AccionesClasificacion.buscarClasificacionById(id_clas);
   }else{
       clasclas.replace("_", " ");
       String[] clasificaciones = clasclas.split("/");
        int id_clas1 = AccionesClasificacion.getIDClasificacion(clasificaciones[0]);
        int id_clas2 = AccionesClasificacion.getIDClasificacion(clasificaciones[1]);
        int id_clas3 = AccionesClasificacion.getIDClasificacion(clasificaciones[2]);
        
        System.out.println(clasificaciones[0] + " " + clasificaciones[1] + " " + clasificaciones[2]);
   }
   

%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>varRutinasPublicas</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.css">
    <link rel="stylesheet" href="../CSS/verRutinasPublicas.css">
</head>
<header>
<span class="nav-bar" id="btnMenu"><i class="fas fa-bars"> Categorias de rutinas</i></span>
<nav class="main-nav">
    <ul class="menu" id="menu">
        <li class="menu__item">
            <a href="#" class="menu__link submenu-btn">Fuerza Muscular <i class="fas fa-chevron-down"></i></a>
            <ul class="submenu">
                <li class="menu__item">
                    <a href="#" class="menu__link sub-submenu-btn" id="botonSuperior">Alto impacto <i class="fas fa-chevron-down"></i></a>
                    <ul class="sub-submenu sub-ntp">
                        <li class="menu__item">
                            <a href="#?clas=Fuerza_Muscular/Alto_Impacto/Brazo" class="menu__link">Brazo</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Alto_Impacto/Pierna" class="menu__link">Pierna</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Alto_Impacto/Abdomen" class="menu__link">Abdomen</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Alto_Impacto/Pecho" class="menu__link">Pecho</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Alto_Impacto/Espalda" class="menu__link">Espalda</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Alto_Impacto/Gluteos" class="menu__link">Glúteos</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Alto_Impacto/Cuerpo_Completo" class="menu__link">Cuerpo completo</a>
                        </li>
                    </ul>
                </li>

                <li class="menu__item">
                    <a href="#" class="menu__link sub-submenu-btn">Bajo impacto <i class="fas fa-chevron-down"></i></a>
                    <ul class="sub-submenu sub-ntp">
                        <li class="menu__item">
                            <a href="#?clas=Fuerza_Muscular/Bajo_Impacto/Brazo" class="menu__link">Brazo</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Bajo_Impacto/Pierna" class="menu__link">Pierna</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Bajo_Impacto/Abdomen" class="menu__link">Abdomen</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Bajo_Impacto/Pecho" class="menu__link">Pecho</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Bajo_Impacto/Espalda" class="menu__link">Espalda</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Bajo_Impacto/Gluteos" class="menu__link">Glúteos</a>
                        </li>
                        <li class="menu__item sub-ntp">
                            <a href="#?clas=Fuerza_Muscular/Bajo_Impacto/Cuerpo_Completo" class="menu__link">Cuerpo completo</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </li>


        <li class="menu__item">
            <a href="#" class="menu__link submenu-btn">Ejercicio Aeróbico<i class="fas fa-chevron-down"></i></a>
            <ul class="submenu">
                <li class="menu__item">
                    <a href="#?clas=Aeróbico/Alto_Impacto" class="menu__link sub-submenu-btn" id="botonSuperior">Alto impacto</a>
                </li>
                <li class="menu__item">
                    <a href="#?clas=Aeróbico/Bajo_Impacto" class="menu__link sub-submenu-btn">Bajo impacto</a>
                </li>

            </ul>
        </li>


        <li class="menu__item">
            <a href="#" class="menu__link submenu-btn">Ejercicios de equilibrio</a>
        </li>


        <li class="menu__item">
            <a href="#" class="menu__link submenu-btn">Estiramiento <i class="fas fa-chevron-down"></i></a>
            <ul class="submenu">
                <li class="menu__item">
                    <a href="#?clas=Estiramiento/Brazo" class="menu__link sub-submenu-btn">En brazo </a>
                </li>
                <li class="menu__item">
                    <a href="#?clas=Estiramiento/Pierna" class="menu__link sub-submenu-btn">Pierna </a>
                </li>
                <li class="menu__item">
                    <a href="#?clas=Estiramiento/Abdomen" class="menu__link sub-submenu-btn">Abdomen </a>
                </li>
                <li class="menu__item">
                    <a href="#" class="menu__link sub-submenu-btn">Pecho </a>
                </li>
                <li class="menu__item">
                    <a href="#?clas=Estiramiento/Espalda" class="menu__link sub-submenu-btn">Espalda </a>
                </li>
                <li class="menu__item">
                    <a href="#?clas=Estiramiento/Gluteos" class="menu__link sub-submenu-btn">Glúteos </a>
                </li>
                <li class="menu__item">
                    <a href="#?clas=Estiramiento/Cuerpo_Completo" class="menu__link sub-submenu-btn">Cuerpo completo </a>
                </li>
            </ul>
        </li>


    </ul>
</nav>
</header>          

<body>
<div>
    <div class="main-container"><a class="proposito">Propósito</a></div>

	<div class="second-container"> <!--sexoooooooooooooooooooooooooo-->
        <div class="carousel">
            <div class="carousel__contenedor">
                <button aria-label="Anterior" class="carousel__anterior">
                    <svg version="1.1" id="Capa_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                    width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                    <path fill="#FF601F" d="M10,12.796V3.204L4.519,8L10,12.796z M9.341,13.549l-5.48-4.796C3.445,8.39,3.403,7.758,3.766,7.342
                    c0.029-0.034,0.061-0.065,0.095-0.095l5.48-4.796c0.415-0.364,1.048-0.322,1.411,0.093C10.912,2.727,11,2.961,11,3.204v9.592
                    c0,0.552-0.447,1.001-0.999,1.001C9.758,13.797,9.523,13.709,9.341,13.549z"/>
                </svg>
    
                </button>
    
                <div class="carousel__lista">
                    <div class="carousel__elemento" id="primerElemento">
                        <section id="vistaRutinas"><img src="IMG/skiso.jpg"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/holamundo.jpeg"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/Deciivo.png"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/Flecha.png"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/FlechaDerecha.png"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/FlechaIzquierd.png"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/LogoEmpresa.jpeg"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/perfil.jpg"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/toro.png"></section>
                    </div>
                    <div class="carousel__elemento">
                        <section id="vistaRutinas"><img src="IMG/ToroRutinasLogo22.png"></section>
                    </div>
                </div>
                <button arial-label="Siguiente" class="carousel__siguiente">
                    <svg version="1.1" id="Capa_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                        <path fill="#FF601F" d="M4.519,3.204v9.592L10,8L4.519,3.204z M5.178,2.451l5.48,4.796c0.416,0.363,0.458,0.995,0.095,1.411
                        c-0.029,0.033-0.061,0.065-0.095,0.095l-5.479,4.796c-0.415,0.364-1.048,0.322-1.411-0.093c-0.16-0.183-0.249-0.417-0.249-0.66
                        V3.204c0-0.552,0.447-1.001,0.999-1.001C4.761,2.203,4.996,2.291,5.178,2.451z"/>
                    </svg>
                </button>
            </div>
        </div>
            <div role="tablist" class="class__indicadores"></div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.js"></script>
        <script src="../JS/susmain.js"></script>
</body>
</html>
