<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>Listado de Canciones</title>
    <link rel="stylesheet" href="/css/styles.css" />
  </head>
  <body>
    <div class="card">
      <h1>Listado de Canciones</h1>

      <!-- Aquí mostraremos el listado -->
      <ul>
        <c:forEach var="cancion" items="${canciones}">
          <li>
            <a href="/canciones/detalle/${cancion.id}">
              ${cancion.titulo} - ${cancion.artista.nombre}
              ${cancion.artista.apellido}
            </a>
          </li>
        </c:forEach>
      </ul>

      <a href="/canciones/formulario/agregar" class="btn-bottom"
        >Agregar Canción</a
      >

      <p>
        <a href="/artistas">Ir a artistas</a>
      </p>
    </div>
  </body>
</html>
