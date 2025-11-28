<%@ page contentType="text/html;charset=UTF-8" language="java"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isErrorPage="true" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/styles.css" />
    <title>Editar canción</title>
  </head>
  <body>
    <div class="card">
      <h1>Editar canción</h1>

      <form:form
        action="/canciones/procesa/editar/${cancion.id}"
        method="POST"
        modelAttribute="cancion">

        <input type="hidden" name="_method" value="PUT" />

        <div>
          <form:label path="titulo">Título: </form:label>
          <form:input path="titulo" />
          <form:errors path="titulo" cssClass="error" />
        </div>

        <div>
          <label for="artistaId">Artista:</label>
          <select name="artistaId" id="artistaId">
            <option value="">-- Selecciona un artista --</option>
            <c:forEach var="artista" items="${artistas}">
              <option value="${artista.id}"
                <c:if test="${cancion.artista != null && artista.id == cancion.artista.id}">
                  selected
                </c:if>>
                ${artista.nombre} ${artista.apellido}
              </option>
            </c:forEach>
          </select>
          <form:errors path="artista" cssClass="error" />
        </div>

        <div>
          <form:label path="album">Álbum: </form:label>
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

        <div class="action">
          <input type="submit" value="Guardar" />
        
      </form:form>

      <a href="/canciones" class="btn-bottom">
        Regresar a listado de canciones
      </a>
      </div>
    </div>
  </body>
</html>
