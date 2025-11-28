package com.susanafarias.canciones.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.susanafarias.canciones.modelos.Artista;
import com.susanafarias.canciones.repositorios.RepositorioArtistas;

@Service
public class ServicioArtistas {

    @Autowired
    private RepositorioArtistas repositorioArtistas;

    public List<Artista> obtenerTodosLosArtistas() {
        return repositorioArtistas.findAll();
    }

    public Artista obtenerArtistaPorId(Long id) {
        return repositorioArtistas.findById(id).orElse(null);
    }

    public Artista agregarArtista(Artista nuevoArtista) {
        return repositorioArtistas.save(nuevoArtista);
    }

}
