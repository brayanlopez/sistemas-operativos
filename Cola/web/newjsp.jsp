<%-- 
    Document   : newjsp
    Created on : 15/02/2020, 12:18:10 AM
    Author     : Usuario
--%>

<%@page import="Modelo.Cola"%>
<%@page import="Modelo.Nodo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>Colas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="Estilos.css">

        <!-- p5.js -->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/p5"></script>
    </head>
    <body>

        <article>
            <h1>Colas</h1>
            <p>El siguiente es un programa de colas con restricciones.</p>

            <h2>Grafico</h2>
            <button id="atender">Atender</button>
            <div id="my-canvas"></div
        </article>

        <%
            Cola nCola = new Cola();
            String info = "";
            int arreglo[] = {1, 1, 1, 1, 1};
            nCola.insertar(20);
            nCola.insertar(30);
            nCola.insertar(10);
            nCola.insertar(40);

        %>


        <script type="text/javascript">

            var boton = document.getElementById("atender");

            <%info  = nCola.imprimir();
            %>
            var arreglo = JSON.parse("<%= info%>");

            boton.addEventListener("click", function () {
            <%
                nCola.retirar();
                info = nCola.imprimir();
            %>
                arreglo = JSON.parse("<%= info%>");
                console.log(arreglo);
            });

            var activo = false;
            var posVendedorX = 50;
            var posVendedorY = 100;

            var posX = 500;

            let sketch = function (lienzo) {

                lienzo.setup = function () {
                    this.createCanvas(500, 400);
                    this.background(240);
                    this.frameRate(1);
                }

                lienzo.draw = function () {
                    lienzo.background(240);
                    lienzo.fill(0, 0, 255);
                    lienzo.ellipse(posVendedorX, posVendedorY, 50, 50);

                    for (var i = 1; i < arreglo.length; i++) {
                        lienzo.fill(255);
                        lienzo.ellipse(posVendedorX + 65 * i, posVendedorY, 50, 50);
                        lienzo.fill(0);
                        lienzo.text("" + arreglo[i - 1], posVendedorX + 65 * i, posVendedorY);
                    }

                    // if(activo){
                    //     lienzo.fill(0,255,0);
                    //     lienzo.ellipse(posX,100,100,100);
                    //     activo=false;
                    // }else{
                    //     lienzo.fill(255,0,0);
                    //     lienzo.ellipse(posX,100,100,100);
                    //     activo=true;
                    // }
                }
            }

            var lienzo = document.getElementById('my-canvas')
            new p5(sketch, lienzo);
        </script>
    </body>
</html>
