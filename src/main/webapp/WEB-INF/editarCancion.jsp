<%@ page contentType="text/html;charset=UTF-8" language="java"%> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form"%> <%@ page
isErrorPage="true" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/styles.css" />
    <title>Editar canción</title>
  </head>
  <body>
    <h1>Editar Canción</h1>

    <form:form
      action="/canciones/procesa/editar/${cancion.id}"
      method="POST"
      modelAttribute="cancion"
    >
      <input type="hidden" name="_method" value="PUT" />

      <div>
        <form:label path="titulo">Título: </form:label>
        <form:input path="titulo" />
        <form:errors path="titulo" cssClass="error" />
      </div>

      <div>
        <form:label path="artista">Artista: </form:label>
        <form:input path="artista" />
        <form:errors path="artista" cssClass="error" />
      </div>

      <div>
        <form:label path="album">Album: </form:label>
        <form:input path="album" />
        <form:errors path="album" cssClass="error" />
      </div>

      <div>
        <form:label path="genero">Género: </form:label>
        <form:input path="genero" />
        <form:errors path="genero" cssClass="error" />
      </div>

      <div>
        <form:label path="idioma">Idioma: </form:label>
        <form:input path="idioma" />
        <form:errors path="idioma" cssClass="error" />
      </div>
      <div>
        <input type="submit" value="Guardar" />
      </div>
    </form:form>
    <a href="/canciones" class="btn-bottom">Regresar a Listado de canciones</a>
  </body>
</html>
