package com.susanafarias.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
}
