package com.susanafarias.canciones.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.susanafarias.canciones.modelos.Cancion;

import java.util.List;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long> {

    List<Cancion> findAll();
}
