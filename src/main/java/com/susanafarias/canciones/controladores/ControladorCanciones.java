package com.susanafarias.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.susanafarias.canciones.modelos.Cancion;
import com.susanafarias.canciones.servicios.ServicioCanciones;

import jakarta.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

@Controller
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicioCanciones;

    @GetMapping("/canciones")
    public String desplegarCanciones(Model modelo) {
        System.out.println(">>> Entró a /canciones");
        modelo.addAttribute("canciones", servicioCanciones.obtenerTodasLasCanciones());

        return "canciones";
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion,
            Model modelo) {
        // System.out.println(">>> Entró a /canciones/detalle/" + idCancion);
        modelo.addAttribute("cancion", servicioCanciones.obtenerCancionPorId(idCancion));

        return "detalleCancion";
    }

    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(Model modelo) {
        // System.out.println(">>> Entró a /canciones/formulario/agregar");
        modelo.addAttribute("cancion", new Cancion());

        return "agregarCancion";
    }

    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute("cancion") Cancion cancion,
            BindingResult validaciones, Model modelo) {
        // System.out.println(">>> Entró a /canciones/procesa/agregar");
        if (validaciones.hasErrors()) {
            return "agregarCancion";
        }

        servicioCanciones.agregarCancion(cancion);

        return "redirect:/canciones";

        // despues de un post, la practia recomendada es hacer un redirect a una ruta
        // get.
        // PRG: Post-Redirect-Get
    }

    @GetMapping("/canciones/formulario/editar/{idCancion}")
    public String formularioEditarCancion(@PathVariable("idCancion") Long idCancion,
            Model modelo) {
        // System.out.println(">>> Entró a /canciones/formulario/editar/" + idCancion);
        Cancion cancion = servicioCanciones.obtenerCancionPorId(idCancion);

        if (cancion == null) {
            return "redirect:/canciones";
        }

        modelo.addAttribute("cancion", cancion);

        return "editarCancion";
    }

    @PutMapping("/canciones/procesa/editar/{idCancion}")
    public String procesarEditarCancion(@PathVariable("idCancion") Long idCancion,
            @Valid @ModelAttribute("cancion") Cancion cancion,
            BindingResult validaciones) {

        if (validaciones.hasErrors()) { // valido que no haya errores
            return "editarCancion";
        }

        cancion.setId(idCancion); // me aseguro que la cancion tenga el id correcto

        servicioCanciones.actualizaCancion(cancion); // guardo la cancion actualizada. se la paso al servicio
        return "redirect:/canciones"; // retorno a la lista de canciones

    }

    @DeleteMapping("/canciones/eliminar/{idCancion}")
    public String procesarEliminarCancion(@PathVariable("idCancion") Long idCancion) {

        servicioCanciones.eliminarCancion(idCancion);

        return "redirect:/canciones";

    }
}
