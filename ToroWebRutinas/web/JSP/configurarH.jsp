<%-- 
    Document   : configurarH
    Created on : 17/06/2021, 03:02:42 PM
    Author     : sofo9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configurar Horarios</title> 
    <link rel="stylesheet" href="../CSS/Configurarhorarios.css">
  
</head>
<header>
    <div class="main-header">
        <nav class="bamrram primerElemento">
            <section class="bamrrams">
                <a  href="indexDes.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                    <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                </svg>
                </a>
            </section>
            <section class="bamrrams">
                <a  href="javascript: history.go(-1)">
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                </svg>
                </a>
            </section>
        </nav>
</header>
<body>
    <div class="main-container">
        <nav class="columna gotasCristal">
            <section class="diaSemana">
                <section class="titulo">Lunes</section>
                <section class="subTitulo">
                    <article class="imgCont">img</article>
                    <article class="imgCont">
                        <form action="" class="horasF">
                            <label for="" class="nom-rut">Nombre Rutina</label>
                        </form>
                    </article>
                </section>
            </section>
            <section class="diaSemana">
                <section class="titulo">Martes</section>
                <section class="subTitulo">
                    <article class="imgCont">img</article>
                    <article class="imgCont">
                        <form action="" class="horasF">
                            <label for="" class="nom-rut">Nombre Rutina</label>
                        </form>
                    </article>
                </section>
            </section>
            <section class="diaSemana">
                <section class="titulo">Miércoles</section>
                <section class="subTitulo">
                    <article class="imgCont">img</article>
                    <article class="imgCont">
                        <form action="" class="horasF">
                            <label for="" class="nom-rut">Nombre Rutina</label>
                        </form>
                    </article>
                </section>
            </section>
            <section class="diaSemana">
                <section class="titulo">Jueves</section>
                <section class="subTitulo">
                    <article class="imgCont">img</article>
                    <article class="imgCont">
                        <form action="" class="horasF">
                            <label for="" class="nom-rut">Nombre Rutina</label>
                        </form>
                    </article>
                </section>
            </section>
        </nav>

        <nav class="linea gotasCristal"></nav>

        <nav class="columna2 gotasCristal">
            <section class="diaSemana">
                <section class="titulo">Viernes</section>
                <section class="subTitulo">
                    <article class="imgCont">img</article>
                    <article class="imgCont">
                        <form action="" class="horasF">
                            <label for="" class="nom-rut">Nombre Rutina</label>
                            <input type="time" class="tiempo">
                        </form>
                    </article>
                </section>
            </section>
            <section class="diaSemana">
                <section class="titulo">Sábado</section>
                <section class="subTitulo">
                    <article class="imgCont">img</article>
                    <article class="imgCont">
                        <form action="" class="horasF">
                            <label for="" class="nom-rut">Nombre Rutina</label>
                            <input type="time" class="tiempo">
                        </form>
                    </article>
                </section>
            </section>
            <section class="diaSemana">
                <section class="titulo">Domingo</section>
                <section class="subTitulo">
                    <article class="imgCont">img</article>
                    <article class="imgCont">
                        <form action="" class="horasF">
                            <label for="" class="nom-rut">Nombre Rutina</label>
                            <input type="time" class="tiempo">
                        </form>
                    </article>
                </section>
            </section>
        </nav>
    </div>
</body>
</html>