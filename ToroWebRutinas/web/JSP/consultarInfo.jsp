<%-- 
    Document   : consultarInfo
    Created on : 16/06/2021, 03:31:31 PM
    Author     : sofo9
--%>

<%@page import="Controlador.MPerfil"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Perfil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--Validación del perfil e intancia-->
<%
    HttpSession sesion = request.getSession();
    boolean sesionIniciada;
    Perfil perf = null;
    Usuario usu = null;
    int id_perf = 0;
    
    id_perf = (Integer) sesion.getAttribute("perfil");
       sesionIniciada = true;
    if(id_perf != 0){
        sesionIniciada = true;
        perf = MPerfil.getPerfilById(id_perf);
        System.out.println("Ya hay una sesion abierta");
    }else{
        System.out.println("No se ha iniciado Sesion");
           sesionIniciada = false;
        response.sendRedirect("../InciarSesion2.html");
    }
                 
        
    
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar Información</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.css">
    <link rel="stylesheet" href="../CSS/consultarInfo.css">
</head>
<body>

    <!--sexoooooooooooooooooooooooooooooooooooo-->
    <div class="principal">
    <div class="main-container">
        <nav class="contDat">
            <section class="textoInf p-sito">Nombre</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
        <nav class="contDat">
            <section class="textoInf p-sito">Apellidos</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
        <nav class="contDat">
            <section class="textoInf p-sito">Correo electro</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
        <nav class="contDat">
            <section class="textoInf p-sito">Edad</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
        <nav class="contDat">
            <section class="textoInf p-sito">Peso</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
        <nav class="contDat">
            <section class="textoInf p-sito">IMC</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
        <nav class="contDat">
            <section class="textoInf p-sito">Calorias (por mes)</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
        <nav class="contDat">
            <section class="textoInf p-sito">Altura</section>
            <section class="textoInf2 p-sito">Aleatorio</section>
        </nav>
    </div>
    <div class="linea"></div>
    <!--Sex22222222222222222222222222222222222222222222-->
    <div class="second-main-container">
        <section class="grafica izquierda">
            <button aria-label="Anterior" class="carousel__anterior">
                <svg version="1.1" id="Capa_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#FF601F" d="M10,12.796V3.204L4.519,8L10,12.796z M9.341,13.549l-5.48-4.796C3.445,8.39,3.403,7.758,3.766,7.342
                c0.029-0.034,0.061-0.065,0.095-0.095l5.48-4.796c0.415-0.364,1.048-0.322,1.411,0.093C10.912,2.727,11,2.961,11,3.204v9.592
                c0,0.552-0.447,1.001-0.999,1.001C9.758,13.797,9.523,13.709,9.341,13.549z"/>
            </svg>
            </button>
        </section>

            <nav class="grafica imgCentro">
                <section class="imgPython">
                    <div class="second-main-container"> <!--sexoooooooooooooooooooooooooo-->
                        <div class="carousel">
                            <div class="carousel__contenedor">
                    
                                <div class="carousel__lista">
                                    <div class="carousel__elemento" id="primerElemento">
                                        <section class="fondo" id="vistaRutinas"><img src="IMG/skiso.jpg"></section>
                                        <div class="overlay">
                                            <div class="text"><h1 class="texto-interior">Mi texto when pov haces tus momos en video but ella no te amam xddddd:v</h1></div>
                                        </div>
                                    </div>
                                    <div class="carousel__elemento">
                                        <section class="fondo" id="vistaRutinas"><img src="IMG/holamundo.jpeg"></section>
                                        <div class="overlay">
                                            <div class="text"><h1 class="texto-interior">Mi texto</h1></div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                            <div role="tablist" class="class__indicadores"></div>
                        </div>






                </section>
            </nav>
        <section class="grafica derecha">
            <button arial-label="Siguiente" class="carousel__siguiente">
                <svg version="1.1" id="Capa_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                    width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                    <path fill="#FF601F" d="M4.519,3.204v9.592L10,8L4.519,3.204z M5.178,2.451l5.48,4.796c0.416,0.363,0.458,0.995,0.095,1.411
                    c-0.029,0.033-0.061,0.065-0.095,0.095l-5.479,4.796c-0.415,0.364-1.048,0.322-1.411-0.093c-0.16-0.183-0.249-0.417-0.249-0.66
                    V3.204c0-0.552,0.447-1.001,0.999-1.001C4.761,2.203,4.996,2.291,5.178,2.451z"/>
                </svg>
            </button>
        </section>
    </div>
    </div>
    <div class="botonRol">
        <label class="peticion"><a class="rol" href="#">Pedir rol</a></label>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.js"></script>
    <script src="../JS/animacionPy.js"></script>
</body>
</html>