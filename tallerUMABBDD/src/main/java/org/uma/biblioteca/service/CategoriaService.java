package org.uma.biblioteca.service;

import java.util.List;

import org.uma.biblioteca.entity.Categoria;



public interface CategoriaService {

    public List<Categoria> findAll();

    public Categoria findById(Integer id);

    public void deleteById(Integer id);

    public Categoria nuevaCategoria(Categoria categoria);
}