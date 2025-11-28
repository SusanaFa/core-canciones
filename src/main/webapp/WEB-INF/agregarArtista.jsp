<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>Agregar Artista</title>
    <link rel="stylesheet" href="/css/styles.css">
  </head>
  <body>
    <div class="card">
    <h1>Agregar Nuevo Artista</h1>

    <form:form
      action="/artistas/procesa/agregar"
      method="POST"
      modelAttribute="artista"
    >
      <div>
        <form:label path="nombre">Nombre: </form:label>
        <form:input path="nombre" />
        <form:errors path="nombre" cssClass="error" />
      </div>
     
      <div>
        <form:label path="apellido">Apellido: </form:label>
        <form:input path="apellido" />
        <form:errors path="apellido" cssClass="error" />
      </div>

      <div>
        <form:label path="biografia">Biografía: </form:label>
        <form:textarea path="biografia" rows="4" cols="40" />
        <form:errors path="biografia" cssClass="error" />
      </div>

      <div class="action"><input type="submit" value="Guardar Artista">
    </form:form>
    <a href="/artistas" class="btn-bottom" >Regresar a Listado de artistas</a>
    </div>
 </div>
  </body>
</html>
