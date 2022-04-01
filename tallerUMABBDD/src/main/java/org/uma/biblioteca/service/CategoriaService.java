package org.uma.biblioteca.service;

import java.util.List;
import java.util.Optional;

import org.uma.biblioteca.entity.Categoria;



public interface CategoriaService {

    public List<Categoria> findAll();

    public Optional<Categoria> findById(String id);

    public void deleteById(String id);

    public Categoria nuevaCategoria(Categoria categoria);
}