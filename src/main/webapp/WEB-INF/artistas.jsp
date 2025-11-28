<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>Listado de Artistas</title>
    <link rel="stylesheet" href="/css/styles.css" />
  </head>
  <body>
    <div class="card">
      <h1>Artistas</h1>

      <!-- si no hay artistas registrados mostramos el siguiete mensaje -->
      <c:if test="${empty artistas}">
        <p>No hay artistas registrados.</p>
      </c:if>

      <!-- Aquí mostraremos el listado -->
      <ul>
        <c:forEach var="artista" items="${artistas}">
          <li>
            <a href="/artistas/detalle/${artista.id}">
              ${artista.nombre} - ${artista.apellido}
            </a>
          </li>
        </c:forEach>
      </ul>

      <a href="/artistas/formulario/agregar" class="btn-bottom"
        >Agregar Artista</a
      >

      <p>
        <a href="/canciones">Ir a canciones</a>
      </p>
    </div>
  </body>
</html>
