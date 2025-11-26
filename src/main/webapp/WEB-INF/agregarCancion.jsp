<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>Agregar Canción</title>
    <link rel="stylesheet" href="/css/styles.css">
  </head>
  <body>
    <div class="card">
    <h1>Agregar Nueva Cancion</h1>

    <form:form
      action="/canciones/procesa/agregar"
      method="POST"
      modelAttribute="cancion"
    >
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

      <div><input type="submit" value="Agregar"></div>
    </form:form>
    <a href="/canciones" class="btn-bottom" >Regresar a Listado de canciones</a>
 </div>
  </body>
</html>
