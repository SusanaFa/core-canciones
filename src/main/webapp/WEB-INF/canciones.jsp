<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

      <!-- si no hay canciones registradas mostramos el siguiente mensaje -->
      <c:if test="${empty canciones}">
        <p>No hay canciones registradas.</p>
      </c:if>

      <!-- Aquí mostramos el listado -->
      <c:if test="${not empty canciones}">
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
      </c:if>
      <div class="action">
        <a href="/canciones/formulario/agregar" class="btn-bottom"
          >Agregar Canción</a
        >
        <a href="/artistas" class="btn-bottom">Ir a artistas</a>
      </div>
    </div>
  </body>
</html>
