package com.susanafarias.canciones.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.susanafarias.canciones.modelos.Cancion;
import com.susanafarias.canciones.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

    @Autowired
    private RepositorioCanciones repositorioCancion;

    public List<Cancion> obtenerTodasLasCanciones() {
        return repositorioCancion.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorioCancion.findById(id).orElse(null);
    }

    public Cancion agregarCancion(Cancion nuevaCancion) {
        return repositorioCancion.save(nuevaCancion);
    }

    public Cancion actualizaCancion(Cancion cancionActualizada) {
        return repositorioCancion.save(cancionActualizada);
    }

}
