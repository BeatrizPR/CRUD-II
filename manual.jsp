<%-- 
    Document   : manual
    Author     : Bea
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minumun-scale=1">
        <link href="estilo.css" rel="stylesheet">
        <link href="imagenes/favi.ico" rel="shortcut icon">


        <title>Manual BD</title>
    </head>
    <div class="wrap">

        <body>
            <h1>Manual para rellenar la base de datos</h1>
            <div class="formu">Tipos de entidades y movimientos artísticos:</div>
            <p>Podemos ver los distintos tipos de datos que podemos incluir
                en una base de datos. En este caso al tratarse de una base de datos de exposiciones
                en Málaga he incluido solo los museos que se encuentran en Málaga capital. Esto podría
                ampliarse e ir incluyendo los museos de los entornos de las diferentes comarcas.</p>
            <br>
            <div class="formu">
                <label>&nbsp;&nbsp;Entidades: &nbsp;</label>
            </div>
            <br>
            <div class="dropdown" >

                <%
                  ArrayList<String> entidad = new ArrayList<String>();
                  //entidad.add("Entidad ");
                  entidad.add("Museo Picasso de Málaga");
                  entidad.add("Museo Carmen Thyssen");
                  entidad.add("Museo Pompidou");
                  entidad.add("Colección del Museo Ruso");
                  entidad.add("CAC (Centro de Arte Contemporáneo)");
                  entidad.add("Museo Casa Natal de Picasso");
                  entidad.add("Museo de Bellas Artes(Aduana)");
                  entidad.add("Museo de artes y costumbres populares");
                  entidad.add("MUPAM");
                  entidad.add("Museo Automovilístico");
                  entidad.add("Museo del Vino");

                  out.println("<select name='Entidad' class='dropdown-select'>");
                  out.println("<option value='hide'>Entidad</option>");
                  for (String e : entidad) {
                    out.println("<option>" + e + "</option>");
                  }
                %>
                </select>
            </div>
            <br>
            <br>
            <div class="formu">
                <label>&nbsp;&nbsp;Movimientos artisticos: &nbsp;</label>
            </div> 
            <br>
            <div class="dropdown ">

                <select name="movimientoArt" class="dropdown-select">
                    <option value="hide">Movimiento artístico</option>
                    <%ArrayList<String> movimientoArt = new ArrayList<String>();
                      // Añade el elemento al ArrayList
                      //movimientoArt.add("Movimiento artístico ");

                      //En la prehistoria
                      movimientoArt.add("Arte paleolítico (h. 40.000 – 10.000 a.C.)");
                      movimientoArt.add("Arte mesolítico (h. 10.000 – 4000 a.C.)");
                      movimientoArt.add("Arte neolítico (h. 4000 – 2000 a.C.)");

                      //En la Edad Antigua:
                      movimientoArt.add("Arte egipcio (h. 5300 - 30 a.C.)");
                      movimientoArt.add("Arte mesopotámico (h. 4000 - 539 a.C.)");
                      movimientoArt.add("Arte minoico (h. 3000 - 1400 a.C.)");
                      movimientoArt.add("Arte micénico (h. 1500 - 1100 a.C.)");
                      movimientoArt.add("Arte griego (h. 1000 - 320 a.C.)");
                      movimientoArt.add("Arte etrusco (h. 800 - 100 a.C.)");
                      movimientoArt.add("Arte romano (h. 400 a.C - 476 d.C.)");

                      //En la Edad Media:
                      movimientoArt.add("Arte paleocristiano (h. s.I - IV)");
                      movimientoArt.add("Arte visigodo (h. 415 - 711)");
                      movimientoArt.add("Arte bizantino (h. 330 – 1.453)");
                      movimientoArt.add("Arte mozárabe (h. 711 - 1.000)");
                      movimientoArt.add("Arte carolingio (h. 780 - 900)");
                      movimientoArt.add("Arte otoniano (h. 950 - 1050)");
                      movimientoArt.add("Arte románico (s. XI - XIII)");
                      movimientoArt.add("Arte gótico (s. XII - XVI)");
                      movimientoArt.add("Arte mudejar (s.XII - XVI)");

                      //En la Edad Moderna:
                      movimientoArt.add("Renacimiento (s.XV - XVI)");
                      movimientoArt.add("Manierismo (h. 1530 - 1.600)");
                      movimientoArt.add("Barroco (h. 1600 - 1750)");
                      movimientoArt.add("Rococó (1720 - 1740)");

                      //En la Edad Contemporánea:
                      movimientoArt.add("Neoclasicismo (1730 - 1820)");
                      movimientoArt.add("Romanticismo (desde finales del s. XVIII hasta mediados del s.XIX)");
                      movimientoArt.add("Realismo (s.XIX)");
                      movimientoArt.add("Impresionismo (mediados s.XIX)");
                      movimientoArt.add("Simbolismo (finales del s.XIX)");
                      movimientoArt.add("Neoimpresionismo (finales del s.XIX)");
                      movimientoArt.add("Postimpresionismo (finales del s.XIX y principios del s.XX)");
                      movimientoArt.add("Art Nouveau / Modernismo (finales del s.XIX y principios del XX)");
                      movimientoArt.add("Art Decó (1920 - 1950)");
                      movimientoArt.add("Arte Naíf (desde finales del s.XIX)");
                      movimientoArt.add("Fovismo (1905 - 1908)");
                      movimientoArt.add("Cubismo (1907 - 1914)");
                      movimientoArt.add("Futurismo (1909 - 1930)");
                      movimientoArt.add("Expresionismo (1910 - 1945)");
                      movimientoArt.add("Pintura metafísica (1911- 1920)");
                      movimientoArt.add("Rayonismo / Cubismo abstracto (a partir de 1911)");
                      movimientoArt.add("Orfismo (1912-1913)");
                      movimientoArt.add("Constructivismo (1914 - 1930)");
                      movimientoArt.add("Suprematismo (1915 - 1925)");
                      movimientoArt.add("Dadaísmo (1916 - 1924)");
                      movimientoArt.add("Neoplasticismo (1917 - 1944)");
                      movimientoArt.add("Nueva objetividad (1920 - 1933)");
                      movimientoArt.add("Surrealismo (1924 - 1966)");
                      movimientoArt.add("Racionalismo (1925 - 1940)");
                      movimientoArt.add("Tachismo (1940 - 1960)");
                      movimientoArt.add("Expresionismo abstracto (h. 1944 - 1964)");
                      movimientoArt.add("Arte marginal / Art brut (a partir de 1945)");
                      movimientoArt.add("Informalismo (h. 1946 - 1960)");
                      movimientoArt.add("Espacialismo (a partir de 1947 - 1968)");
                      movimientoArt.add("Op art (a partir de 1964)");
                      movimientoArt.add("Nuevo realismo (1960 - 1970)");
                      movimientoArt.add("Pop art (a partir de 1950)");
                      movimientoArt.add("Happening (a partir de 1957)");
                      movimientoArt.add("Minimalismo (a partir de 1960)");
                      movimientoArt.add("Hiperrealismo (a partir de 1960)");
                      movimientoArt.add("Arte conceptual (a partir de 1961)");
                      movimientoArt.add("Land art (a partir de 1960)");
                      movimientoArt.add("Nueva abstracción / Abstracción pospictórica (a partir de 1964)");
                      movimientoArt.add("Arte povera (a partir de 1967)");

                      for (String option : movimientoArt) {
                        out.println("<option>" + option + "</option>");
                      }
                    %>
                </select>
            </div>
            <br>
            <br>
            <div class="formu">
                <label>&nbsp;&nbsp;Tipos de entidades: &nbsp;</label>
            </div> 
            <br>
            <div class="dropdown" >

                <%
                  ArrayList<String> tipoEntidad = new ArrayList<String>();
                  tipoEntidad.add("Museo");
                  tipoEntidad.add("Centro de Arte Contemporáneo");
                  tipoEntidad.add("Galería");
                  tipoEntidad.add("Casa Natal");
                  tipoEntidad.add("Fundación");

                  out.println("<select class='dropdown-select'>");
                  out.println("<option value='hide'>Entidad</option>");
                  for (String e : tipoEntidad) {
                    out.println("<option>" + e + "</option>");
                  }
                %>
                </select>
            </div>
            <br>
            <br>
            <div>
                <a href="index.html" class="icon"><span class="icon">Página principal</span>  
                <br>
                <br>
                <br>
                <div class="text-center">&copy; Beatriz Parejo Ramos</div>
        </body>
    </div>

</html>
