<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Detalle Canción</title>
  </head>
  <body>
    <h1>Detalle de la Canción</h1>

    <p><strong>Título:</strong> ${cancion.titulo}</p>
    <p><strong>Artista:</strong> ${cancion.artista}</p>
    <p><strong>Álbum:</strong> ${cancion.album}</p>
    <p><strong>Género:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>
    <p><strong>Creada:</strong> ${cancion.fechaCreacion}</p>
    <p><strong>Actualizada:</strong> ${cancion.fechaActualizacion}</p>

    <a href="/canciones">Volver al listado</a>
  </body>
</html>
