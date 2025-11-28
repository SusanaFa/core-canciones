<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>Detalle Artista</title>
    <link rel="stylesheet" href="/css/styles.css" />
  </head>
  <body>
    <div class="card">
      <h1>Detalle del Artista</h1>

      <p><strong>Nombre:</strong> ${artista.nombre}</p>
      <p><strong>Apellido:</strong> ${artista.apellido}</p>
      <p><strong>Biografía:</strong> ${artista.biografia}</p>
      <p><strong>Creado:</strong> ${artista.fechaCreacion}</p>
      <p><strong>Actualizado:</strong> ${artista.fechaActualizacion}</p>

      <h2>Canciones de este artista</h2>

      <c:if test="${empty artista.canciones}">
        <p>Este artista aún no tiene canciones registradas.</p>
      </c:if>

      <c:if test="${not empty artista.canciones}">
        <ul>
          <c:forEach var="cancion" items="${artista.canciones}">
            <li>
              <a href="/canciones/detalle/${cancion.id}"> ${cancion.titulo} </a>
            </li>
          </c:forEach>
        </ul>
      </c:if>

      <p>
        <a href="/artistas">Volver a lista de artistas</a>
      </p>
    </div>
  </body>
</html>
