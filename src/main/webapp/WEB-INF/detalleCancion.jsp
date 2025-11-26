<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>Detalle Canción</title>
    <link rel="stylesheet" href="/css/styles.css" />
  </head>
  <body>
    <div class="card">
      <h1>Detalle de la Canción</h1>

      <p><strong>Título:</strong> ${cancion.titulo}</p>
      <p><strong>Artista:</strong> ${cancion.artista}</p>
      <p><strong>Álbum:</strong> ${cancion.album}</p>
      <p><strong>Género:</strong> ${cancion.genero}</p>
      <p><strong>Idioma:</strong> ${cancion.idioma}</p>
      <p><strong>Creada:</strong> ${cancion.fechaCreacion}</p>
      <p><strong>Actualizada:</strong> ${cancion.fechaActualizacion}</p>
      <p>
        <a href="/canciones" class="btn-bottom">Volver al listado</a>
      </p>

      <a href="/canciones/formulario/editar/${cancion.id}" class="btn-bottom">
        Editar canción
      </a>
      <form action="/canciones/eliminar/${cancion.id}" method="POST">
        <input type="hidden" name="_method" value="DELETE" />
        <button class="delete-button">Eliminar</button>
      </form>
    </div>
  </body>
</html>
