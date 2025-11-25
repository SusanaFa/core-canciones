package com.susanafarias.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.susanafarias.canciones.servicios.ServicioCanciones;

import org.springframework.ui.Model;

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

        modelo.addAttribute("cancion", servicioCanciones.obtenerCancionPorId(idCancion));
        System.out.println(">>> Entró a /canciones/detalle/" + idCancion);
        return "detalleCancion";
    }
}
