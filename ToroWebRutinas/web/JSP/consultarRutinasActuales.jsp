

<%@page import="java.util.List"%>
<%@page import="Controlador.*"%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--Validación del perfil e intancia-->
<%
    HttpSession sesion = request.getSession();
    boolean sesionIniciada;
    
    int id_perf = 0;
    id_perf = (Integer) sesion.getAttribute("perfil");
    
    if(id_perf == 0){
        System.out.println("No se ha iniciado Sesion");
        sesionIniciada = false;
        response.sendRedirect("../index.html");
    }
    sesionIniciada = true;
    Usuario perf = MUsuario.getUsuById(id_perf);
    

    System.out.println("Ya hay una sesion abierta");   
        
    
%>

<!--Obtengo las rutinas de la biblioteca del Usuario-->
<% 
    List<Rutina> rutisB = null;
    try{
        rutisB = MRutina.getRutisUsu(perf.getId_perf());
    }catch(Exception e){
        System.out.println(e.getMessage());
    }
    



%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar Rutinas Actuales</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.css">
    <link rel="stylesheet" href="../CSS/consultarRutinas.css">
</head>
<header>
    <div class="sub-header">
        <div class="main-header">
            
            <nav class="bamrram segundoElemento">
                <section>
                    <section class="bamrrams">
                        <a href="javascript: history.go(-1)"> <!--mamamarrrrrannnooooooo el link a páginas.-->
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                        </svg>
                        </a>
                    </section>
                </section>
            </nav>
        </div>
        <div class="second-main-header">
            <section class="titulo">Mis rutinas actuales</section>
        </div>
    </div>
</header>
<body>


<!--El unico slideraaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaxxdddddddddd:v-->

<% 
if(rutisB != null){
%>    
 <div class="main-container">
        <div class="second-container"> 
            <div class="carousel">
                <div class="carousel__contenedor">
                    <button aria-label="Anterior" class="carousel__anterior btnSup">
                        <svg version="1.1" id="Capa_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                        <path fill="#FF601F" d="M10,12.796V3.204L4.519,8L10,12.796z M9.341,13.549l-5.48-4.796C3.445,8.39,3.403,7.758,3.766,7.342
                        c0.029-0.034,0.061-0.065,0.095-0.095l5.48-4.796c0.415-0.364,1.048-0.322,1.411,0.093C10.912,2.727,11,2.961,11,3.204v9.592
                        c0,0.552-0.447,1.001-0.999,1.001C9.758,13.797,9.523,13.709,9.341,13.549z"/>
                    </svg>

                    </button>

                    <div class="carousel__lista">
    
    
<%  
        for(int i = 1; i <= rutisB.size() ; i++){
            Rutina ruti = rutisB.get(i);

//                        Si no existe la rutina entonces término el for
            if(ruti == null)break;


            ruti.setEjercicios(MEjercicio.getEjers(ruti.getId_ruti()));

            List<Ejercicio> ejers = (List<Ejercicio>) ruti.getEjercicios().keySet();
            //Obtengo el id de las imagenes
            List<String> ids_img = null;
            //Agrego la primera imagen del  ejercicio, todos lo ejercicios tendrán como minímo dos imágenes
            for(int j=0; j < 5; j++){
                          //el ejercicio.los ids . el primer id
                ids_img.add(ejers.get(j).getIds_img().get(0));   
            }
%>
             <div class="carousel__elemento" id="primerElemento">
                <section class="fondo" id="vistaRutinas">
                    <table>
                            <tr>
                                <td>
                                    <img src="http://drive.google.com/uc?export=view&id=<%= ids_img.get(0) %>" alt="">
                                </td>
                                <td>
                                    <img src="http://drive.google.com/uc?export=view&id=<%= ids_img.get(1) %>" alt="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="http://drive.google.com/uc?export=view&id=<%= ids_img.get(2) %>" alt="">
                                </td>
                                <td>
                                    <img src="http://drive.google.com/uc?export=view&id=<%= ids_img.get(3) %>" alt="">
                                </td>
                            </tr>
                        </table>
                </section>
            </div>
<% 
        }
%>
   
                       
                        
                    </div>
                    <button arial-label="Siguiente" class="carousel__siguiente btnSup">
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
    </div>
<% 
    }else{
%>
        
<img src="http://drive.google.com/uc?export=view&id=1kNWSpnxMzRJrqe_bkRTBh5y5bgnIkQK1" style="margin-left: 25%;">
                            
<% 
    }   
%>
    
    <div class="main-secont-container">
        <button class="agregarRutina" onclick="location.href='configurarH.jsp'">Ir a mi agenda de rutinas</button>
    </div>

	<script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.js"></script>
    <script src="../JS/rutinasSeleccionadas.js"></script>
</body>
</html>
<!--Pasó-->