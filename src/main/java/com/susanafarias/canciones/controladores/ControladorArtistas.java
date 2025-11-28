package com.susanafarias.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.susanafarias.canciones.modelos.Artista;
import com.susanafarias.canciones.servicios.ServicioArtistas;

import jakarta.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

@Controller
public class ControladorArtistas {

    @Autowired
    private ServicioArtistas servicioArtistas;

    @GetMapping("/artistas")
    public String desplegarArtistas(Model modelo) {

        modelo.addAttribute("artistas", servicioArtistas.obtenerTodosLosArtistas());
        return "artistas";
    }

    @GetMapping("/artistas/detalle/{idArtista}")
    public String desplegarDetalleArtista(@PathVariable("idArtista") Long idArtista, Model modelo) {
        Artista artista = servicioArtistas.obtenerArtistaPorId(idArtista);

        if (artista == null) {
            return "redirect:/artistas";
        }

        modelo.addAttribute("artista", servicioArtistas.obtenerArtistaPorId(idArtista));
        return "detalleArtista";
    }

    @GetMapping("/artistas/formulario/agregar")
    public String formularioAgregarArtista(Model modelo) {
        // System.out.println(">>> Entró a /artistas/formulario/agregar");
        modelo.addAttribute("artista", new Artista());

        return "agregarArtista";
    }

    @PostMapping("/artistas/procesa/agregar")
    public String procesarAgregarArtista(@Valid @ModelAttribute("artista") Artista artista,
            BindingResult validaciones, Model modelo) {
        // System.out.println(">>> Entró a /artistas/procesa/agregar");
        if (validaciones.hasErrors()) {
            return "agregarArtista";
        }

        servicioArtistas.agregarArtista(artista);

        return "redirect:/artistas";

    }

}
